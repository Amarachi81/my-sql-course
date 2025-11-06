SELECT 
   ps. PatientId
    ,ps.Hospital
    ,ps.Ward
    ,ps.AdmittedDate 
    ,ps.DischargeDate
    ,dateadd (week, -2, ps.AdmittedDate) AS reminderDate
    ,DATEDIFF(DAY, ps.AdmittedDate, ps.DischargeDate) +1 AS Daysinhospital
FROM PatientStay ps
WHERE ps.hospital IN ('kingston', 'pruh')
ORDER BY
    ps.PatientId DESC
-- AdmittedDate DESC 
SELECT * FROM PatientStay
SELECT * FROM DimHospitalbad

SELECT
    p.PatientId
    ,p.AdmittedDate
    ,p.DischargeDate
    ,h.HospitalType
    ,p.hospital
    ,h.Hospital
FROM PatientStay p right JOIN DimHospitalBad h ON p.Hospital = h.Hospital
    

