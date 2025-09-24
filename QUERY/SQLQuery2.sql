


Create Database BIProject
USE BIProject

-- Membuat tabel Company
CREATE TABLE Company(
    CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(55) NOT NULL
);

-- Membuat tabel Product
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    CompanyID INT,
    ModelName VARCHAR(255) NOT NULL,
    BackCamera VARCHAR(55),
    MobileWeight VARCHAR(55),
    RAM VARCHAR(55),
    FrontCamera VARCHAR(55),
    BatteryCapacity VARCHAR(55),
    ScreenSize INT,
    LaunchedYear INT,
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

-- Membuat tabel IndiaPrice
CREATE TABLE IndiaPrice (
    IndiaID INT PRIMARY KEY,
    Country VARCHAR(50) DEFAULT 'India',
    IndiaPrice FLOAT(53)
);

-- Membuat tabel USAPrice
CREATE TABLE USAPrice (
    USAID INT PRIMARY KEY,
    Country VARCHAR(50) DEFAULT 'USA',
    USAPrice FLOAT(53)
);

-- Membuat tabel DubaiPrice
CREATE TABLE DubaiPrice (
    DubaiID INT PRIMARY KEY,
    Country VARCHAR(50) DEFAULT 'Dubai',
    DubaiPrice FLOAT(53)
);

-- Membuat tabel PakistanPrice
CREATE TABLE PakistanPrice (
    PakistanID INT PRIMARY KEY,
    Country VARCHAR(50) DEFAULT 'Pakistan',
    PakistanPrice FLOAT(53)
);

-- Membuat tabel ChinaPrice
CREATE TABLE ChinaPrice (
    ChinaID INT PRIMARY KEY,
    Country VARCHAR(50) DEFAULT 'China',
    ChinaPrice FLOAT(53)
);

-- Membuat tabel DetailProductPrice
CREATE TABLE DetailProductPrice (
    ProductID INT PRIMARY KEY,
    DubaiID INT,
    USAID INT,
    IndiaID INT,
    PakistanID INT,
    ChinaID INT,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (DubaiID) REFERENCES DubaiPrice(DubaiID),
    FOREIGN KEY (USAID) REFERENCES USAPrice(USAID),
    FOREIGN KEY (IndiaID) REFERENCES IndiaPrice(IndiaID),
    FOREIGN KEY (PakistanID) REFERENCES PakistanPrice(PakistanID),
    FOREIGN KEY (ChinaID) REFERENCES ChinaPrice(ChinaID)
);
