d <- read.table("RETA2001.DAT",sep="\n")
d <- as.character(d[,1])
nchar(d[4])

dp <- data.frame(
 Master = substr(d,1,1),
 State = substr(d,2,3),
 Agency = substr(d,4,10),
 Group = substr(d,11,12),
 Region = substr(d,13,13),
 Year = substr(d,14,15),
 Sequence.Number = substr(d,16,20),
 Juvenile.Age = substr(d,21,22),
 Core.City = substr(d,23,23),
 Covered.by = substr(d,24,30),
 CB.Group = substr(d,31,31),
 LastUpdate = substr(d,32,37),
 Field.Office = substr(d,38,41),
 Months.Reported = substr(d,42,43),
 Agency.Count = substr(d,44,44),
 Population = substr(d,45,53),
 County = substr(d,54,56),
 MSA =  substr(d,57,59),
 Group2 = substr(d,60,74),
 Group3 = substr(d,75,89),
 PopCen1 = substr(d,90,98),
 PopCen2 = substr(d,99,107),
 PopCen3 = substr(d,108,116),
 PopSource = substr(d,117,117),
 FollowUp = substr(d,118,118),
 Special.MailGroup = substr(d,119,119),
 Special.MailAddress = substr(d,120,120),
 Agency.Name = substr(d,121,144),
 Agency.State.Name = substr(d,145,150),
 Mail.1L = substr(d,151,180),
 Mail.2L = substr(d,181,210),
 Mail.3L = substr(d,211,240),
 Mail.4L = substr(d,241,270),
 Zipcode = substr(d,271,275),
 OldPop = substr(d,276,276)
)


Jan.data = data.frame(
  Month.Include = substr(d,306,307),
  Last.Update = substr(d,308,313),
  Card.Type.0 = substr(d,314,314),
  Card.Type.1 = substr(d,315,315),
  Card.Type.2 = substr(d,316,316),
  Card.Type.3 = substr(d,317,317),
  Card.Type.4 = substr(d,318,318),
  Card.Type.0.PT = substr(d,319,319),
  Card.Type.1.PT = substr(d,320,320),
  Card.Type.2.PT = substr(d,321,321),
  Card.Type.3.PT = substr(d,322,322)
)


crimes <- c("Number.Murder","Number.Manslaughter","Total.Rape","Total.Rape.Force",
"Rape.Attempted","Total.Robery","Number.Robbery.Gun","Number.Robbery.Knife",
"Number.Robbery.Other","Strong.Arm.Robbery","Total.Assault","Assault.Gun","Assault.Knife",
"Assault.Other","Assault.Hands","Assault.Simple","Total.Burglary",
"Burglary.Forced","Burglary.NoForce","Burglary.Attempt","Total.Larceny",
"Total.MotorTheft","Auto.Theft","TruckBus.Theft","Vehicle.Theft.Other",
"Total.All","Larceny.le.50","Blank")
start.index = 323

create.Card.Crime.Totals <- function(data,crime.names,start.index){
crimes.index.start = start.index+ (0:(length(crimes)-1))*5
crimes.index.end = crimes.index.start+4

#dcrimes = data.frame(
#  Number.Murder1 =  substr(d,start.index,start.index+4)
#)
for(i in 1:length(crimes)){
  a = as.numeric(substr(d,crimes.index.start[i],crimes.index.end[i]))
  dcrimes = cbind(NULL, a)
  colnames(dcrimes)[ncol(dcrimes)] = crimes[i]
}
return(dcrimes)
}

out = create.Card.Crime.Totals(d,crimes,463,0)

Jan.out <- 


