-- DROP statments (please don't change these)
DROP TABLE IF EXISTS `User`;
DROP TABLE IF EXISTS `Video`;
DROP TABLE IF EXISTS `Comment`;

-- Part 1: CREATE tables here...
CREATE TABLE User(
    ID INT NOT NULL,
    Email VARCHAR(255),
    Username VARCHAR(255),
    Age Int,

    PRIMARY KEY (ID)
);

CREATE TABLE Video(
    ID INT NOT NULL,
    Title VARCHAR(255),
    Views INT,
    UserID INT NOT NULL,
    
PRIMARY KEY (ID),
FOREIGN KEY (UserID) REFERENCES User(ID)
);

CREATE TABLE Comment(
    ID INT NOT NULL,
    Content VARCHAR(255),
    Likes INT,
    VideoID INT,
    UserID INT,

PRIMARY KEY (ID),
FOREIGN KEY (UserID) REFERENCES User(ID),
FOREIGN KEY (VideoID) REFERENCES Video(ID)
);


-- Part 2: INSERT statements here...

INSERT INTO User VALUES (1, 'john@mail.com', 'johnman123', 31);
INSERT INTO User VALUES (2, 'jane@mail.com', 'jan3d03', 44);
INSERT INTO User VALUES (3, 'suzy@mail.com', 'sz4828', 25);
INSERT INTO User VALUES (4, 'mitch@mail.com', 'itsmitch', 29);
INSERT INTO User VALUES (5, 'rob@mail.com', 'robisanemu', 55);

INSERT INTO Video VALUES (1, 'My Trip to Iceland', 423, 1);
INSERT INTO Video VALUES (2, 'City Vlog Day 12', 87, 1);
INSERT INTO Video VALUES (3, 'How to Ride a Bike', 2092, 2);

INSERT INTO Comment VALUES (1, 'I never knew how to ride a bike', 17, 3, 3);
INSERT INTO Comment VALUES (2, 'Very cool city', 2, 2, 2);
INSERT INTO Comment VALUES (3, 'Where did you fly into?', 12, 1, 2);
INSERT INTO Comment VALUES (4, 'Hey you stole my video idea', 0, 2, 5);
INSERT INTO Comment VALUES (5, 'Good video @jan3do3', 34, 3, 4);





-- Part 3: Queries here...
SELECT Content, Likes FROM Comment WHERE VideoID IN (SELECT ID FROM Video WHERE Views > 400);

SELECT Title, Views FROM Video WHERE UserID IN (SELECT ID FROM User WHERE Email LIKE 'j%');

SELECT DISTINCT Email FROM User WHERE ID IN (SELECT UserID FROM Comment WHERE VideoID = 3);

SELECT Title, Views FROM Video WHERE UserID IN (SELECT ID FROM User WHERE Age BETWEEN 30 AND 39);

SELECT Comment.Content, User.Username, Video.Title FROM Comment JOIN User ON Comment.UserID = User.ID JOIN Video ON Comment.VideoID = Video.ID;