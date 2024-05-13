BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "note" (
    "id" serial PRIMARY KEY,
    "text" text NOT NULL
);


--
-- MIGRATION VERSION FOR firstpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('firstpod', '20240513215416140', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240513215416140', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
