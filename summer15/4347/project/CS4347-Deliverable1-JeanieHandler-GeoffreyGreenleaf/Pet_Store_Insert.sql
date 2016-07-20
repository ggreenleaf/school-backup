INSERT INTO PET_STORE VALUES (10,	'5555 test1 dr', '5555555555','TX', 'Allen'),
	(1,	'5555 test2 ln', '6666666666', 'OK', 'Oklahoma City'),
	(2,  '6060 test3 ln', '1111111111', 'MA', 'Boston'),
	(3,   '1000 drive st', '0000001111', 'MN', 'Saint Paul'),
	(4,   '10 park ln', '0001111234', 'TX', 'Austin'),
	(5,   '2020 fifty st', '0101235556', 'NY', 'New York'),
	(6,   '3030 ritz ave', '0205434443', 'MA', 'Salem'),
	(7,   '2133 right st', '0135556667', 'NV', 'Las Vegas'),
	(8,   '4444 left ln', '1825558686',  'TN', 'Memphis'),
	(9,   '1111 broke st', '1922225544',  'OH', 'Columbus');
    
INSERT INTO EMPLOYEE VALUES (1, 'Booker', 'Couture', 10.00, 'cashier'),
	(2, 'Lynell', 'Eisenman', 10.00, 'cashier'),
	(3, 'Brett', 'Cockburn', 10.00, 'cashier'),
	(4, 'Merlene', 'Lesniak', 10.00, 'cashier'),
	(5, 'Towanda', 'Hausman', 12.00, 'manager'),
	(6, 'Dayle', 'Simmonds', 8.50, 'cleaning-crew'),
	(7, 'Sherman', 'Stacy', 10.00, 'cashier'),
	(8, 'Candelaria', 'Desch', 9.55, 'greeter'),
	(9, 'Ardelle', 'Renegar', 12.00, 'manager'),
	(10, 'Wen', 'Leyba', 10.00, 'cashier');
    
INSERT INTO EMPLOYS VALUES (1, 1),
	(2, 2),
	(3, 3),
	(4, 1),
	(5, 5),
	(6, 10),
	(7, 6),
	(8, 7),
	(9, 8),
	(10, 10);
    
INSERT INTO PRODUCT VALUES (01, 'FIS', 'TY', 5.00, 'chest closed'),
	(02, 'DOG', 'FD', 10.00, 'senior dog food'),
	(03, 'CAT', 'TY', 5.00, 'bells'),
	(05, 'SNK', 'FD', 4.00, 'live rat'),
	(06, 'LIZ', 'AQ', 100.00, '13" x 6" x 8" tank'),
	(77, 'DOG', 'FD', 15.00, 'puppy dog food'),
	(88, 'DOG','TY', 3.00, 'super large bone'),
	(22, 'CAT', 'TY', 2.00, 'cat wand toy'),
	(23, 'FSH', 'FD', 5.00, 'fish food'),
	(25, 'CAT', 'FD', 15.00, 'wet cat food'); 
    
INSERT INTO STOCKS VALUES (01, 1, 10),
	(02, 2, 20),
	(02, 2, 30),
	(77, 4, 5),
	(06, 5, 10),
	(05, 6, 7 ),
	(88, 7, 8),
	(88, 8, 9),
	(22, 9, 10),
	(01, 10, 11);
    
INSERT INTO SELLS VALUES (1, 77 ,10, '2014-01-01'),
	(2, 25, 5,  '2013-02-10'),
	(3, 77, 3,  '2014-03-15'),
	(4, 25, 3,  '2014-04-23'),
	(5, 02, 1,  '2014-01-01'),
	(6, 01, 1,  '2013-09-01'),
	(7, 01, 10, '2014-09-06'),
	(8, 02, 1, '2014-08-17'),
	(9, 22, 3, '2014-11-12'),
	(10, 88, 3, '2014-12-21');
	