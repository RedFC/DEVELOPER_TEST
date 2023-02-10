"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.ValidateUser = exports.Role = void 0;
const client_1 = require("@prisma/client");
var Role;
(function (Role) {
    Role["USER"] = "USER";
    Role["ADMIN"] = "ADMIN";
})(Role = exports.Role || (exports.Role = {}));
class ValidateUser {
    constructor() {
        this.prisma = new client_1.PrismaClient();
    }
    validate(data, { error, next }) {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                let user = data;
                let validEmail = yield this.email(data.email);
                if (validEmail != "")
                    return error(validEmail);
                return next(user);
            }
            catch (e) {
                return error(e);
            }
        });
    }
    email(email) {
        return new Promise((resolve, reject) => {
            this.prisma.user.findUnique({ where: { email } })
                .then(function (user) {
                if (user) {
                    return resolve("The specified email address is already in use.");
                }
                let emailRegex = new RegExp(/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
                return resolve(!emailRegex.test(email) ? "Invalid email address" : "");
            })
                .catch(function (e) {
                return reject(e.message);
            }).finally(() => {
                this.prisma.$disconnect();
            });
        });
    }
}
exports.ValidateUser = ValidateUser;
//# sourceMappingURL=user.model.js.map