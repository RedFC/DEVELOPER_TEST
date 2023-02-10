import expess from "express";
import { CustomerRouter } from "../app/http/controller/api/Customer";
import { AccountsRouter } from "../app/http/controller/api/Accounts";
const app = expess();

app.use("/customer", CustomerRouter);
app.use("/account", AccountsRouter);


module.exports = app;