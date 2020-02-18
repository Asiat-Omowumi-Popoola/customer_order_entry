% customer names
customer(habeeb, 'Kwara', good_credit).
customer(afeez, 'Lagos', good_credit).
customer(malik, 'Oyo', fair_credit).

% items for sale
item(lap001, laptop, 4).
item(des045, desktop, 2).
item(ptv102, plasma_tv, 3).
item(ac056, air_conditioner, 5).
item(ce105, ceiling_fan, 2 ).

% Inventory record
inventory(lap001, '#130000').
inventory(des045, '#85000').
inventory(ptv102, '#60000').
inventory(ac056, '#40000').
inventory(ce105, '#13000').

% rule to find the inventory level of a name item.
item_quantity(Y,Z):- item(X,Z,A), inventory(X,Y), write(Y),fail.

inventory_report(Z,A):- tab(2),
write('Name of the item'), write(Z), nl,
write('Quantity on hand'), write(A), nl,
 item_quantity(Y,Z), fail.
inventory_report(_,_).

% rule that define a good customer
good_customer(X):-customer(X, Y, good_credit),
write(X),tab(1), write('is a good customer'),nl, fail.

% arithemetics no 1
% ?- valid_order(habeeb,laptop,'1'1).
% to check if order is valid
 valid_order(X,Y,Z):- customer(X, A, good_credit),
 item(B, Y, Q), Q >= Z.

% Exercise managing data
update_inventory(X,Y):-retract(inventory(X,Y)),
asserta(inventory(X,Y)),Y =:= Y * 3.
order:- write('Enter customer name:'),read(C),
good_customer(X),
valid_order(X,Y,Z),














