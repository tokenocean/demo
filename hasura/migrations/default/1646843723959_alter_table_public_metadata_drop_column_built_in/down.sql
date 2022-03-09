alter table "public"."metadata" alter column "built_in" drop not null;
alter table "public"."metadata" add column "built_in" int4;
