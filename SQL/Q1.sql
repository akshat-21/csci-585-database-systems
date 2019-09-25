-- Database used is Oracle

CREATE TABLE HotelStays
(roomNum INTEGER NOT NULL,
arrDate DATE NOT NULL,
depDate DATE NOT NULL,
guestName CHAR(30) NOT NULL,
PRIMARY KEY (roomNum, arrDate),
CONSTRAINT CHK_Date CHECK (depDate>=arrDate)
);

-- Trigger to check for valid room
CREATE OR REPLACE TRIGGER roomstatus
BEFORE INSERT OR UPDATE ON HotelStays
FOR EACH ROW
DECLARE
temp NUMBER;
BEGIN
select count(*) into temp
from HotelStays
where :new.roomNum=roomNum and ((:new.depDate between arrDate and depDate) or (:new.arrDate between arrDate and depDate) or (:new.arrDate<arrDate and :new.depDate>depDate));
IF temp>0
THEN
  RAISE_APPLICATION_ERROR(-20001, 'Errors here');
END IF;
END;

-- First, To check if arrival date is less than departure date, I have added a constraint check in the create table query.
-- This constraint check would give an error if the arrival date is greater than departure date.
-- So for example, arrival date of 2016-02-10 and departure date of 2016-02-06 would give error.
-- Next, in the trigger, for same room number, I am checking if a guest already exists in it.
-- If a guest exists in that room, then a new guest won't be given that room and would give an error.
