alter table "public"."metadata" alter column "annual_taxes" drop not null;
alter table "public"."metadata" add column "annual_taxes" int8;
