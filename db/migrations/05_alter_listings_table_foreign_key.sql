ALTER TABLE users
ADD UNIQUE (email);

ALTER TABLE "public"."listings" ADD FOREIGN KEY ("owner_email") REFERENCES "public"."users" ("email");

