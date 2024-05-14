SELECT TOP (1000) [ID]
      ,[Energy]
      ,[CoordX]
      ,[CoordY]
      ,[CoordZ]
      ,[DipoleMoment]
      ,[PolarizabilityX]
      ,[PolarizabilityY]
      ,[PolarizabilityZ]
      ,[EnergyHOMO]
      ,[EnergyLUMO]
      ,[EnergyGap]
      ,[ZeroPointVibration]
      ,[InternalEnergy]
      ,[FreeEnergy]
  FROM [chemical thermodynamic and polarizability table].[dbo].[Chemical]


--select everything
select *
from [chemical thermodynamic and polarizability table].[dbo].[Chemical]

--selecting, groupby and orderby
select Avg(DipoleMoment) as Average_Dipole_Moment_Created_By_Particles, CoordX as coordinate_X, CoordY as coordinate_Y, CoordZ as coordinate_Z, PolarizabilityX, PolarizabilityY, PolarizabilityZ
from [chemical thermodynamic and polarizability table].[dbo].[Chemical]
group by CoordX, CoordY, CoordZ, PolarizabilityX, PolarizabilityY, PolarizabilityZ
HAVING Avg(DipoleMoment) > 13
order by Avg(DipoleMoment) DESC
--group by assings the column in order as stated and to not show any error, you must
--input in the select method

--oder by arranges the row values in order

--having by clause steps
select Avg(DipoleMoment) as Average_Dipole_Moment_Created_By_Particles, CoordX as coordinate_X, CoordY as coordinate_Y, CoordZ as coordinate_Z, PolarizabilityX, PolarizabilityY, PolarizabilityZ
from [chemical thermodynamic and polarizability table].[dbo].[Chemical]
group by CoordX, CoordY, CoordZ, PolarizabilityX, PolarizabilityY, PolarizabilityZ
HAVING Avg(DipoleMoment) > 13
order by Avg(DipoleMoment) DESC

--desc ordering means strating with the highest value followed by lowest