
CREATE TABLE HIKER (

    HikerID int PRIMARY KEY,
    FName varchar(25) NOT NULL,
    LName varchar(25) NOT NULL,
    PhoneNumber varchar(15) UNIQUE,
    Age int NOT NULL,
    Email varchar(100) UNIQUE NOT NULL,
    ExperienceLevel ENUM('NOVICE','COMPETENT','PROFICIENT','EXPERT') NOT NULL,
    HomeTown varchar(100) NOT NULL,
    is46er boolean
    
);

CREATE TABLE ADK46ER(

    HikerID int PRIMARY KEY,
    CertNumber int UNIQUE,
    MembershipStatus ENUM('ACTIVE','INACTIVE') NOT NULL,
    CompletionDate date NOT NULL,
    FOREIGN KEY (HikerID) REFERENCES HIKER(HikerID)

);

CREATE TABLE HIKE_LOG (

    LogID int PRIMARY KEY,
    HikerID int NOT NULL,
    HikeDate date NOT NULL,
    TotalTime time NOT NULL,
    WeatherConditions varchar(100) NOT NULL,
    Notes text NULL,
    FOREIGN KEY (HikerID) REFERENCES HIKER(HikerID)

);

CREATE TABLE MOUNTAIN (

    MountainName varchar(40) PRIMARY KEY,
    Height int NOT NULL,
    SubRange varchar(100) NULL,
    PeakType ENUM('BALD','WOODED','RIDGE','ROCKY') NOT NULL,
    ElevationGain int NOT NULL,
    FLORA text NULL,
    DifficultyLevel ENUM('EASY','MODERATE','HARD') NOT NULL 

);

CREATE TABLE TRAIL (

    TrailID int PRIMARY KEY,
    TrailName varchar(25) NULL, -- Not all trails have names
    TrailMarkerColor ENUM('RED','BLUE','YELLOW','UNMARKED') NOT NULL,
    HAZARDS text NULL,
    Popularity ENUM('LOW_TRAFFIC','MODERATE_TRAFFIC','HIGH_TRAFFIC') NOT NULL,
    DifficultyLevel ENUM('EASY','MODERATE','HARD') NOT NULL

);

CREATE TABLE TRAIL_HEAD (

    TrailHeadName varchar(40) PRIMARY KEY,
    BaseElevation int NOT NULL,
    SeasonalAccess ENUM('YEAR_ROUND','SUMMER_ONLY','CLOSED_FOR_HUNTING_SEASON','PERMIT_REQUIRED') NOT NULL,
    ParkingCapacity int NULL,
    HasRestroom boolean,
    AccessFee Decimal(5,2) NULL

);

CREATE TABLE GEAR (

    GearID int PRIMARY KEY,
    Brand varchar(25) NOT NULL,
    WeightLBS decimal(5,2) NULL,
    Cost int NOT NULL,
    RecommendedSeason ENUM('YEAR-ROUND','WINTER','SUMMER') NOT NULL,

    GearType ENUM('FOOTWEAR','CLOTHING','SAFETY',
    'STORAGE','SLEEPSYSTEM','CAMPING','OTHER') NOT NULL,

    GearDescription varchar(50) NOT NULL

);

CREATE TABLE PARK_RANGERS (

    RangerID int PRIMARY KEY,
    FName varchar(25) NOT NULL,
    Lname varchar(25) NOT NULL,
    YearsOfService int NULL,
    SubRange varchar(100) NULL,
    ShiftSchedule varchar(100) NULL,
    PhoneNumber varchar(15) UNIQUE NOT NULL,
    CertLevel ENUM('BASIC_TRAINING','ADVANCED_TRAINING','SEARCH_AND_RESCUE') NOT NULL
    
    
);

CREATE TABLE RANGER_PATROL_LOG (

    PatrolLogID int PRIMARY KEY,
    RangerID int NOT NULL,
    PatrolDate date NOT NULL,
    RescueOccured boolean NULL,
    NOTES text NULL,
    FOREIGN KEY(RangerID) REFERENCES PARK_RANGERS(RangerID)

);

CREATE TABLE HIKER_GEAR_USE (

    LogID int NOT NULL,
    GearID int NOT NULL,
    PRIMARY KEY(LogID,GearID),
    FOREIGN KEY(LogID) REFERENCES HIKE_LOG(LogID),
    FOREIGN KEY(GearID) REFERENCES GEAR (GearID)
    
);

CREATE TABLE TRAIL_HEAD_ACCESSIBLE_TRAILS (

    TrailHeadName varchar(40) NOT NULL,
    TrailID int NOT NULL,
    PRIMARY KEY (TrailHeadName,TrailID),
    FOREIGN KEY (TrailHeadName) REFERENCES TRAIL_HEAD(TrailHeadName),
    FOREIGN Key (TrailID) REFERENCES TRAIL(TrailID) 
    
);

CREATE TABLE HIKE_LOG_MOUNTAIN (

    LogID int NOT NULL,
    MountainName varchar(40) NOT NULL,
    TimeToSummit time NOT NULL,
    PRIMARY KEY (LogID,MountainName),
    FOREIGN KEY (LogID) REFERENCES HIKE_LOG(LogID),
    FOREIGN KEY (MountainName) REFERENCES MOUNTAIN(MountainName)
    
);

CREATE TABLE RESCUE_DETAILS (

    PatrolLogID int NOT NULL,
    HikerID int NOT NULL,
    RescueTime time NOT NULL,
    PRIMARY KEY (PatrolLogID,HikerID),
    FOREIGN KEY (PatrolLogID) REFERENCES RANGER_PATROL_LOG(PatrolLogID),
    FOREIGN KEY (HikerID) REFERENCES HIKER(HikerID)
    
);
