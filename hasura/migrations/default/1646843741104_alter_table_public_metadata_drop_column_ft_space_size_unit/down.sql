alter table "public"."metadata" alter column "ft_space_size_unit" set default false;
alter table "public"."metadata" alter column "ft_space_size_unit" drop not null;
alter table "public"."metadata" add column "ft_space_size_unit" bool;
