Alter Procedure UpdateEmployeeInfo
@FirstName nvarchar='55',
@LastName nvarchar='55',
@Gender bit=0,
@HolidayDay DateTime =GetDate,
@EmployeeID int=55,
@LeaveBalance int=55,
@EmailAddress nvarchar='55'

AS 
Begin 
update EmployeePlanning
Set FirstName=Case when  @FirstName <> '55' then @FirstName End,
LastName=Case when  @LastName <> '55' then @LastName End,
EmployeeID=Case when  @EmployeeID <> 55 then @EmployeeID End,
EmailAddress=Case when  @EmailAddress <> '55' then @EmailAddress End,
HolidayDay=Case when  @HolidayDay <> GETDATE() then @HolidayDay Else GETDATE() End,
Gender=Case when  @Gender <> 0 then @Gender Else 0 End
from EmployeePlanning 
where employeeid=@EmployeeID
End
