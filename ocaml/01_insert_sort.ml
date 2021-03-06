(*
  If the list is empty, return
  a list with a single element, i.

  Otherwise, calculate if i < h
  (first element or head of the list)
  put i at the tip and call itself (insert)
  with the head and tail of the list
  as parameters.
  
  if head is less than i, then leave head
  at the tip and insert calls itself again
  with i and tail as parameters, this runs 
  until the list has a single last item.
 *)
let rec insert i l =
  match l with
  | [] -> [i]
  | h :: t ->
      if i <= h
      then i :: insert h t
      else h :: insert i t
;;

(* 
   if the list empty, it's already sorted
   and there's nothing else to do.

   Otherwise, call insert function
   using the head of the list l
   as the element to insert in a list
   generated by sort calling itself
   with the tail of list l.
 *)
let rec sort l =
  match l with
  | [] -> []
  | h :: t -> insert h (sort t) 
;;

(*
  Animation of insertion sort:

    list = [4, 7, 3, 1, 9]

    [4, 7, 3, 1, 9] :: [7, 3, 1, 9]
    [4, 7, 3, 1, 9] :: [3, 1, 9]
    [3, 4, 7, 1, 9] :: [1, 9]
    [1, 3, 4, 7, 9] :: [9]
    [1, 3, 4, 7, 9] :: []
 *)

