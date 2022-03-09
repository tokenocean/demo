alter table "public"."metadata" alter column "appliences_included" drop not null;
alter table "public"."metadata" add column "appliences_included" bool;
