alter table "public"."metadata" alter column "bathroom_number" drop not null;
alter table "public"."metadata" add column "bathroom_number" int4;
