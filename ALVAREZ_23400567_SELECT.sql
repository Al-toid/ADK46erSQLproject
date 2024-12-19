
SELECT H.HikerID,H.FName,H.LName,

COUNT(DISTINCT HL_M.MountainName) AS CompletedPeaks

FROM HIKER H, HIKE_LOG  HL, HIKE_LOG_MOUNTAIN HL_M

WHERE H.HikerID = HL.HikerID AND HL.LogID = HL_M.LogID

GROUP BY H.HikerID, H.FName, H.LName

ORDER BY CompletedPeaks DESC;



SELECT PR.RangerID, PR.FName, PR.LName,RPL.Notes, MIN(RPL.PatrolDate) AS LastPatrolDateRescue

FROM PARK_RANGERS PR, RANGER_PATROL_LOG RPL, RESCUE_DETAILS RD

WHERE PR.RangerID = RPL.RangerID
  AND RPL.PatrolLogID = RD.PatrolLogID

GROUP BY PR.RangerID, PR.FName, PR.LName, RPL.Notes

HAVING MIN(RPL.PatrolDate) BETWEEN '2023-01-01' AND '2023-12-31';



SELECT TH.TrailHeadName

FROM TRAIL_HEAD TH

WHERE NOT EXISTS (

    SELECT *

    FROM TRAIL_HEAD_ACCESSIBLE_TRAILS THA, TRAIL T

    WHERE TH.TrailHeadName = THA.TrailHeadName
      AND THA.TrailID = T.TrailID
      AND T.DifficultyLevel = 'HARD'

);



SELECT M.MountainName, M.Height

FROM MOUNTAIN AS M, HIKE_LOG_MOUNTAIN AS HL_M

WHERE M.MountainName = HL_M.MountainName 
      AND M.DifficultyLevel = 'HARD'
      AND M.MountainName LIKE '%S%'
      AND M.Height > 4800;




SELECT G.GearType, G.WeightLBS, G.GearDescription

FROM GEAR G, HIKER_GEAR_USE HGU, ADK46ER A

WHERE G.GearID = HGU.GearID

  AND HGU.LogID IN (
      SELECT HL.LogID
      FROM HIKE_LOG HL
      WHERE HL.HikerID = A.HikerID
  );


SELECT H.HikerID, M.MountainName, MAX(M.Height) AS tallestHeight

FROM HIKER H, HIKE_LOG HL, HIKE_LOG_MOUNTAIN HLM, MOUNTAIN M

WHERE H.HikerID = HL.HikerID
  AND HL.LogID = HLM.LogID
  AND HLM.MountainName = M.MountainName

GROUP BY H.HikerID, M.MountainName

LIMIT 1;




SELECT H.HikerID, AVG(M.Height) AS AverageHeight

FROM HIKER H, HIKE_LOG HL, HIKE_LOG_MOUNTAIN HLM, MOUNTAIN M

WHERE H.HikerID = HL.HikerID
  AND HL.LogID = HLM.LogID
  AND HLM.MountainName = M.MountainName

GROUP BY H.HikerID;




SELECT H.FName , PR.FName , PR.LName

FROM HIKER H, RESCUE_DETAILS RD, RANGER_PATROL_LOG RPL, PARK_RANGERS PR

WHERE H.HikerID = RD.HikerID
  AND RD.PatrolLogID = RPL.PatrolLogID
  AND RPL.RangerID = PR.RangerID;



SELECT TH.TrailHeadName, COUNT(*) AS TrailCount

FROM TRAIL_HEAD TH, TRAIL_HEAD_ACCESSIBLE_TRAILS THA

WHERE TH.TrailHeadName = THA.TrailHeadName

GROUP BY TH.TrailHeadName
ORDER BY TrailCount DESC

LIMIT 1;



SELECT M.MountainName, COUNT(*) AS TimesHiked

FROM HIKE_LOG HL, HIKE_LOG_MOUNTAIN HLM, MOUNTAIN M

WHERE HL.LogID = HLM.LogID
  AND HLM.MountainName = M.MountainName

GROUP BY M.MountainName
ORDER BY TimesHiked DESC
LIMIT 1;
