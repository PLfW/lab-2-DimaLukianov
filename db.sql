CREATE TABLE "admins" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE sqlite_sequence(name,seq);
CREATE UNIQUE INDEX "index_admins_on_email" ON "admins" ("email");
CREATE UNIQUE INDEX "index_admins_on_reset_password_token" ON "admins" ("reset_password_token");
CREATE TABLE "groups" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "institution_id" integer);
CREATE TABLE "institutions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "lessons" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "day" integer, "lesson_number" integer, "odd_week" boolean, "subgroup" integer, "type" integer, "classroom" varchar, "user_id" integer, "subject_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_lessons_on_subject_id" ON "lessons" ("subject_id");
CREATE INDEX "index_lessons_on_user_id" ON "lessons" ("user_id");
CREATE TABLE "subjects" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "institution_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_subjects_on_institution_id" ON "subjects" ("institution_id");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "first_name" varchar, "last_name" varchar, "is_teacher" boolean DEFAULT 'f', "group_id" integer);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
;
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
;
