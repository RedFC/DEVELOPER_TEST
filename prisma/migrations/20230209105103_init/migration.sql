-- CreateTable
CREATE TABLE `AdminLog` (
    `id` VARCHAR(191) NOT NULL,
    `tableName` VARCHAR(191) NOT NULL,
    `action` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `adminID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Admin` (
    `id` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `blocked` VARCHAR(191) NOT NULL,
    `picture` VARCHAR(191) NOT NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `AllContent` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `content` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `points` INTEGER NOT NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `AmountRequest` (
    `id` VARCHAR(191) NOT NULL,
    `amount` INTEGER NOT NULL,
    `userID` VARCHAR(191) NOT NULL,
    `isApproved` BOOLEAN NOT NULL DEFAULT false,
    `isReviewed` BOOLEAN NOT NULL DEFAULT false,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `AnalyticsSetting` (
    `id` VARCHAR(191) NOT NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `assessmentFormId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Badge` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `iconID` VARCHAR(191) NOT NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `BudgetingCalculator` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `amount` INTEGER NOT NULL,
    `mainCategory` VARCHAR(191) NOT NULL,
    `subCategory` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `isRecurring` BOOLEAN NOT NULL,
    `frequency` VARCHAR(191) NOT NULL,
    `userID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `BusinessCheckingAccount` (
    `id` VARCHAR(191) NOT NULL,
    `product` VARCHAR(191) NOT NULL,
    `reviews` VARCHAR(191) NOT NULL,
    `atm_fee` VARCHAR(191) NOT NULL,
    `monthaly_fee` VARCHAR(191) NOT NULL,
    `minimum_balance` VARCHAR(191) NOT NULL,
    `annual_percentage_yield` VARCHAR(191) NOT NULL,
    `product_website` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Category` (
    `id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ChatBot` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `points` INTEGER NOT NULL,
    `content` VARCHAR(191) NOT NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CreditCard` (
    `id` VARCHAR(191) NOT NULL,
    `cardNumber` VARCHAR(191) NOT NULL,
    `cvv` INTEGER NOT NULL,
    `expiryDate` DATETIME(3) NOT NULL,
    `isBlocked` BOOLEAN NOT NULL DEFAULT false,
    `tempFreeze` BOOLEAN NOT NULL DEFAULT false,
    `currentAmount` VARCHAR(191) NOT NULL DEFAULT '500',
    `userID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Enrollment` (
    `id` VARCHAR(191) NOT NULL,
    `isCompleted` BOOLEAN NOT NULL,
    `rating` INTEGER NOT NULL,
    `quizPoints` INTEGER NOT NULL DEFAULT 0,
    `wordID` VARCHAR(191) NULL,
    `userID` VARCHAR(191) NOT NULL,
    `lessonID` VARCHAR(191) NULL,
    `moduleID` VARCHAR(191) NULL,
    `skillID` VARCHAR(191) NULL,
    `subSkillID` VARCHAR(191) NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `FinancialGoal` (
    `id` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `userID` VARCHAR(191) NOT NULL,
    `status` ENUM('backlog', 'todo', 'progress', 'done', 'trash') NOT NULL DEFAULT 'todo',
    `type` ENUM('midterm', 'longterm', 'shortterm') NOT NULL,
    `created_id` VARCHAR(191) NOT NULL,
    `completed_id` VARCHAR(191) NULL,
    `isDeleted` BOOLEAN NOT NULL DEFAULT false,
    `start_date` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `end_date` DATETIME(3) NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Form` (
    `id` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `image` VARCHAR(191) NOT NULL,
    `stared` BOOLEAN NOT NULL DEFAULT false,
    `formType` VARCHAR(191) NOT NULL DEFAULT 'anonymous',
    `OrganizationId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Sections` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `formID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Questions` (
    `id` VARCHAR(191) NOT NULL,
    `open` BOOLEAN NOT NULL DEFAULT false,
    `questionText` VARCHAR(191) NOT NULL,
    `questionImage` VARCHAR(191) NULL,
    `trueValue` INTEGER NOT NULL DEFAULT 0,
    `freeText` VARCHAR(191) NULL,
    `isFreeText` BOOLEAN NOT NULL DEFAULT false,
    `section` VARCHAR(191) NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Options` (
    `id` VARCHAR(191) NOT NULL,
    `optionText` VARCHAR(191) NOT NULL,
    `optionImage` VARCHAR(191) NULL,
    `questionID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Aisle` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GameBudget` (
    `id` VARCHAR(191) NOT NULL,
    `amount` INTEGER NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GameItems` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `price` INTEGER NOT NULL,
    `credits` INTEGER NOT NULL,
    `onSale` BOOLEAN NOT NULL,
    `coupon` INTEGER NOT NULL,
    `salePercentage` INTEGER NOT NULL,
    `onShoppingList` BOOLEAN NOT NULL,
    `picture` VARCHAR(191) NOT NULL,
    `AisleId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GroceryGameOrder` (
    `id` VARCHAR(191) NOT NULL,
    `payment_type` VARCHAR(191) NOT NULL DEFAULT 'card',
    `cardnumber` VARCHAR(191) NOT NULL,
    `totalPrice` VARCHAR(191) NOT NULL,
    `cardID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Orderitems` (
    `id` VARCHAR(191) NOT NULL,
    `qty` VARCHAR(191) NOT NULL,
    `itemId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GroceryGameStock` (
    `id` VARCHAR(191) NOT NULL,
    `shareName` VARCHAR(191) NOT NULL,
    `sharePrice` INTEGER NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GameTips` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `JobSkillDetails` (
    `id` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `JobSkill` (
    `id` VARCHAR(191) NOT NULL,
    `detailID` VARCHAR(191) NOT NULL,
    `jobTitleID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `JobTitle` (
    `id` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `JobTitleSkills` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `jobTitleID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Journal` (
    `id` VARCHAR(191) NOT NULL,
    `type` ENUM('notes', 'question') NOT NULL,
    `title` VARCHAR(191) NULL,
    `content` VARCHAR(191) NULL,
    `question` VARCHAR(191) NULL,
    `answer` VARCHAR(191) NULL,
    `teacher` VARCHAR(191) NULL,
    `isAnswered` BOOLEAN NOT NULL DEFAULT false,
    `attachment` VARCHAR(191) NULL,
    `userId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Permission` (
    `id` VARCHAR(191) NOT NULL,
    `tableName` VARCHAR(191) NOT NULL,
    `mode` VARCHAR(191) NOT NULL,
    `adminID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Podcast` (
    `id` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `totalPoints` INTEGER NOT NULL,
    `obtainedPoints` INTEGER NOT NULL DEFAULT 0,
    `submission` ENUM('notsubmitted', 'submitted', 'resubmitted') NOT NULL DEFAULT 'notsubmitted',
    `approval` ENUM('pending', 'approved', 'notapproved') NOT NULL DEFAULT 'pending',
    `submittedFile` VARCHAR(191) NULL,
    `podcastImage` VARCHAR(191) NULL,
    `userId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Quiz` (
    `id` VARCHAR(191) NOT NULL,
    `question` VARCHAR(191) NOT NULL,
    `answer01` VARCHAR(191) NOT NULL,
    `answer02` VARCHAR(191) NOT NULL,
    `answer03` VARCHAR(191) NOT NULL,
    `answer04` VARCHAR(191) NOT NULL,
    `trueOption` INTEGER NOT NULL,
    `points` INTEGER NOT NULL,
    `iconID` VARCHAR(191) NOT NULL,
    `subSkillID` VARCHAR(191) NOT NULL,
    `allContentID` VARCHAR(191) NOT NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Response` (
    `id` VARCHAR(191) NOT NULL,
    `formId` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `QuizResponses` (
    `id` VARCHAR(191) NOT NULL,
    `questionId` VARCHAR(191) NOT NULL,
    `optionId` VARCHAR(191) NOT NULL,
    `freeText` VARCHAR(191) NOT NULL,
    `responseId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `StickBallProperties` (
    `id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TransactionHistory` (
    `id` VARCHAR(191) NOT NULL,
    `transactionType` ENUM('credit', 'debit') NOT NULL,
    `amount` INTEGER NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `cardID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `UserLog` (
    `id` VARCHAR(191) NOT NULL,
    `pageName` VARCHAR(191) NOT NULL,
    `buttonName` VARCHAR(191) NOT NULL,
    `userID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `User` (
    `id` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `dob` VARCHAR(191) NOT NULL,
    `phoneNumber` VARCHAR(191) NOT NULL,
    `zipCode` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `firstName` VARCHAR(191) NOT NULL,
    `lastName` VARCHAR(191) NOT NULL,
    `organization` VARCHAR(191) NULL,
    `resetPasswordToken` VARCHAR(191) NULL,
    `confirmationToken` VARCHAR(191) NULL,
    `confirmed` BOOLEAN NULL DEFAULT false,
    `blocked` BOOLEAN NULL DEFAULT false,
    `photo` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NULL,
    `isClever` BOOLEAN NULL DEFAULT false,
    `cleverID` VARCHAR(191) NULL,
    `districtID` VARCHAR(191) NULL,
    `class` VARCHAR(191) NULL,
    `teacher` VARCHAR(191) NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `create_transaction_details` BOOLEAN NULL DEFAULT true,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `User_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Icon` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `svg` VARCHAR(191) NOT NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Lesson` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `priorityIndex` INTEGER NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `moduleID` VARCHAR(191) NOT NULL,
    `iconID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `LessonBadge` (
    `id` VARCHAR(191) NOT NULL,
    `badgeID` VARCHAR(191) NOT NULL,
    `lessonID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `LessonWordsGlossary` (
    `id` VARCHAR(191) NOT NULL,
    `lessonID` VARCHAR(191) NOT NULL,
    `wordsGlossaryID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Module` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `priorityIndex` INTEGER NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `iconID` VARCHAR(191) NOT NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Organization` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Organization_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Order` (
    `id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Product` (
    `id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Skill` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `priorityIndex` INTEGER NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `lessonID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SkillAssignment` (
    `id` VARCHAR(191) NOT NULL,
    `applicationName` VARCHAR(191) NOT NULL,
    `partName` VARCHAR(191) NOT NULL,
    `assignmentName` VARCHAR(191) NOT NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SubSkill` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `priorityIndex` INTEGER NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `chatBotID` VARCHAR(191) NOT NULL,
    `skillID` VARCHAR(191) NOT NULL,
    `iconID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SkillSection` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `priorityIndex` INTEGER NOT NULL,
    `subSkillID` VARCHAR(191) NOT NULL,
    `allContentID` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `WordsGlossary` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `points` INTEGER NOT NULL,
    `example` VARCHAR(191) NOT NULL,
    `OrganizationId` VARCHAR(191) NOT NULL,
    `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `AdminLog` ADD CONSTRAINT `AdminLog_adminID_fkey` FOREIGN KEY (`adminID`) REFERENCES `Admin`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Admin` ADD CONSTRAINT `Admin_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `AllContent` ADD CONSTRAINT `AllContent_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `AmountRequest` ADD CONSTRAINT `AmountRequest_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `AnalyticsSetting` ADD CONSTRAINT `AnalyticsSetting_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `AnalyticsSetting` ADD CONSTRAINT `AnalyticsSetting_assessmentFormId_fkey` FOREIGN KEY (`assessmentFormId`) REFERENCES `Form`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Badge` ADD CONSTRAINT `Badge_iconID_fkey` FOREIGN KEY (`iconID`) REFERENCES `Icon`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Badge` ADD CONSTRAINT `Badge_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `BudgetingCalculator` ADD CONSTRAINT `BudgetingCalculator_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ChatBot` ADD CONSTRAINT `ChatBot_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `CreditCard` ADD CONSTRAINT `CreditCard_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Enrollment` ADD CONSTRAINT `Enrollment_wordID_fkey` FOREIGN KEY (`wordID`) REFERENCES `WordsGlossary`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Enrollment` ADD CONSTRAINT `Enrollment_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Enrollment` ADD CONSTRAINT `Enrollment_lessonID_fkey` FOREIGN KEY (`lessonID`) REFERENCES `Lesson`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Enrollment` ADD CONSTRAINT `Enrollment_moduleID_fkey` FOREIGN KEY (`moduleID`) REFERENCES `Module`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Enrollment` ADD CONSTRAINT `Enrollment_skillID_fkey` FOREIGN KEY (`skillID`) REFERENCES `Skill`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Enrollment` ADD CONSTRAINT `Enrollment_subSkillID_fkey` FOREIGN KEY (`subSkillID`) REFERENCES `SubSkill`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `FinancialGoal` ADD CONSTRAINT `FinancialGoal_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Form` ADD CONSTRAINT `Form_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Sections` ADD CONSTRAINT `Sections_formID_fkey` FOREIGN KEY (`formID`) REFERENCES `Form`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Options` ADD CONSTRAINT `Options_questionID_fkey` FOREIGN KEY (`questionID`) REFERENCES `Questions`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GameItems` ADD CONSTRAINT `GameItems_AisleId_fkey` FOREIGN KEY (`AisleId`) REFERENCES `Aisle`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroceryGameOrder` ADD CONSTRAINT `GroceryGameOrder_cardID_fkey` FOREIGN KEY (`cardID`) REFERENCES `CreditCard`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Orderitems` ADD CONSTRAINT `Orderitems_itemId_fkey` FOREIGN KEY (`itemId`) REFERENCES `GameItems`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `JobSkill` ADD CONSTRAINT `JobSkill_detailID_fkey` FOREIGN KEY (`detailID`) REFERENCES `JobSkillDetails`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `JobSkill` ADD CONSTRAINT `JobSkill_jobTitleID_fkey` FOREIGN KEY (`jobTitleID`) REFERENCES `JobTitle`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `JobTitleSkills` ADD CONSTRAINT `JobTitleSkills_jobTitleID_fkey` FOREIGN KEY (`jobTitleID`) REFERENCES `JobTitle`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Journal` ADD CONSTRAINT `Journal_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Permission` ADD CONSTRAINT `Permission_adminID_fkey` FOREIGN KEY (`adminID`) REFERENCES `Admin`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Podcast` ADD CONSTRAINT `Podcast_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Quiz` ADD CONSTRAINT `Quiz_iconID_fkey` FOREIGN KEY (`iconID`) REFERENCES `Icon`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Quiz` ADD CONSTRAINT `Quiz_subSkillID_fkey` FOREIGN KEY (`subSkillID`) REFERENCES `SubSkill`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Quiz` ADD CONSTRAINT `Quiz_allContentID_fkey` FOREIGN KEY (`allContentID`) REFERENCES `AllContent`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Quiz` ADD CONSTRAINT `Quiz_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Response` ADD CONSTRAINT `Response_formId_fkey` FOREIGN KEY (`formId`) REFERENCES `Form`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Response` ADD CONSTRAINT `Response_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `QuizResponses` ADD CONSTRAINT `QuizResponses_responseId_fkey` FOREIGN KEY (`responseId`) REFERENCES `Response`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TransactionHistory` ADD CONSTRAINT `TransactionHistory_cardID_fkey` FOREIGN KEY (`cardID`) REFERENCES `CreditCard`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `UserLog` ADD CONSTRAINT `UserLog_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `User` ADD CONSTRAINT `User_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Icon` ADD CONSTRAINT `Icon_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Lesson` ADD CONSTRAINT `Lesson_moduleID_fkey` FOREIGN KEY (`moduleID`) REFERENCES `Module`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Lesson` ADD CONSTRAINT `Lesson_iconID_fkey` FOREIGN KEY (`iconID`) REFERENCES `Icon`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `LessonBadge` ADD CONSTRAINT `LessonBadge_badgeID_fkey` FOREIGN KEY (`badgeID`) REFERENCES `Badge`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `LessonBadge` ADD CONSTRAINT `LessonBadge_lessonID_fkey` FOREIGN KEY (`lessonID`) REFERENCES `Lesson`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `LessonWordsGlossary` ADD CONSTRAINT `LessonWordsGlossary_lessonID_fkey` FOREIGN KEY (`lessonID`) REFERENCES `Lesson`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `LessonWordsGlossary` ADD CONSTRAINT `LessonWordsGlossary_wordsGlossaryID_fkey` FOREIGN KEY (`wordsGlossaryID`) REFERENCES `WordsGlossary`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Module` ADD CONSTRAINT `Module_iconID_fkey` FOREIGN KEY (`iconID`) REFERENCES `Icon`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Module` ADD CONSTRAINT `Module_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Skill` ADD CONSTRAINT `Skill_lessonID_fkey` FOREIGN KEY (`lessonID`) REFERENCES `Lesson`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SkillAssignment` ADD CONSTRAINT `SkillAssignment_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SubSkill` ADD CONSTRAINT `SubSkill_chatBotID_fkey` FOREIGN KEY (`chatBotID`) REFERENCES `ChatBot`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SubSkill` ADD CONSTRAINT `SubSkill_skillID_fkey` FOREIGN KEY (`skillID`) REFERENCES `Skill`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SubSkill` ADD CONSTRAINT `SubSkill_iconID_fkey` FOREIGN KEY (`iconID`) REFERENCES `Icon`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SkillSection` ADD CONSTRAINT `SkillSection_subSkillID_fkey` FOREIGN KEY (`subSkillID`) REFERENCES `SubSkill`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SkillSection` ADD CONSTRAINT `SkillSection_allContentID_fkey` FOREIGN KEY (`allContentID`) REFERENCES `AllContent`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `WordsGlossary` ADD CONSTRAINT `WordsGlossary_OrganizationId_fkey` FOREIGN KEY (`OrganizationId`) REFERENCES `Organization`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
