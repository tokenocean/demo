alter table "public"."metadata" alter column "fire_protection" drop not null;
alter table "public"."metadata" add column "fire_protection" text;
