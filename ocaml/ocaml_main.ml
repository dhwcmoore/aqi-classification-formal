(* ocaml/main.ml *)
let () =
  let aqi =
    if Array.length Sys.argv > 1 then int_of_string Sys.argv.(1)
    else 0
  in
  let category = Aqi_classification.aqi_category aqi in
  Printf.printf "AQI %d is classified as: %s\n" aqi category
