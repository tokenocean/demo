alter table "public"."metadata" alter column "amenities_nearby" drop not null;
alter table "public"."metadata" add column "amenities_nearby" text;
