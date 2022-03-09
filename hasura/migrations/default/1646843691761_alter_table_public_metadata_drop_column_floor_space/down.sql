alter table "public"."metadata" alter column "floor_space" drop not null;
alter table "public"."metadata" add column "floor_space" int4;
