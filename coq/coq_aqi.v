(* coq/coq_aqi.v *)
Require Import ZArith.

Open Scope Z_scope.

Definition AQI_Category (x : Z) : string :=
  if x <=? 50 then "Good"
  else if x <=? 100 then "Moderate"
  else if x <=? 150 then "Unhealthy for Sensitive Groups"
  else if x <=? 200 then "Unhealthy"
  else if x <=? 300 then "Very Unhealthy"
  else "Hazardous".
