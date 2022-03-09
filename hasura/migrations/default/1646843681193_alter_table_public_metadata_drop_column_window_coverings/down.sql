alter table "public"."metadata" alter column "window_coverings" drop not null;
alter table "public"."metadata" add column "window_coverings" bool;
