import { DB } from "https://deno.land/x/sqlite@v3.7.0/mod.ts";



const db = new DB("people.db");

db.query(
  "INSERT INTO people (name, age, birthdate, lieblingsfarbe) VALUES (?, ?, ?, ?)",
  ["Julia", 28, "1995-08-12", "Rot"]
);

db.close();
