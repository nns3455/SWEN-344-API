/* Team Facilities Management */

/* Building Table*/
CREATE TABLE Building (
  ID INTEGER PRIMARY KEY,
  BUILDING_NAME VARCHAR NOT NULL
);

/* Classroom Table */
CREATE TABLE Classroom (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  CAPACITY INTEGER NOT NULL,
  ROOM_NUM INTEGER NOT NULL,
  BUILDING_ID INTEGER NOT NULL,
  FOREIGN KEY (BUILDING_ID) REFERENCES Building(ID)
);

/* Timeslot Table */
CREATE TABLE Timeslot (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  START_TIME TIME NOT NULL
);

INSERT INTO Timeslot (START_TIME)
VALUES
(time('08:00')), (time('09:00')), (time('10:00')), (time('11:00')), (time('12:00')), (time('13:00')), (time('14:00')), (time('15:00')), (time('16:00')), (time('17:00')), (time('18:00')), (time('19:00')), (time('20:00'));


/* Reservation Table */
CREATE TABLE Reservation (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  CLASSROOM_ID INTEGER NOT NULL,
  SECTION_ID INTEGER NOT NULL,
  TIME_SLOT_START INTEGER NOT NULL,
  DURATION INTEGER NOT NULL,
  DAY_OF_WEEK TEXT NOT NULL,
  FOREIGN KEY (SECTION_ID) REFERENCES Section(ID),
  FOREIGN KEY (TIME_SLOT_START) REFERENCES Timeslot(ID),
  FOREIGN KEY (CLASSROOM_ID) REFERENCES Classroom(ID)
);

/* Device Table */
CREATE TABLE Device (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  NAME TEXT NOT NULL,
  USER_ID INTEGER,
  CHECKED_OUT BIT DEFAULT 0,
  CHECK_OUT_DATE DATE,
  CONDITION TEXT NOT NULL,
  FOREIGN KEY (USER_ID) REFERENCES User(ID)
);
