Alter Procedure GetEmployeebyID
@employeeid bigint =3
AS
select FirstName,LastName,Gender,HolidayDay,EmployeeID,LeaveBalance,EmailAddress from EmployeePlanning where EmployeeID=@employeeid

