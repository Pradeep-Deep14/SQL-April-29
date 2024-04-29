CREATE TABLE fb_active_users (
    user_id INT,
    name VARCHAR(50),
    status VARCHAR(10),
    country VARCHAR(50)
);


INSERT INTO fb_active_users (user_id, name, status, country) VALUES
(33, 'Amanda Leon', 'open', 'Australia'),
(27, 'Jessica Farrell', 'open', 'Luxembourg'),
(18, 'Wanda Ramirez', 'open', 'USA'),
(50, 'Samuel Miller', 'closed', 'Brazil'),
(16, 'Jacob York', 'open', 'Australia'),
(25, 'Natasha Bradford', 'closed', 'USA'),
(34, 'Donald Ross', 'closed', 'China'),
(52, 'Michelle Jimenez', 'open', 'USA'),
(11, 'Theresa John', 'open', 'China'),
(37, 'Michael Turner', 'closed', 'Australia'),
(32, 'Catherine Hurst', 'closed', 'Mali'),
(61, 'Tina Turner', 'open', 'Luxembourg'),
(4, 'Ashley Sparks', 'open', 'China'),
(82, 'Jacob York', 'closed', 'USA'),
(87, 'David Taylor', 'closed', 'USA'),
(78, 'Zachary Anderson', 'open', 'China'),
(5, 'Tiger Leon', 'closed', 'China'),
(56, 'Theresa Weaver', 'closed', 'Brazil'),
(21, 'Tonya Johnson', 'closed', 'Mali'),
(89, 'Kyle Curry', 'closed', 'Mali'),
(7, 'Donald Jim', 'open', 'USA'),
(22, 'Michael Bone', 'open', 'Canada'),
(31, 'Sara Michaels', 'open', 'Denmark');

SELECT * FROM FB_ACTIVE_USERS


--Output share of US users that are active. 
--Active users are the ones with an 
--"open" status in the table.

--Return total users and active users
--and active users share for US



SELECT COUNT(USER_ID) AS TOTAL_USERS,
       SUM(
	   CASE
	       WHEN STATUS='open' THEN 1
	       ELSE 0
	   END)AS ACTIVE_USERS,
	   ROUND(SUM(
	   CASE WHEN STATUS='open' THEN 1
	   ELSE 0
	   END)::numeric/COUNT(USER_ID)::numeric * 100,2)
	   as share_of_active_users_US
FROM FB_ACTIVE_USERS
WHERE country='USA'