# Perform analysis of measured half value layers as a function of kV
#
# Read the table of HVL as a function of kV. Each column contains the measured HVL at that kV
hvl1 <- read.table("HVL_1.csv",header=TRUE,sep=",")

# Read the table of kV vs HVL
hvl2 <- read.table("HVL_2.csv",header=TRUE,sep=",")

# Read the table of measured HVL vs HVL reported by the Barracuda
hvl_meas_meter <- read.table("HVLMeasMeter.csv",header=TRUE,sep=",")

# Plot hvl2 data
attach(hvl2)
plot(kV,HVL)
abline(lm(HVL~kV))
title("kV vs HVL")
detach(hvl2)

# get a linear fit to the kV/HVL data
hvl_fit <- lm(hvl2$HVL ~ hvl2$kV)