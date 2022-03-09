alter table "public"."metadata" alter column "building_type" drop not null;
alter table "public"."metadata" add column "building_type" text;
