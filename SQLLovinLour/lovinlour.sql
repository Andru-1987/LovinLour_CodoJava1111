-- SQL data base

create database if not exists libreria;

use libreria;

create table users 
	(idUser int not null auto_increment, nombre varchar(100),apellido varchar(100),email varchar(100),pass varchar(100), unique(idUser), primary key (idUser));


create table books
	(idBook smallint not null auto_increment, book varchar(200),autor varchar(200), idioma varchar(200), primeraPublicacion varchar(200), ventas varchar(200),ISBN varchar(200), recomendacion varchar(200),  unique(ISBN),primary key (idBook));

create table deleteUsers
	(idDeleteUser int not null auto_increment primary key,idUser smallint, nombre varchar(200), email varchar(200), hora datetime);


insert into libreria.books (book,autor,idioma,primeraPublicacion,ventas,ISBN) 
	values
("A Tale Of Two Cities","Charles Dickens","English",1859,"200 million[5]","0141439602"),
("The Lord of the Rings","J. R. R. Tolkien","English",1954,"150 million[6]","0618640150"),
("The Fellowship of the Ring","J. R. R. Tolkien","English",1954,"150 million","0618346252"),
("The Two Towers","J. R. R. Tolkien","English",1954,"150 million","0618346260"),
("The Return of the King","J. R. R. Tolkien","English",1954,"150 million","0345339738"),
("The Hobbit","J. R. R. Tolkien","English",1937,"140.6 million[7]","0006754023"),
("The Little Prince","Antoine de Saint-Exupéry","French[Note 1]",1943,"140 million[8][9]","156012197"),
("Harry Potter and the Sorcerer's Stone","J. K. Rowling","English",1997,"107 million[10]","0439554934"),
("And Then There Were None","Agatha Christie","English",1939,"100 million[10]","0312330871"),
("The Lion, the Witch and the Wardrobe","C. S. Lewis","English",1950,"85 million[14]","0060764899"),
("The Da Vinci Code","Dan Brown","English",2003,"80 million[15]","0307277674"),
("Think and Grow Rich","Napoleon Hill","English",1937,"70 million[16]","1585424331"),
("Harry Potter and the Half-Blood Prince","J. K. Rowling","English",2005,"65 million[10]","0439785960"),
("The Catcher in the Rye","J. D. Salinger","English",1951,"65 million[17]","0316769177"),
("The Alchemist","Paulo Coelho","Portuguese",1988,"65 million[18]","0061122416"),
("Harry Potter and the Chamber of Secrets","J. K. Rowling","English",1998,"60 million[10]","0439064864"),
("Harry Potter and the Prisoner of Azkaban","J. K. Rowling","English",1998,"55 million[10]","0439655484"),
("Harry Potter and the Goblet of Fire","J. K. Rowling","English",2000,"55 million[10]","0439139600"),
("Harry Potter and the Order of the Phoenix","J. K. Rowling","English",2003,"55 million[10]","0439358078"),
("Harry Potter and the Deathly Hallows","J. K. Rowling","English",2007,"50 million[10]","0545010225"),
("One Hundred Years of Solitude","Gabriel García Márquez","Spanish",1967,"50 million[19][20][21]","0060531045"),
("Lolita","Vladimir Nabokov","English",1955,"50 million[22]","0141182539"),
("The Common Sense Book of Baby and Child Care","Dr. Benjamin Spock","English",1946,"50 million[24]","0743476670"),
("Anne of Green Gables","Lucy Maud Montgomery","English",1908,"50 million[25]","0451528824"),
("The Name of the Rose","Umberto Eco","Italian",1980,"50 million[27]","0156001314"),
("Watership Down","Richard Adams","English",1972,"50 million[29]","038039586X"),
("Charlotte's Web","E.B. White; illustrated by Garth Williams","English",1952,"50 million[31]","0064410935"),
("The Bridges of Madison County","Robert James Waller","English",1992,"50 million[33]","0446364495"),
("Ben-Hur: A Tale of the Christ","Lew Wallace","English",1880,"50 million[10]","1404185712"),
("The Mark of Zorro","Johnston McCulley","English",1924,"50 million[10]","0812540077"),
("The Tale of Peter Rabbit","Beatrix Potter","English",1902,"45 million[34]","0723247706"),
("Fifty Shades of Grey","EL James","English",2011,"40 million[36]","1612130291"),
("Flowers in the Attic","V. C. Andrews","English",1979,"40 million[38]","0743496310"),
("Angels & Demons","Dan Brown","English",2000,"39 million[39]","1416524797"),
("War and Peace","Leo Tolstoy","Russian",1869,"36.0 million copies in USSR[40]","0192833987"),
("To Kill a Mockingbird","Harper Lee","English",1960,"30 million[46]","0061120081"),
("Valley of the Dolls","Jacqueline Susann","English",1966,"30 million[24]","0739418378"),
("Gone with the Wind","Margaret Mitchell","English",1936,"30 million[47]","0446675539"),
("The Diary of Anne Frank","Anne Frank","Dutch",1947,"30 million[48]","0553296981"),
("The Purpose Driven Life","Rick Warren","English",2002,"30 million[49]","0310276993"),
("The Girl with the Dragon Tattoo","Stieg Larsson","Swedish",2005,"30 million[52]","0307269752"),
("The Very Hungry Caterpillar","Eric Carle","English",1969,"30 million[53]","0241003008"),
("Who Moved My Cheese?","Spencer Johnson","English",1998,"26 million[54]","091883768"),
("The Great Gatsby","F. Scott Fitzgerald","English",1925,"25 million[55]","0743273567"),
("The Wind in the Willows","Kenneth Grahame","English",1908,"25 million[56]","0143039091"),
("Nineteen Eighty-Four","George Orwell","English",1949,"25 million[57]","0451524934"),
("The Seven Habits of Highly Effective People","Stephen R. Covey","English",1989,"25 million[58]","0743269519"),
("The Hunger Games","Suzanne Collins","English",2008,"23 million[60]","0439023483"),
("Jaws","Peter Benchley","English",1974,"20 million[65]","0339023403"),
("What to Expect When You're Expecting","Arlene Eisenberg and Heidi Murkoff","English",1984,"20 million[68]","0761121323"),
("The Adventures of Huckleberry Finn","Mark Twain","English",1885,"20 million[69]","0142437174"),
("Kon-Tiki: Across the Pacific in a Raft","Thor Heyerdahl","Norwegian",1950,"20 million[71]","0671726528"),
("Where the Wild Things Are","Maurice Sendak","English",1963,"20 million[73]","0099408392"),
("The Power of Positive Thinking","Norman Vincent Peale","English",1952,"20 million[74]","1416560610"),
("How to Win Friends and Influence People","Dale Carnegie","English",1936,"15 million[85]","0671723651"),
("The Grapes of Wrath","John Steinbeck","English",1939,"15 million[87]","0142000663"),
("The Hitchhiker's Guide to the Galaxy","Douglas Adams","English",1979,"14 million[92]","0345391802"),
("Tuesdays with Morrie","Mitch Albom","English",1997,"14 million[93]","0751529818"),
("God's Little Acre","Erskine Caldwell","English",1933,"14 million[94]","0820316636"),
("A Wrinkle in Time","Madeleine L'Engle","English",1962,"14 million[96]","0440498058"),
("The Old Man and the Sea","Ernest Hemingway","English",1952,"13 million[40]","0684830493"),
("The Outsiders","S. E. Hinton","English",1967,"13 million[97]","0140385724"),
("Charlie and the Chocolate Factory","Roald Dahl","English",1964,"13 million[98]","0142403881"),
("The Divine Comedy","Dante Alighieri","Italian",1304,"11-12 million (during 20th century)[106]","0679433139"),
("Things Fall Apart","Chinua Achebe","English",1958,"11 million[107]","0385474547"),
("The Prophet","Khalil Gibran","English",1923,"11 million[108][better source needed]","0000100039"),
("The Exorcist","William Peter Blatty","English",1971,"11 million[109]","0061007226"),
("The Fault in Our Stars","John Green","English",2012,"10.7 million[110]","0525478817"),
("Catch-22","Joseph Heller","English",1961,"10 million[112]","0684833395"),
("Eye of the Needle","Ken Follett","English",1978,"10 million[113]","006074815X"),
("A Brief History of Time","Stephen Hawking","English",1988,"10 million[114]","0553380168"),
("The Cat in the Hat","Dr. Seuss","English",1957,"10 million[115]","039480001X"),
("The Kite Runner","Khaled Hosseini","English",2003,"10 million[120]","1594480001"),
("What Color is Your Parachute?","Richard Nelson Bolles","English",1970,"10 million[125]","1322022534"),
("Life of Pi","Yann Martel","English",2001,"10 million[129]","0770430074"),
("The Giver","Lois Lowry","English",1993,"10 million[130]","0385732554"),
("If You Give a Mouse a Cookie","Laura Joffe Numeroff","English",1998,"20 million","0060245867"),
("The analyst","John Katzenbach","English",2002,"10 million","9780345455482");



create trigger guardaUsuarios_AD after delete on users
for each row insert into deleteUsers
(idUser,nombre, email, hora)
values
(old.idUser,old.nombre,old.email,now());
