CREATE DATABASE Advertisment;

CREATE TABLE BaseAdvertising(
   id INT NOT NULL,
   clicks INT,
   views INT,
   PRIMARY KEY(id)
);

CREATE TABLE Advertiser(
   name VARCHAR(1000) NOT NULL,
   TOTALClicks INT,
   id INT NOT NULL,
   FOREIGN KEY (id) REFERENCES BaseAdvertising(id),
   PRIMARY KEY(id)
);

CREATE TABLE Ad(
   title VARCHAR(1000) NOT NULL,
   imgURL VARCHAR(1000) NOT NULL,
   link VARCHAR(1000) NOT NULL,
   id INT NOT NULL,
   adviserId INT NOT NULL,
   FOREIGN KEY (id) REFERENCES BaseAdvertising(id),
   FOREIGN KEY (adviserId) REFERENCES Advertiser(id),
   PRIMARY KEY(id)
);
