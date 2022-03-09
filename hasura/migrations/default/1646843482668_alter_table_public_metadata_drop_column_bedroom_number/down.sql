alter table "public"."metadata" alter column "bedroom_number" drop not null;
alter table "public"."metadata" add column "bedroom_number" int4;
