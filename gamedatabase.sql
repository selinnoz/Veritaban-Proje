use gameDB;
CREATE TABLE Player (
  playerID INT PRIMARY KEY,
  username VARCHAR(30),
  password VARCHAR(50),
  email VARCHAR(50),
  nickname VARCHAR(30),
  createdAt DATETIME
);

CREATE TABLE Characters (
  charID INT PRIMARY KEY,
  playerID INT,
  charClass VARCHAR(10),
  charDefense INT,
  charStrength INT,
  charLevel INT,
  charHealth INT,
  charGold INT,
  charExp INT,
  FOREIGN KEY (playerID) REFERENCES Player(playerID)
);


CREATE TABLE Skills (
  skillID INT PRIMARY KEY,
  skillName VARCHAR(50),
  skillLevel INT,
  skillDescription VARCHAR(250),
  skillUsage VARCHAR(10)
);

CREATE TABLE Map (
  mapID INT PRIMARY KEY,
  mapName VARCHAR(50),
  mapDescription TEXT,
  playerID INT,
  mapDifficulty VARCHAR(50),
  FOREIGN KEY (playerID) REFERENCES Player(playerID)
);


CREATE TABLE Quests (
  questID INT PRIMARY KEY,
  questDescription VARCHAR(255),
  rewardGold INT,
  rewardExp INT,
  rewardItem VARCHAR(25)
);




CREATE TABLE Items (
  itemID INT PRIMARY KEY,
  itemName VARCHAR(25),
  itemDescription VARCHAR(250),
  itemType VARCHAR(10),
  itemLevel INT
);

CREATE TABLE Entity (
  entityID INT PRIMARY KEY,
  entityName VARCHAR(50),
  entityAttack INT,
  entityHealth INT,
  alignment VARCHAR(50),
  mapID INT
);
ALTER TABLE entity
ADD  FOREIGN KEY (mapID) REFERENCES map(mapID)

CREATE TABLE Inventory (
  inventoryID INT PRIMARY KEY,
  itemID INT,
  charID INT,
  FOREIGN KEY (itemID) REFERENCES Items(itemID),
  FOREIGN KEY (charID) REFERENCES Characters(charID)
);

