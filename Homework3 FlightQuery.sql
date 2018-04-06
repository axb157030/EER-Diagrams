CREATE TABLE Flights (fid int NOT NULL PRIMARY KEY, theYear int, month_id int, day_of_month int, 
day_of_week_id int, carrier_id int, flight_num int,
origin_city varchar(50), origin_state varchar(50), dest_city varchar(50), 
dest_state varchar(50), departure_delay varchar(50), taxi_out varchar(50), 
arrival_delay varchar(50), canceled bit, actual_time int, distance int,
FOREIGN KEY (carrier_id) REFERENCES Carriers(cid),
FOREIGN KEY (month_id) REFERENCES Months(mid),
FOREIGN KEY (day_of_week_id) REFERENCES Weekdays(did));

CREATE TABLE Carriers (cid varchar(15)  NOT NULL PRIMARY KEY, name varchar(50));

CREATE TABLE Months (mid int  NOT NULL PRIMARY KEY, curMonth varchar(50));

CREATE TABLE Weekdays (did int  NOT NULL PRIMARY KEY, day_of_week varchar(50));

PRAGMA foreign_keys=ON;
.separator ","
 .import carriers.csv Carriers
 .import months.csv Months
 .import weekdays.csv Weekdays
 .import flights-small.csv Flights
-- Glights is the biggest file. How can file be unpacled