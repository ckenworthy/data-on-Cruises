# Load the appropriate library

library(rcompanion)

head(Copy_of_cruise_ship)

# Look to see what all the distributions are

plotNormalHistogram(Copy_of_cruise_ship$YearBlt)
plotNormalHistogram(Copy_of_cruise_ship$Tonnage)
plotNormalHistogram(Copy_of_cruise_ship$passngrs)
plotNormalHistogram(Copy_of_cruise_ship$Length)
plotNormalHistogram(Copy_of_cruise_ship$Cabins)
plotNormalHistogram(Copy_of_cruise_ship$Crew)
plotNormalHistogram(Copy_of_cruise_ship$PassSpcR)
plotNormalHistogram(Copy_of_cruise_ship$outcab)

# Transform Positively Skewed Variables
Copy_of_cruise_ship$TonnageSQRT <- sqrt(Copy_of_cruise_ship$Tonnage)
Copy_of_cruise_shipp$passngrsSQRT <- sqrt(Copy_of_cruise_ship$passngrs)
Copy_of_cruise_ship$CabinsSQRT <- sqrt(Copy_of_cruise_ship$Cabins)
Copy_of_cruise_ship$CrewSQRT <- sqrt(Copy_of_cruise_ship$Crew)
Copy_of_cruise_ship$PassSpcRSQRT <- sqrtCopy_of_cruise_ship$PassSpcR)
Copy_of_cruise_ship$outcabSQRT <- sqrt(Copy_of_cruise_ship$outcab)
# Transform Negatively Skewed Variables

Copy_of_cruise_ship$YearBltSQ <- Copy_of_cruise_ship$YearBlt * Copy_of_cruise_ship$YearBlt
Copy_of_cruise_ship$LengthSQ <-Copy_of_cruise_shipp$Length * Copy_of_cruise_ship$Length

# See if that made them normal

plotNormalHistogram(Copy_of_cruise_ship$YearBltSQ)
plotNormalHistogram(Copy_of_cruise_ship$LengthSQ)

# Length looks ok, but YaerBlt could use additional transformation

Copy_of_cruise_ship$YearBltCUBE <- Copy_of_cruise_ship$YearBlt ^3

plotNormalHistogram(Copy_of_cruise_ship$YearBltCUBE)
