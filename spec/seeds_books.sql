TRUNCATE TABLE books RESTART IDENTITY;

INSERT INTO "public"."books" ("id", "title", "author_name") VALUES (1, 'Nineteen Eighty-Four', 'George Orwell');
INSERT INTO "public"."books" ("id", "title", "author_name") VALUES (2, 'Mrs Dalloway', 'Virginia Woolf');
INSERT INTO "public"."books" ("id", "title", "author_name") VALUES (3, 'Emma', 'Jane Austen');
INSERT INTO "public"."books" ("id", "title", "author_name") VALUES (4, 'Dracula', 'Bram Stoker');
INSERT INTO "public"."books" ("id", "title", "author_name") VALUES (5, 'The Age of Innocence', 'Edith Wharton');