ALTER TABLE "public"."users"
DROP CONSTRAINT "users_pkey",
ADD PRIMARY KEY ("id"); #may not need to run this command if ID already primary key