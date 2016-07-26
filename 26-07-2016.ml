let rec count l i = 
	match l with
	| hd :: tl -> (if hd = i then 1 else 0) + count tl i
	| [] -> 0
;;

count [1;2;3;2;4;2] 2;;

let rec length l =
	match l with
	| hd :: tl -> 1 + length tl
	| [] -> 0
;;

length [1;2;3;2;4;2];;

(*eval*)

length [1; 2];;

match [1; 2] with
| 1::[2] -> 1 + length [2]
| [] -> 0

1 + length [2]

match [2] with
| 2::[] -> 1 + length []
| [] -> 0

1 + length []
match [] with
| [] -> 0

match [2] with
| 2::[] -> 1 + 0
| [] -> 0

match [1; 2] with
| 1::[2] -> 1 + 1
| [] -> 0

2

(* combine lists*)

let rec lastval l =
	match l with
	| hd::[] -> hd
	| hd::tl -> lastval tl
	| [] -> -1
;;

lastval [1;2;3;2;4;2];;

let rec append l1 l2 = 
	match (l1,l2) with
	| (hd::tl,[]) -> l1
	| ([],hd::tl) -> l2
	| (hd1::tl1,hd2::tl2) -> hd1 :: append tl1 l2
	| ([],[]) -> []
;;

let rec append l1 l2 = 
	match l1 with
	| hd::tl -> hd :: append tl l2
	| [] -> l2
;;
