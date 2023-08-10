CREATE DATABASE BASEBALL CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

GRANT ALL PRIVILEGES ON BASEBALL.* TO hskim@localhost;

CREATE TABLE TB_game (
GameID INT NOT NULL AUTO_INCREMENT,
PlayedAt DATETIME,
AwayTeam VARCHAR(4),
AwayScore VARCHAR(16),
HomeTeam VARCHAR(4),
HomeScore VARCHAR(16),
Stadium VARCHAR(4),
Broadcast VARCHAR(255),
PRIMARY KEY(GameID)
);

CREATE TABLE TB_winpitcher (
WinPitcherID INT NOT NULL AUTO_INCREMENT,
GameID INT,
Name VARCHAR(8),
Inning VARCHAR(8),
Hit VARCHAR(8),
BBHP VARCHAR(8),
StrikeOut VARCHAR(8),
Lose_Run VARCHAR(16),
PitchingNumber VARCHAR(16),
Era VARCHAR(8),
PRIMARY KEY(WinPitcherID),
FOREIGN KEY (GameID) REFERENCES TB_game (GameID)
);

CREATE TABLE TB_losepitcher (
LosePitcherID INT NOT NULL AUTO_INCREMENT,
GameID INT,
Name VARCHAR(8),
Inning VARCHAR(8),
Hit VARCHAR(8),
BBHP VARCHAR(8),
StrikeOut VARCHAR(8),
Lose_Run VARCHAR(16),
PitchingNumber VARCHAR(16),
Era VARCHAR(8),
PRIMARY KEY(LosePitcherID),
FOREIGN KEY (GameID) REFERENCES TB_game (GameID)
);

CREATE TABLE TB_batter (
BatterID INT NOT NULL AUTO_INCREMENT,
GameID INT,
Name VARCHAR(8),
AtBats VARCHAR(8),
Hit_Homerun VARCHAR(16),
BB VARCHAR(8),
StrikeOut VARCHAR(8),
RBI VARCHAR(8),
Run VARCHAR(8),
BA VARCHAR(8),
PRIMARY KEY(BatterID),
FOREIGN KEY (GameID) REFERENCES TB_game (GameID)
);