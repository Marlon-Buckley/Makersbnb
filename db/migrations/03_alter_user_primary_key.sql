ALTER TABLE "public"."users"
DROP CONSTRAINT "users_pkey",
ADD PRIMARY KEY ("email");