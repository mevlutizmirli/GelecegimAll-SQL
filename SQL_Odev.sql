-- users tablosu 

CREATE TABLE IF NOT EXISTS users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(0),
	is_active boolean

--SELECT * FROM users;

-- categories tablosu

CREATE TABLE IF NOT EXISTS categories(
	category_id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(0)

);

--SELECT * FROM categories;

-- post tablosu

CREATE TABLE  posts (
	post_id SERIAL PRIMARY KEY,
	user_id INT NOT NULL,
	category_id INT NOT NULL,
	title VARCHAR(50) NOT NULL,
	content TEXT NOT NULL,
	view_count INT DEFAULT 0,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(0),
	is_published BOOLEAN,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (category_id) REFERENCES categories(category_id)

);

--SELECT * FROM posts;

-- comments tablosu

CREATE TABLE comments (
	comment_id SERIAL PRIMARY KEY,
	post_id INT NOT NULL,
	user_id INT,
	comment TEXT NOT NULL,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(0),
	is_confirmed BOOLEAN,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (post_id) REFERENCES posts(post_id)


);

--SELECT * FROM comments;

-- users tablosu için veri ekleme

insert into users (username, email, creation_date, is_active) values ('imclucas0', 'sberrigan0@sourceforge.net', '2016-11-14 01:12:21', false);
insert into users (username, email, creation_date, is_active) values ('cmctague1', 'lhaggas1@vistaprint.com', '2018-10-30 20:52:01', false);
insert into users (username, email, creation_date, is_active) values ('oveld2', 'mmordie2@ucoz.com', '2017-08-02 02:38:08', true);
insert into users (username, email, creation_date, is_active) values ('acaughan3', 'esulland3@unesco.org', '2011-01-07 01:32:57', false);
insert into users (username, email, creation_date, is_active) values ('rpoolman4', 'smcconachie4@taobao.com', '2018-07-29 05:45:31', false);
insert into users (username, email, creation_date, is_active) values ('jwight5', 'nmanclark5@comcast.net', '1998-12-11 18:26:14', true);
insert into users (username, email, creation_date, is_active) values ('phaywood6', 'epryke6@webmd.com', '2009-03-16 15:20:22', true);
insert into users (username, email, creation_date, is_active) values ('gbaumadier7', 'dwitheford7@moonfruit.com', '2006-03-06 19:56:24', true);
insert into users (username, email, creation_date, is_active) values ('jpimblott8', 'pfarrington8@msu.edu', '2023-01-04 20:14:53', false);
insert into users (username, email, creation_date, is_active) values ('bwilcher9', 'cridder9@slideshare.net', '2006-08-09 15:36:07', true);

-- SELECT * FROM users;

-- categories tablosu için veri ekleme

insert into categories (name, creation_date) values ('methodical', '2000-10-29 14:28:10');
insert into categories (name, creation_date) values ('demand-driven', '2005-07-06 17:43:41');
insert into categories (name, creation_date) values ('protocol', '2022-06-26 02:49:28');

-- SELECT * FROM categories;

-- posts tablosu için veri ekleme 

insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 3, 'demand-driven', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 1421, '2008-04-28 09:32:25', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 3, 'executive', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 1229, '2017-09-16 19:13:20', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 1, 'motivating', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 288, '2004-05-29 22:19:33', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 2, 'Devolved', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 777, '2015-10-28 00:02:27', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 2, 'regional', 'Fusce consequat. Nulla nisl. Nunc nisl.', 1532, '2004-09-09 00:01:21', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 2, 'Versatile', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 1198, '2013-03-13 08:50:20', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 2, 'Right-sized', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1438, '1997-10-11 11:07:46', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 1, 'fresh-thinking', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 181, '2009-10-18 06:48:00', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 2, 'Intuitive', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 1282, '2014-05-15 17:39:17', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 3, 'global', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1117, '2020-04-07 07:56:43', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 2, 'actuating', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 174, '2021-08-31 03:30:35', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 3, 'even-keeled', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 808, '2020-05-20 03:02:34', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 1, 'help-desk', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 1269, '2022-07-29 03:51:24', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 1, 'bandwidth-monitored', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 1445, '2005-11-04 11:49:22', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 2, 'intangible', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 123, '2016-04-14 05:47:23', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 1, 'task-force', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 157, '2014-01-14 21:36:30', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 1, 'core', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 315, '1999-02-05 20:01:41', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 2, 'moratorium', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 977, '2018-02-14 11:17:44', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 2, 'foreground', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 1172, '2022-01-07 02:23:01', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 3, 'Team-oriented', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 724, '2007-12-11 08:10:14', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 2, 'Cross-group', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 539, '2008-10-18 17:17:04', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 1, 'asymmetric', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 1587, '2004-03-05 12:26:54', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 1, 'Open-source', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 657, '1998-11-01 02:43:59', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 3, 'optimizing', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 596, '2014-02-09 11:25:12', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 1, 'Extended', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 802, '2020-10-27 02:14:08', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 2, 'neural-net', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 667, '2007-02-23 12:38:56', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 2, 'coherent', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 4, '2017-07-06 21:56:55', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 1, 'Phased', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 1335, '1999-08-24 21:20:28', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 1, 'multimedia', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 1389, '2007-08-04 11:44:54', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 2, 'Object-based', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 1138, '2023-04-07 14:11:49', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 1, 'productivity', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 913, '1999-11-30 14:36:52', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 1, 'firmware', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 1339, '2014-12-10 08:32:40', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 3, 'orchestration', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 723, '2015-09-26 11:44:40', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 1, 'zero defect', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 1, '2019-04-25 04:51:31', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 1, 'Progressive', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 1264, '2008-12-12 20:44:35', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 1, 'collaboration', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 173, '2018-01-11 19:43:33', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 2, 'capability', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 1314, '2007-11-28 11:40:19', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 2, 'Versatile', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1480, '2001-11-19 06:42:27', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 1, 'impactful', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 968, '2008-04-05 21:43:39', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 1, 'logistical', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 1042, '2000-05-11 14:01:07', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 2, 'Organic', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 1182, '2005-01-24 14:54:02', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 3, 'Synergistic', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 329, '2002-12-21 22:34:53', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 1, 'multi-state', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 201, '2008-02-28 13:58:32', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 3, 'incremental', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 203, '2004-03-28 07:07:00', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 3, 'multi-tasking', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 682, '2018-10-12 12:16:41', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 1, 'solution', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 691, '1999-11-15 15:15:29', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 1, 'Polarised', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 111, '2008-09-03 22:42:39', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 1, 'bi-directional', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 1213, '2001-10-04 01:42:58', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 3, 'Persevering', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 727, '2014-10-06 21:22:32', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 3, 'content-based', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 1170, '2013-11-03 03:52:41', false);

-- SELECT * FROM posts;


-- comments tablosu için veri ekleme

nsert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 5, 'Nullam porttitor lacus at turpis.', '1998-03-22 21:09:13', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (37, 7, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2010-12-10 07:39:23', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 10, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2007-03-05 09:55:48', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (8, 7, 'Quisque id justo sit amet sapien dignissim vestibulum.', '2017-04-27 14:24:09', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (36, 1, 'Proin risus.', '1999-12-29 03:58:44', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 9, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2004-04-25 08:15:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 9, 'In hac habitasse platea dictumst.', '2013-08-23 22:02:00', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 6, 'Etiam faucibus cursus urna. Ut tellus.', '2014-07-08 10:47:17', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (31, 3, 'Vivamus in felis eu sapien cursus vestibulum.', '2002-08-22 06:50:21', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 1, 'Fusce posuere felis sed lacus.', '2020-09-15 05:18:41', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 8, 'Nulla tempus.', '2008-08-07 23:26:09', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 2, 'Donec ut mauris eget massa tempor convallis.', '2022-11-05 20:30:47', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 3, 'Etiam justo. Etiam pretium iaculis justo.', '2010-07-16 10:03:52', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (26, 5, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', '2017-03-04 03:13:04', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 9, 'Sed ante.', '2016-10-06 01:27:48', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 9, 'Sed ante.', '2018-01-26 13:11:15', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 7, 'Aenean auctor gravida sem.', '2011-09-21 18:18:04', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 5, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', '2000-12-12 12:37:45', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 1, 'Nulla mollis molestie lorem.', '2022-11-04 18:01:59', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 2, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', '2010-12-30 20:10:58', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (10, 3, 'Integer ac leo. Pellentesque ultrices mattis odio.', '1998-12-13 09:23:13', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 8, 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '2019-05-09 07:59:08', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 1, 'Etiam justo.', '2012-07-09 08:01:59', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 10, 'Aenean lectus. Pellentesque eget nunc.', '2007-07-04 16:46:53', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 10, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', '2002-02-02 21:00:48', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 1, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2003-04-18 11:28:55', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 10, 'Donec dapibus. Duis at velit eu est congue elementum.', '2008-10-22 00:18:44', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 5, 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', '2002-09-21 13:14:48', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (8, 9, 'Morbi porttitor lorem id ligula.', '2000-09-12 05:09:25', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 2, 'Aenean sit amet justo. Morbi ut odio.', '2006-03-10 23:45:51', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 5, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', '2012-05-31 18:08:55', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 5, 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', '2016-04-06 20:41:24', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 1, 'Cras pellentesque volutpat dui.', '2018-08-15 00:33:39', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 10, 'Etiam faucibus cursus urna. Ut tellus.', '2022-12-21 12:58:17', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 4, 'Suspendisse potenti.', '2009-10-10 23:18:56', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 6, 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '2009-10-05 17:41:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (22, 4, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2011-05-27 12:50:08', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 8, 'Nam nulla.', '2019-08-21 06:07:59', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 10, 'Suspendisse accumsan tortor quis turpis.', '1999-08-19 09:14:29', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 4, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', '2000-09-04 21:44:54', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 10, 'Mauris sit amet eros.', '2001-08-28 16:52:15', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 7, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', '2000-12-28 03:38:14', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 4, 'Nulla tellus. In sagittis dui vel nisl.', '2014-11-03 22:48:40', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 9, 'Praesent blandit.', '2009-03-18 13:56:05', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 10, 'Nunc nisl.', '2015-09-02 02:29:31', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (43, 8, 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2023-05-11 16:51:35', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 1, 'Cras in purus eu magna vulputate luctus.', '2006-09-22 04:12:59', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 7, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2019-03-19 03:30:30', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (31, 2, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '2001-11-03 15:17:11', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (43, 6, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', '2000-03-06 08:21:38', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 6, 'Nulla ac enim.', '2022-06-29 09:40:31', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 8, 'Vivamus vel nulla eget eros elementum pellentesque.', '2000-11-26 04:37:10', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 7, 'Morbi a ipsum. Integer a nibh.', '2022-11-14 17:01:12', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 7, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '2014-11-12 06:13:28', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 3, 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2014-12-31 15:41:54', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (25, 10, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', '2006-01-18 19:34:43', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 3, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2015-06-10 07:27:02', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 6, 'Suspendisse accumsan tortor quis turpis. Sed ante.', '2016-01-27 03:53:28', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 6, 'Morbi a ipsum.', '1998-10-18 14:18:51', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 6, 'Maecenas rhoncus aliquam lacus.', '2016-08-08 09:41:06', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 7, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', '2011-07-29 15:56:01', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 3, 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2017-06-23 20:12:59', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 4, 'Suspendisse accumsan tortor quis turpis. Sed ante.', '2010-10-20 09:29:50', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 9, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2007-05-28 04:52:24', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (8, 6, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2012-06-13 05:27:11', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (19, 3, 'Nulla tempus.', '2021-02-17 11:16:59', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 9, 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2019-01-25 06:50:10', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 10, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', '2020-04-12 00:27:29', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 8, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', '2016-09-28 18:20:37', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 9, 'Vivamus vel nulla eget eros elementum pellentesque.', '1997-11-04 13:02:03', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 8, 'Donec semper sapien a libero.', '2013-10-14 08:48:22', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 6, 'Maecenas tincidunt lacus at velit.', '2009-07-26 15:23:59', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (43, 4, 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '2002-11-24 08:27:14', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 6, 'Nunc purus.', '2001-02-06 07:51:12', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (19, 2, 'Integer a nibh. In quis justo.', '2022-04-17 08:40:36', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 2, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', '2020-10-22 01:39:28', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 3, 'Proin at turpis a pede posuere nonummy. Integer non velit.', '2022-09-05 09:04:10', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 1, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', '2008-10-12 00:00:14', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (32, 5, 'Donec vitae nisi.', '2022-07-08 06:33:02', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 3, 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2013-02-04 17:16:36', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 2, 'Integer ac neque. Duis bibendum.', '2000-05-29 06:27:19', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 1, 'Cras pellentesque volutpat dui.', '2017-12-06 12:20:23', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 9, 'Aliquam non mauris.', '2007-10-27 16:08:03', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 1, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', '2012-07-30 08:38:27', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (43, 1, 'Curabitur gravida nisi at nibh.', '2002-10-16 13:40:45', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 2, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2003-12-14 01:11:44', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 9, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', '2022-03-25 00:43:07', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (49, 4, 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', '2009-09-20 07:50:31', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 7, 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '2010-01-07 21:02:26', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (15, 1, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', '2000-02-04 04:04:21', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (10, 5, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '1997-11-01 22:36:34', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 2, 'Nulla mollis molestie lorem.', '2009-11-23 14:59:46', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 4, 'In hac habitasse platea dictumst.', '2011-12-22 19:13:09', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 1, 'Nam tristique tortor eu pede.', '2004-08-27 16:14:40', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (21, 10, 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '1997-07-13 15:12:29', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 10, 'Phasellus sit amet erat. Nulla tempus.', '2017-06-20 15:00:40', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (36, 7, 'Duis bibendum.', '2007-09-17 03:24:26', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (1, 3, 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '1998-12-07 01:54:33', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (43, 2, 'Maecenas rhoncus aliquam lacus.', '2010-06-15 09:59:52', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 5, 'Ut at dolor quis odio consequat varius.', '2022-10-20 00:47:04', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (11, 7, 'Nulla justo.', '2010-11-17 21:44:18', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (35, 5, 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2019-07-26 13:30:32', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 9, 'Morbi porttitor lorem id ligula.', '2001-04-18 22:24:37', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 1, 'In sagittis dui vel nisl.', '2018-02-28 19:51:14', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 5, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2013-05-24 05:19:18', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 7, 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '1997-10-28 19:44:20', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 7, 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2014-11-07 13:51:53', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 10, 'Nulla facilisi.', '2017-05-11 00:18:51', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 5, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', '2004-08-04 06:57:59', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 6, 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2001-10-15 03:18:24', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (43, 2, 'Nulla nisl. Nunc nisl.', '2000-02-18 06:59:31', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 6, 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2008-11-26 20:34:06', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 7, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '1998-12-18 00:14:54', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 2, 'Pellentesque ultrices mattis odio. Donec vitae nisi.', '2020-12-14 19:18:54', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (26, 1, 'Pellentesque ultrices mattis odio.', '2022-07-07 07:18:09', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (8, 6, 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '2021-05-11 04:15:02', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 10, 'Aenean lectus. Pellentesque eget nunc.', '2016-04-17 19:12:09', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 10, 'Mauris ullamcorper purus sit amet nulla.', '2001-10-03 21:14:28', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 1, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', '2007-06-05 08:14:44', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 7, 'Etiam faucibus cursus urna. Ut tellus.', '2015-12-22 05:28:34', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 8, 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', '2009-03-14 11:26:34', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (36, 2, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2002-09-14 21:04:46', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 4, 'Praesent blandit.', '1997-09-01 22:40:25', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 6, 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '2005-01-29 03:18:31', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 7, 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', '2016-02-06 18:20:48', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (1, 10, 'Donec posuere metus vitae ipsum. Aliquam non mauris.', '2013-08-08 05:07:53', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 7, 'Praesent blandit.', '2008-03-13 20:16:59', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 1, 'Nullam porttitor lacus at turpis.', '1999-08-30 21:04:30', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 3, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '1999-03-16 02:17:53', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 1, 'Nulla facilisi.', '2000-06-28 09:36:41', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (37, 2, 'Integer ac neque. Duis bibendum.', '2007-09-13 06:36:15', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 2, 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', '2015-02-22 10:53:38', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (10, 4, 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '2015-04-01 15:57:49', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (21, 5, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '2020-01-26 03:04:02', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 2, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', '2011-09-05 22:34:37', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 8, 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', '2020-11-12 09:37:14', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (15, 10, 'Pellentesque ultrices mattis odio. Donec vitae nisi.', '2008-10-06 14:32:28', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 1, 'Nulla nisl.', '2000-12-10 15:36:03', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 5, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2009-09-21 03:52:13', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 3, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', '2012-07-23 22:58:20', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 10, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2018-08-29 19:57:29', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (35, 9, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', '1997-10-01 12:14:24', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 4, 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', '2010-03-12 16:20:46', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 5, 'Nulla nisl.', '2020-01-20 02:10:53', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 8, 'Nullam varius. Nulla facilisi.', '2008-09-04 15:16:22', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 6, 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2019-10-20 06:41:41', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (20, 5, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2014-12-31 02:28:41', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (10, 6, 'Maecenas rhoncus aliquam lacus.', '2010-03-14 03:24:10', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 10, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', '2020-06-20 23:26:01', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 8, 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', '2021-05-06 13:17:47', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 7, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2004-06-27 17:19:45', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 5, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '2009-11-11 09:25:45', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (31, 2, 'Nunc rhoncus dui vel sem.', '2013-11-30 01:03:21', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (49, 8, 'Duis mattis egestas metus.', '2002-08-23 22:28:51', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 4, 'Morbi non quam nec dui luctus rutrum. Nulla tellus.', '1999-09-26 20:01:55', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 10, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', '2022-09-10 16:07:57', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (11, 8, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', '2002-08-16 06:21:46', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (20, 1, 'Nulla tellus.', '2003-09-16 08:14:28', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 9, 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', '2010-02-10 21:47:42', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 3, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', '1998-12-25 21:03:55', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 8, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', '2011-08-05 01:43:43', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 1, 'Mauris lacinia sapien quis libero.', '2020-05-16 02:44:06', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 3, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2006-10-02 22:28:01', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 4, 'Nulla tellus.', '1998-07-26 05:50:01', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 4, 'Ut tellus.', '2002-01-24 20:04:49', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (25, 8, 'Sed ante.', '2013-03-10 08:36:47', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 2, 'Pellentesque viverra pede ac diam.', '2001-02-14 09:01:38', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 10, 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2012-01-07 03:55:39', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (10, 4, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2022-07-01 19:17:57', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (47, 4, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '2005-09-28 08:12:10', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 8, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', '2014-08-07 02:09:26', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 1, 'Suspendisse potenti.', '2014-10-11 03:12:04', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 7, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2014-05-04 00:43:23', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 4, 'Aenean lectus. Pellentesque eget nunc.', '2003-01-25 00:15:55', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 3, 'Fusce consequat. Nulla nisl.', '1999-07-24 06:39:57', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 1, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', '2014-09-13 23:20:51', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 8, 'Aliquam erat volutpat.', '2017-10-31 03:05:13', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (43, 6, 'Duis ac nibh.', '2015-05-05 02:32:30', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (36, 9, 'In sagittis dui vel nisl. Duis ac nibh.', '2008-07-26 22:56:12', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (49, 6, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '2003-07-26 17:08:19', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (22, 5, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', '2014-12-31 22:59:38', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (43, 9, 'Mauris lacinia sapien quis libero.', '2016-01-31 05:18:11', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (8, 4, 'Sed vel enim sit amet nunc viverra dapibus.', '2014-01-20 07:54:27', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 2, 'Phasellus sit amet erat.', '2012-04-26 02:06:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 6, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', '2020-10-27 20:39:42', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 1, 'Vivamus vestibulum sagittis sapien.', '2011-10-18 06:46:52', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 4, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2013-12-01 04:42:18', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 2, 'Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2011-07-14 13:42:31', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 2, 'In hac habitasse platea dictumst.', '2006-02-22 12:02:54', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (37, 7, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2004-10-10 06:53:06', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (26, 9, 'In eleifend quam a odio. In hac habitasse platea dictumst.', '2019-09-23 08:03:05', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 8, 'Ut at dolor quis odio consequat varius. Integer ac leo.', '2021-04-22 13:50:30', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 3, 'Suspendisse potenti.', '2015-11-02 08:02:50', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 1, 'Duis consequat dui nec nisi volutpat eleifend.', '2022-07-19 16:11:59', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 5, 'Vestibulum ac est lacinia nisi venenatis tristique.', '2001-09-04 17:52:01', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (26, 4, 'In quis justo.', '2021-06-01 15:44:01', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 1, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '2017-02-19 02:07:05', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 6, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', '2006-07-01 04:46:08', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (15, 4, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', '2002-01-19 21:27:02', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 8, 'Integer non velit.', '2013-04-30 22:24:32', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 1, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', '2003-03-28 12:50:18', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 5, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', '2002-09-28 21:48:52', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 5, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '1999-05-13 22:50:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 4, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', '1999-06-15 15:00:41', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 3, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', '2020-01-16 04:15:00', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 2, 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '1999-07-16 22:36:10', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 6, 'Suspendisse potenti.', '1997-12-23 07:56:02', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 2, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2019-05-02 09:29:25', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 7, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '1999-10-30 19:58:00', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (15, 5, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2002-05-11 03:55:12', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 2, 'Donec quis orci eget orci vehicula condimentum.', '2004-03-02 07:08:29', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 6, 'Donec ut mauris eget massa tempor convallis.', '2003-08-23 04:05:02', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 8, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', '2006-10-05 10:00:17', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 10, 'Pellentesque ultrices mattis odio. Donec vitae nisi.', '2000-11-30 22:43:15', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 7, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '2011-05-18 18:07:01', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 6, 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', '2021-03-21 13:36:10', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (35, 9, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', '2020-11-03 16:36:36', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 5, 'Nulla nisl. Nunc nisl.', '2003-02-18 06:27:36', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (35, 6, 'In blandit ultrices enim.', '2005-12-12 07:32:01', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (20, 6, 'Vivamus vestibulum sagittis sapien.', '2017-05-03 21:52:21', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 2, 'Phasellus sit amet erat.', '2003-04-10 23:15:13', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (32, 9, 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', '2003-02-06 14:58:35', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 10, 'Sed ante. Vivamus tortor.', '2019-08-12 06:53:57', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 7, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2019-07-22 22:27:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 9, 'Etiam justo. Etiam pretium iaculis justo.', '2000-01-12 12:07:11', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 9, 'Nunc nisl.', '2022-04-07 14:13:18', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 1, 'Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2021-03-07 13:15:43', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 10, 'Nunc rhoncus dui vel sem.', '2010-06-06 07:44:25', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 8, 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', '2004-08-08 21:06:29', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (32, 9, 'Etiam faucibus cursus urna. Ut tellus.', '2000-04-16 01:34:31', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 5, 'Nullam porttitor lacus at turpis.', '2016-02-22 20:54:37', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (32, 3, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2019-06-14 22:37:13', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 9, 'Nullam molestie nibh in lectus.', '2022-03-30 17:35:06', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 2, 'Nunc purus.', '2022-05-28 05:04:24', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 3, 'In sagittis dui vel nisl.', '1998-06-12 21:13:14', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 3, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', '2020-03-08 12:01:08', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (11, 7, 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', '2013-02-24 22:29:46', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (49, 2, 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2019-06-03 12:11:01', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 4, 'Donec vitae nisi.', '2001-07-27 09:33:31', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (47, 4, 'Etiam vel augue. Vestibulum rutrum rutrum neque.', '2019-09-08 19:59:08', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 5, 'Duis aliquam convallis nunc.', '2015-09-17 15:48:24', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 7, 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2006-12-21 10:16:10', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 3, 'Nulla mollis molestie lorem.', '2011-02-16 21:16:40', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 9, 'Suspendisse accumsan tortor quis turpis. Sed ante.', '2011-10-01 16:12:25', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 3, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2017-03-16 22:55:43', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 6, 'Praesent blandit.', '2002-10-06 02:18:42', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 6, 'Integer ac leo.', '2013-08-04 23:55:47', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (37, 6, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', '2003-06-18 02:43:04', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 5, 'Nunc nisl.', '2015-08-20 09:58:02', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 8, 'Aliquam non mauris.', '1998-07-02 16:55:57', false);

-- SELECT * FROM comments;

-- 1. Tüm blog yazılarını başlıkları, yazarları ve kategorileriyle birlikte getirin.

SELECT posts.title, users.username, categories.name FROM posts
INNER JOIN users ON users.user_id = posts.user_id
INNER JOIN categories ON categories.category_id = posts.category_id;

-- 2. En son yayınlanan 5 blog yazısını başlıkları, yazarları ve yayın tarihleriyle birlikte alın.
 

SELECT posts.title,users.username,posts.creation_date FROM posts
INNER JOIN users ON users.user_id=posts.user_id
ORDER BY posts.creation_date DESC
LIMIT 5;

-- 3. Her blog yazısı için yorum sayısını gösterin
	
SELECT posts.content AS blog_content, COUNT(comments) AS comment_count FROM posts
INNER JOIN comments ON comments.post_id = posts.post_id
GROUP BY posts.content;

-- 4. Tüm kayıtlı kullanıcıların kullanıcı adlarını ve e-posta adreslerini gösterin.

SELECT username, email from users;

-- 5. En son 10 yorumu, ilgili gönderi başlıklarıyla birlikte alın.

SELECT posts.title,comments.comment FROM comments
INNER JOIN posts ON posts.user_id=comments.user_id
ORDER BY comments.creation_date DESC
LIMIT 10;

-- 6. Belirli bir kullanıcı tarafından yazılan tüm blog yazılarını bulun.

SELECT users.username, posts.content FROM users
INNER JOIN posts ON users.user_id = posts.user_id
WHERE users.user_id = 3;

-- 7. Her kullanıcının yazdığı toplam gönderi sayısını alın.

SELECT users.username AS writer, COUNT(posts) AS blog_count FROM users
INNER JOIN posts ON users.user_id = posts.user_id
GROUP BY users.username;

-- 8. Her kategoriyi, kategorideki gönderi sayısıyla birlikte gösterin.

SELECT categories.name, COUNT(posts.post_id) AS posts_count FROM categories
INNER JOIN posts ON categories.category_id=posts.category_id
GROUP BY categories.name;

-- 9. Gönderi sayısına göre en popüler kategoriyi bulun.

SELECT categories.name AS category, COUNT(posts) AS blog_count FROM categories
INNER JOIN posts ON categories.category_id = posts.category_id
GROUP BY categories.name
ORDER BY blog_count DESC
LIMIT 1;

-- 10. Gönderilerindeki toplam görüntülenme sayısına göre en popüler kategoriyi bulun.

SELECT categories.name, SUM (posts.view_count) AS view_count FROM posts 
INNER JOIN categories ON posts.category_id=categories.category_id
GROUP BY categories.name
ORDER BY COUNT(posts.view_count) DESC
LIMIT 1;

-- 11. En fazla yoruma sahip gönderiyi alın.

SELECT posts.content AS blog_content FROM posts
INNER JOIN comments ON comments.post_id = posts.post_id
GROUP BY posts.content
ORDER BY COUNT(comments) DESC
LIMIT 1;

-- 12. Belirli bir gönderinin yazarının kullanıcı adını ve e-posta adresini gösterin.

SELECT users.username, users.email FROM users
JOIN posts ON users.user_id = posts.user_id
WHERE posts.post_id = 47;

-- 13. Başlık veya içeriklerinde belirli bir anahtar kelime bulunan tüm gönderileri bulun.

SELECT * FROM posts
WHERE title LIKE '%man%' OR content LIKE '%man%';

-- 14. Belirli bir kullanıcının en son yorumunu gösterin.

SELECT users.username, comments.comment FROM comments
JOIN users ON comments.user_id = users.user_id
WHERE users.user_id = 2
ORDER BY comments.creation_date DESC
LIMIT 1;

-- 15. Gönderi başına ortalama yorum sayısını bulun.

SELECT AVG(comment_count) FROM (
SELECT post_id, COUNT(*) AS comment_count FROM comments
GROUP BY post_id) AS counts;

-- 16. Son 30 günde yayınlanan gönderileri gösterin.

SELECT * FROM posts
WHERE creation_date >= NOW() - INTERVAL '30 day';

-- 17. Belirli bir kullanıcının yaptığı yorumları alın.

SELECT comment FROM comments
INNER JOIN users ON users.user_id = comments.user_id
WHERE users.username = 'oveld2';

-- 18. Belirli bir kategoriye ait tüm gönderileri bulun.

SELECT content AS blog_content FROM posts
INNER JOIN categories ON posts.category_id = categories.category_id
WHERE categories.name = 'meth';

-- 19. 5'ten az yazıya sahip kategorileri bulun.

SELECT categories.name, COUNT(posts.category_id) FROM posts
RIGHT JOIN categories ON posts.category_id = categories.category_id
GROUP BY categories.name  
HAVING COUNT(posts.category_id) < 5;

-- 20. Hem bir yazı hem de bir yoruma sahip olan kullanıcıları gösterin.

SELECT DISTINCT(users.username) FROM users
INNER JOIN posts ON posts.user_id = users.user_id
INNER JOIN comments ON posts.user_id = comments.user_id;

-- 21. En az 2 farklı yazıya yorum yapmış kullanıcıları alın.

SELECT DISTINCT user_id FROM comments
GROUP BY user_id
HAVING COUNT(DISTINCT post_id) >= 2;

-- 22. En az 3 yazıya sahip kategorileri görüntüleyin.

SELECT categories.name FROM posts
JOIN categories ON posts.category_id = categories.category_id
GROUP BY categories.name
HAVING COUNT(posts.post_id) >= 3;

-- 23. 5'ten fazla blog yazısı yazan yazarları bulun.

SELECT users.username, FROM users 
INNER JOIN posts ON users.user_id=posts.user_id
GROUP BY users.username
HAVING COUNT (posts.post_id)>5;


-- 25. Bir blog yazısı yazmış ancak hiç yorum yapmamış yazarları bulun

SELECT users.username FROM 
(SELECT DISTINCT(user_id) FROM posts
EXCEPT
SELECT DISTINCT(user_id) FROM comments) AS writer
INNER JOIN users on users.user_id = writer.user_id;

