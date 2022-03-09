alter table "public"."metadata" alter column "appliances_number" set default 0;
alter table "public"."metadata" alter column "appliances_number" drop not null;
alter table "public"."metadata" add column "appliances_number" int4;
