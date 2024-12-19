

insert into HIKER (HikerID,FName,LName,Age,PhoneNumber,Email,ExperienceLevel,HomeTown,is46er)
values

(1, 'Michael', 'Alvarez', 29, '646-541-8241', 'alvarezmike36@gmail.com', 'EXPERT', 'ASTORIA', FALSE),
(2, 'Deanna', 'Banana', 33, '347-999-888', 'Dance101@gmail.com', 'COMPETENT', 'BROOKLYN', FALSE),
(3, 'Ben', 'Blyat', 29, '646-420-9696', 'violinLover@hotmail.com', 'EXPERT', 'FORESTHILLS', FALSE),
(4, 'Michael', 'CHASE', 25, '201-555-9990', 'JayPeakservant@protonmail.com', 'EXPERT', 'QUEENS', TRUE),
(5, 'Kanye', 'West', 40, '225-000-0000', 'GENIUS@gmail.com', 'NOVICE', 'CHI-TOWN', FALSE),
(6, 'Satoshi', 'Nakamoto', 99, '21-000-000', 'whoami@bitcoinMail.com', 'PROFICIENT', 'LONDON', TRUE),
(7, 'Frank', 'Underwood', 53, '889-009-1111', 'AceofSpades@gmail.com', 'NOVICE', 'GAFNY', TRUE),
(8, 'Professor', 'Svadlenka', 50, '718-997-5000', 'Svadlenka@qmail.cuny.edu', 'COMPETENT', 'FLUSHING', TRUE),
(9, 'Henrik', 'Lundquist', 33, '787-100-2015', 'NYRangers@gmail.com', 'EXPERT', 'Sweden', TRUE),
(10, 'Kai', 'Koon', 1, '111-111-1111', 'AHHHHHHHH@PoopedMyPants.com', 'NOVICE', 'Orlando', TRUE);



insert into ADK46ER(HikerID,CertNumber,MembershipStatus,CompletionDate)
values

(4, 101,'ACTIVE', '2016-06-16'),
(6, 102,'ACTIVE', '2008-10-08'),
(7, 103,'ACTIVE', '1986-01-30'),
(8, 104,'ACTIVE', '1999-12-31'),
(9, 105,'ACTIVE', '2015-06-14'),
(10,106,'ACTIVE', '2024-10-12');

insert into HIKE_LOG(LogID,HikerID,HikeDate,TotalTime,WeatherConditions,Notes)
values

(1, 1, '2016-06-01', '10:30:00', 'Sunny', 'three peaks in one day!, everything hurts!'),
(2, 5, '2018-06-05', '05:45:00', 'Cloudy', 'This hike made me think, what if I AM A MOUNTAIN?'),
(3, 7, '2020-08-10', '06:15:00', 'Rainy', NULL),
(4, 6, '2024-04-15', '07:00:00', 'Windy', 'We are all Satoshi'),
(5, 1, '2024-01-20', '9:10:00', 'Heavy Snow', 'almost broke my leg'),
(6, 10, '2024-10-10', '06:45:00', 'Partly Cloudy', '*baby coos*');


INSERT INTO PARK_RANGERS (RangerID, FName, Lname, YearsOfService, SubRange, ShiftSchedule, PhoneNumber, CertLevel)
values

(1, 'Tom', 'Seaver', 10, 'Great Range', 'Day Shift', '1234567890', 'SEARCH_AND_RESCUE'),
(2, 'Alice', 'Brown', 5, 'MacIntyre Range', 'Night Shift', '2345678901', 'ADVANCED_TRAINING'),
(3, 'Yellow', 'Ranger', 8, 'MacIntyre Range', 'Day Shift', '3456789012', 'BASIC_TRAINING'),
(4, 'Emma', 'Davis', 12, 'Great Range', 'Day Shift', '4567890123', 'SEARCH_AND_RESCUE'),
(5, 'David', 'Wilson', 6, 'Great Range', 'Night Shift', '5678901234', 'ADVANCED_TRAINING'),
(6, 'Sophia', 'Miller', 3, 'Santanoni Range', 'Day Shift', '6789012345', 'BASIC_TRAINING');


INSERT INTO GEAR (GearID, Brand, WeightLBS, Cost, RecommendedSeason, GearType, GearDescription)
values

(1, 'NorthFace', 2.50, 150, 'YEAR-ROUND', 'CLOTHING', 'Waterproof jacket'),
(2, 'Columbia', 3.00, 120, 'WINTER', 'FOOTWEAR', 'Mid hiking boots'),
(3, 'Osprey', 4.50, 250, 'YEAR-ROUND', 'STORAGE', '65L backpack'),
(4, 'Marmot', 1.20, 80, 'SUMMER', 'CLOTHING', 'Lightweight hiking shirt'),
(5, 'REI', 5.00, 800, 'WINTER', 'SLEEPSYSTEM', 'Zero Degree sleeping bag'),
(6, 'BlackDiamond', 0.50, 50, 'YEAR-ROUND', 'SAFETY', 'Headlamp'),
(7, 'Garcia', 7.75, 50, 'YEAR-ROUND', 'OTHER', 'Bear-resistant food storage cannister'),
(8, 'Patagonia', 0.60, 45, 'YEAR-ROUND', 'CLOTHING', 'Base layer thermal shirt'),
(9, 'Deuter', 2.25, 20, 'SUMMER', 'STORAGE', 'Daypack with hydration system'),
(10, 'Thermarest', 1.80, 90, 'WINTER', 'SLEEPSYSTEM', 'Inflatable sleeping pad');


INSERT INTO TRAIL_HEAD (TrailHeadName, BaseElevation, SeasonalAccess, ParkingCapacity, HasRestroom, AccessFee)
values
('Garden TrailHead', 1500, 'YEAR_ROUND', 20, TRUE, 5.00),
('AMR (Ausable Club) TrailHead', 1200, 'PERMIT_REQUIRED', NULL, FALSE, NULL),
('Adirondack Loj', 2150, 'YEAR_ROUND', 25, TRUE, 10.00),
('Santanoni', 1700, 'YEAR_ROUND', 15, FALSE, 7.50),
('Upper Works TrailHead', 1800, 'CLOSED_FOR_HUNTING_SEASON', 50, TRUE, NULL),
('Cascade Mountain TrailHead', 2150, 'SUMMER_ONLY', 40, TRUE, 8.00);

INSERT INTO TRAIL (TrailID, TrailName, TrailMarkerColor, HAZARDS, Popularity, DifficultyLevel) 
values
(1, 'Van Hoevenberg Trail', 'RED', 'Mudd and Boggs', 'HIGH_TRAFFIC', 'MODERATE'),
(2, 'Algonquin Peak Trail', 'BLUE', 'Steep sections', 'HIGH_TRAFFIC', 'HARD'),
(3, NULL, 'UNMARKED', 'Wildlife', 'LOW_TRAFFIC', 'HARD'),
(4, 'Pyramid Peak Trail', 'YELLOW', NULL, 'LOW_TRAFFIC', 'EASY'),
(5, 'Great Range Trail', 'RED', 'Slippery rocks', 'MODERATE_TRAFFIC', 'HARD'),
(6, 'Seward Range Trail', 'BLUE', 'Ice during winter', 'HIGH_TRAFFIC', 'HARD');


INSERT INTO TRAIL_HEAD_ACCESSIBLE_TRAILS (TrailHeadName, TrailID)
VALUES
('Adirondack Loj', 1),  
('Adirondack Loj', 2),
('Adirondack Loj', 4),  
('Garden TrailHead', 3),  
('Upper Works TrailHead', 4),  
('AMR (Ausable Club) TrailHead', 5),  
('AMR (Ausable Club) TrailHead', 6);  


INSERT INTO MOUNTAIN (MountainName, Height, SubRange, PeakType, ElevationGain, FLORA, DifficultyLevel)
values
('Mount Marcy', 5344, 'Great Range', 'BALD', 3000, 'Fir', 'HARD'),
('Algonquin', 5114, 'MacIntyre Range','BALD', 2900, 'Spruce', 'HARD'),
('Haystack', 4960, 'Great Range', 'BALD', 2800, 'Pine', 'HARD'),
('Skylight', 4926, 'Great Range', 'ROCKY', 2700, 'Fir', 'MODERATE'),
('Whiteface', 4867, 'Northern Peaks', 'BALD', 3200, 'Birch', 'MODERATE'),
('Dix', 4857, 'Dix Range',  'RIDGE', 3100, 'Spruce', 'HARD'),
('Gray', 4840, 'Great Range',  'WOODED', 2500, 'Oak', 'MODERATE'),
('Iroquois', 4840, 'MacIntyre Range',  'ROCKY', 2600, 'Fir', 'HARD'),
('Basin', 4827, 'Great Range',  'BALD', 2400, 'Pine', 'HARD'),
('Gothics', 4736, 'Great Range',  'BALD', 2400, 'Pine', 'HARD'),
('Colden', 4714, NULL,  'BALD', 2400, 'Pine', 'HARD'),
('Giant', 4627, 'Giant Mountain Wilderness',  'ROCKY', 2300, 'Birch', 'MODERATE'),
('Nippletop', 4620, 'Eastern Peaks',  'BALD', 2400, 'Pine', 'HARD'),
('Santanoni', 4607, 'Santanoni Range',  'BALD', 2400, 'Pine', 'HARD'),
('RedField', 4606, NULL,  'BALD', 2400, 'Pine', 'HARD'),
('Wright Peak', 4587, 'MacIntyre Range',  'BALD', 2700, 'Birch', 'MODERATE'),
('Saddleback', 4515, 'Great Range', 'RIDGE', 2700, 'Fir', 'MODERATE'),
('Panther', 4442, 'Santanoni Range', 'WOODED', 2900, 'Maple', 'HARD'),
('Tabletop', 4427, NULL,  'WOODED', 2000, 'Pine', 'MODERATE'),
('Rocky Peak Ridge', 4420, 'Giant Mountain Wilderness', 'BALD', 3100, 'Spruce', 'HARD'),
('Macomb', 4405, 'Dix Range',  'ROCKY', 2700, 'Fir', 'MODERATE'),
('Armstrong', 4400, 'Great Range', 'RIDGE', 2600, 'Spruce', 'MODERATE'),
('Hough', 4400, 'Dix Range',  'WOODED', 2500, 'Maple', 'MODERATE'),
('Seward', 4361, 'Seward Range',  'RIDGE', 2200, 'Maple', 'MODERATE'),
('Marshall', 4360, 'MacIntyre Range',  'RIDGE', 2200, 'Maple', 'MODERATE'),
('Allen', 4340, 'Western High Peaks',  'WOODED', 2200, 'Fir', 'HARD'),
('Big Slide', 4240, NULL,  'RIDGE', 2200, 'Maple', 'MODERATE'),
('Esther', 4240, 'Northern Peaks',  'WOODED', 2000, 'Maple', 'MODERATE'),
('Upper Wolf Jaw', 4185, 'Great Range',  'WOODED', 2000, 'Maple', 'MODERATE'),
('Lower Wolf Jaw', 4175, 'Great Range',  'WOODED', 2000, 'Maple', 'MODERATE'),
('Street', 4180, NULL,  'WOODED', 2300, 'Maple', 'MODERATE'),
('Phelps', 4161, NULL,  'RIDGE', 2100, 'Fir', 'MODERATE'),
('Donaldson', 4140, 'Seward Range',  'RIDGE', 2500, 'Spruce', 'MODERATE'),
('Seymour', 4120, 'Seward Range',  'WOODED', 2400, 'Fir', 'HARD'),
('Sawteeth', 4100, NULL,  'WOODED', 2100, 'Oak', 'MODERATE'),
('Cascade', 4098, NULL,  'BALD', 2000, 'Spruce', 'EASY'),
('South Dix', 4060, 'Dix Range',  'RIDGE', 2400, 'Spruce', 'MODERATE'),
('Porter', 4084, NULL,  'RIDGE', 1900, 'Fir', 'EASY'),
('Colvin', 4057, 'Eastern Peaks',  'WOODED', 1800, 'Pine', 'MODERATE'),
('Emmons', 4040, 'Seward Range',  'RIDGE', 2300, 'Birch', 'MODERATE'),
('Dial', 4020, 'Eastern Peaks',  'RIDGE', 1600, 'Oak', 'MODERATE'),
('GracePeak', 4012, 'Dix Range',  'RIDGE', 1600, 'Oak', 'MODERATE'),
('Blake Peak', 3960, 'Eastern Peaks',  'WOODED', 1700, 'Maple', 'HARD'),
('Cliff', 3960, NULL,  'WOODED', 2400, 'Oak', 'HARD'),
('Nye', 3895, NULL,  'WOODED', 2100, 'Pine', 'EASY'),
('Couchsachraga', 3820, 'Santanoni Range',  'WOODED', 2000, 'Oak', 'HARD');


INSERT INTO HIKER_GEAR_USE (LogID, GearID)
VALUES
(1, 2),  
(1, 5),  
(2, 3),  
(2, 6),  
(3, 1),  
(4, 4),  
(5, 2),  
(6, 3);  



INSERT INTO HIKE_LOG_MOUNTAIN (LogID, MountainName, TimeToSummit)
values
(1, 'Wright Peak', '05:45:00'),  
(1, 'Algonquin', '06:30:00'),  
(1, 'Iroquois', '07:15:00'),  
(2, 'Haystack', '06:20:00'),  
(3, 'Lower Wolf Jaw', '04:50:00'),  
(3, 'Upper Wolf Jaw', '05:30:00'), 
(4, 'Upper Wolf Jaw', '07:20:00');



INSERT INTO RANGER_PATROL_LOG (PatrolLogID, RangerID, PatrolDate, RescueOccured, NOTES)
values
(1, 1, '2020-02-01', FALSE, 'Routine patrol, no issues'),
(2, 1, '2022-03-02', TRUE, 'Assisted injured hiker on trail'),
(3, 4, '2022-05-14', FALSE, 'Checked trail conditions'),
(4, 3, '2023-06-04', TRUE, 'Cleared debris from trail, And I found a lost baby! what the heck!'),
(5, 1, '2024-08-05', TRUE, 'Rescued stranded hiker in storm'),
(6, 6, '2024-10-26', FALSE, 'Monitored wildlife activity'),
(7, 6, '2024-10-30', TRUE, 'Rescued the vice president of the united states'),
(8, 1, '2024-11-17', TRUE, 'I found a another baby in the trails! what is this madness!');



INSERT INTO RESCUE_DETAILS (PatrolLogID, HikerID, RescueTime)
values

(2, 3, '13:45:00'),
(4, 3, '10:10:10'),
(5, 3, '15:30:00'),
(7, 7, '14:20:00'),
(8, 10, '12:15:00');











