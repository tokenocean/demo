alter table "public"."metadata" alter column "property_title" drop not null;
alter table "public"."metadata" add column "property_title" text;
