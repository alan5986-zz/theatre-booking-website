-- create zone table
CREATE TABLE Zone (
	Name VARCHAR(12),
	PriceMultiplier FLOAT NOT NULL,
	PRIMARY KEY (Name)
);

-- insert zone values
INSERT INTO Zone VALUES ('rear stalls', 1.00);
INSERT INTO Zone VALUES ('front stalls', 1.50);
INSERT INTO Zone VALUES ('balcony', 1.80);
INSERT INTO Zone VALUES ('box 1', 5.00);
INSERT INTO Zone VALUES ('box 2', 5.00);
INSERT INTO Zone VALUES ('box 3', 4.00);
INSERT INTO Zone VALUES ('box 4', 4.00);

-- create seat table
CREATE TABLE Seat (
	RowNumber CHAR(3),
	Zone VARCHAR(12) NOT NULL,
	PRIMARY KEY (RowNumber),
	FOREIGN KEY (Zone) REFERENCES Zone (Name)
);

-- insert seat values
INSERT INTO Seat VALUES ('A01', 'rear stalls');
INSERT INTO Seat VALUES ('A02', 'rear stalls');
INSERT INTO Seat VALUES ('A03', 'rear stalls');
INSERT INTO Seat VALUES ('A04', 'rear stalls');
INSERT INTO Seat VALUES ('A05', 'rear stalls');
INSERT INTO Seat VALUES ('A06', 'rear stalls');
INSERT INTO Seat VALUES ('A07', 'rear stalls');
INSERT INTO Seat VALUES ('A08', 'rear stalls');
INSERT INTO Seat VALUES ('A09', 'rear stalls');
INSERT INTO Seat VALUES ('A10', 'rear stalls');
INSERT INTO Seat VALUES ('A11', 'rear stalls');
INSERT INTO Seat VALUES ('A12', 'rear stalls');
INSERT INTO Seat VALUES ('A13', 'rear stalls');
INSERT INTO Seat VALUES ('A14', 'rear stalls');
INSERT INTO Seat VALUES ('A15', 'rear stalls');
INSERT INTO Seat VALUES ('A16', 'rear stalls');
INSERT INTO Seat VALUES ('A17', 'rear stalls');
INSERT INTO Seat VALUES ('A18', 'rear stalls');
INSERT INTO Seat VALUES ('A19', 'rear stalls');
INSERT INTO Seat VALUES ('A20', 'rear stalls');
INSERT INTO Seat VALUES ('B01', 'rear stalls');
INSERT INTO Seat VALUES ('B02', 'rear stalls');
INSERT INTO Seat VALUES ('B03', 'rear stalls');
INSERT INTO Seat VALUES ('B04', 'rear stalls');
INSERT INTO Seat VALUES ('B05', 'rear stalls');
INSERT INTO Seat VALUES ('B06', 'rear stalls');
INSERT INTO Seat VALUES ('B07', 'rear stalls');
INSERT INTO Seat VALUES ('B08', 'rear stalls');
INSERT INTO Seat VALUES ('B09', 'rear stalls');
INSERT INTO Seat VALUES ('B10', 'rear stalls');
INSERT INTO Seat VALUES ('B11', 'rear stalls');
INSERT INTO Seat VALUES ('B12', 'rear stalls');
INSERT INTO Seat VALUES ('B13', 'rear stalls');
INSERT INTO Seat VALUES ('B14', 'rear stalls');
INSERT INTO Seat VALUES ('B15', 'rear stalls');
INSERT INTO Seat VALUES ('B16', 'rear stalls');
INSERT INTO Seat VALUES ('B17', 'rear stalls');
INSERT INTO Seat VALUES ('B18', 'rear stalls');
INSERT INTO Seat VALUES ('B19', 'rear stalls');
INSERT INTO Seat VALUES ('B20', 'rear stalls');
INSERT INTO Seat VALUES ('C01', 'rear stalls');
INSERT INTO Seat VALUES ('C02', 'rear stalls');
INSERT INTO Seat VALUES ('C03', 'rear stalls');
INSERT INTO Seat VALUES ('C04', 'rear stalls');
INSERT INTO Seat VALUES ('C05', 'rear stalls');
INSERT INTO Seat VALUES ('C06', 'rear stalls');
INSERT INTO Seat VALUES ('C07', 'rear stalls');
INSERT INTO Seat VALUES ('C08', 'rear stalls');
INSERT INTO Seat VALUES ('C09', 'rear stalls');
INSERT INTO Seat VALUES ('C10', 'rear stalls');
INSERT INTO Seat VALUES ('C11', 'rear stalls');
INSERT INTO Seat VALUES ('C12', 'rear stalls');
INSERT INTO Seat VALUES ('C13', 'rear stalls');
INSERT INTO Seat VALUES ('C14', 'rear stalls');
INSERT INTO Seat VALUES ('C15', 'rear stalls');
INSERT INTO Seat VALUES ('C16', 'rear stalls');
INSERT INTO Seat VALUES ('C17', 'rear stalls');
INSERT INTO Seat VALUES ('C18', 'rear stalls');
INSERT INTO Seat VALUES ('C19', 'rear stalls');
INSERT INTO Seat VALUES ('C20', 'rear stalls');
INSERT INTO Seat VALUES ('D01', 'rear stalls');
INSERT INTO Seat VALUES ('D02', 'rear stalls');
INSERT INTO Seat VALUES ('D03', 'rear stalls');
INSERT INTO Seat VALUES ('D04', 'rear stalls');
INSERT INTO Seat VALUES ('D05', 'rear stalls');
INSERT INTO Seat VALUES ('D06', 'rear stalls');
INSERT INTO Seat VALUES ('D07', 'rear stalls');
INSERT INTO Seat VALUES ('D08', 'rear stalls');
INSERT INTO Seat VALUES ('D09', 'rear stalls');
INSERT INTO Seat VALUES ('D10', 'rear stalls');
INSERT INTO Seat VALUES ('D11', 'rear stalls');
INSERT INTO Seat VALUES ('D12', 'rear stalls');
INSERT INTO Seat VALUES ('D13', 'rear stalls');
INSERT INTO Seat VALUES ('D14', 'rear stalls');
INSERT INTO Seat VALUES ('D15', 'rear stalls');
INSERT INTO Seat VALUES ('D16', 'rear stalls');
INSERT INTO Seat VALUES ('D17', 'rear stalls');
INSERT INTO Seat VALUES ('D18', 'rear stalls');
INSERT INTO Seat VALUES ('D19', 'rear stalls');
INSERT INTO Seat VALUES ('D20', 'rear stalls');
INSERT INTO Seat VALUES ('E01', 'rear stalls');
INSERT INTO Seat VALUES ('E02', 'rear stalls');
INSERT INTO Seat VALUES ('E03', 'rear stalls');
INSERT INTO Seat VALUES ('E04', 'rear stalls');
INSERT INTO Seat VALUES ('E05', 'rear stalls');
INSERT INTO Seat VALUES ('E06', 'rear stalls');
INSERT INTO Seat VALUES ('E07', 'rear stalls');
INSERT INTO Seat VALUES ('E08', 'rear stalls');
INSERT INTO Seat VALUES ('E09', 'rear stalls');
INSERT INTO Seat VALUES ('E10', 'rear stalls');
INSERT INTO Seat VALUES ('E11', 'rear stalls');
INSERT INTO Seat VALUES ('E12', 'rear stalls');
INSERT INTO Seat VALUES ('E13', 'rear stalls');
INSERT INTO Seat VALUES ('E14', 'rear stalls');
INSERT INTO Seat VALUES ('E15', 'rear stalls');
INSERT INTO Seat VALUES ('E16', 'rear stalls');
INSERT INTO Seat VALUES ('E17', 'rear stalls');
INSERT INTO Seat VALUES ('E18', 'rear stalls');
INSERT INTO Seat VALUES ('E19', 'rear stalls');
INSERT INTO Seat VALUES ('E20', 'rear stalls');
INSERT INTO Seat VALUES ('F01', 'rear stalls');
INSERT INTO Seat VALUES ('F02', 'rear stalls');
INSERT INTO Seat VALUES ('F03', 'rear stalls');
INSERT INTO Seat VALUES ('F04', 'rear stalls');
INSERT INTO Seat VALUES ('F05', 'rear stalls');
INSERT INTO Seat VALUES ('F06', 'rear stalls');
INSERT INTO Seat VALUES ('F07', 'rear stalls');
INSERT INTO Seat VALUES ('F08', 'rear stalls');
INSERT INTO Seat VALUES ('F09', 'rear stalls');
INSERT INTO Seat VALUES ('F10', 'rear stalls');
INSERT INTO Seat VALUES ('F11', 'rear stalls');
INSERT INTO Seat VALUES ('F12', 'rear stalls');
INSERT INTO Seat VALUES ('F13', 'rear stalls');
INSERT INTO Seat VALUES ('F14', 'rear stalls');
INSERT INTO Seat VALUES ('F15', 'rear stalls');
INSERT INTO Seat VALUES ('F16', 'rear stalls');
INSERT INTO Seat VALUES ('F17', 'rear stalls');
INSERT INTO Seat VALUES ('F18', 'rear stalls');
INSERT INTO Seat VALUES ('F19', 'rear stalls');
INSERT INTO Seat VALUES ('F20', 'rear stalls');
INSERT INTO Seat VALUES ('G01', 'rear stalls');
INSERT INTO Seat VALUES ('G02', 'rear stalls');
INSERT INTO Seat VALUES ('G03', 'rear stalls');
INSERT INTO Seat VALUES ('G04', 'rear stalls');
INSERT INTO Seat VALUES ('G05', 'rear stalls');
INSERT INTO Seat VALUES ('G06', 'rear stalls');
INSERT INTO Seat VALUES ('G07', 'rear stalls');
INSERT INTO Seat VALUES ('G08', 'rear stalls');
INSERT INTO Seat VALUES ('G09', 'rear stalls');
INSERT INTO Seat VALUES ('G10', 'rear stalls');
INSERT INTO Seat VALUES ('G11', 'rear stalls');
INSERT INTO Seat VALUES ('G12', 'rear stalls');
INSERT INTO Seat VALUES ('G13', 'rear stalls');
INSERT INTO Seat VALUES ('G14', 'rear stalls');
INSERT INTO Seat VALUES ('G15', 'rear stalls');
INSERT INTO Seat VALUES ('G16', 'rear stalls');
INSERT INTO Seat VALUES ('G17', 'rear stalls');
INSERT INTO Seat VALUES ('G18', 'rear stalls');
INSERT INTO Seat VALUES ('G19', 'rear stalls');
INSERT INTO Seat VALUES ('G20', 'rear stalls');
INSERT INTO Seat VALUES ('H01', 'rear stalls');
INSERT INTO Seat VALUES ('H02', 'rear stalls');
INSERT INTO Seat VALUES ('H03', 'rear stalls');
INSERT INTO Seat VALUES ('H04', 'rear stalls');
INSERT INTO Seat VALUES ('H05', 'rear stalls');
INSERT INTO Seat VALUES ('H06', 'rear stalls');
INSERT INTO Seat VALUES ('H07', 'rear stalls');
INSERT INTO Seat VALUES ('H08', 'rear stalls');
INSERT INTO Seat VALUES ('H09', 'rear stalls');
INSERT INTO Seat VALUES ('H10', 'rear stalls');
INSERT INTO Seat VALUES ('H11', 'rear stalls');
INSERT INTO Seat VALUES ('H12', 'rear stalls');
INSERT INTO Seat VALUES ('H13', 'rear stalls');
INSERT INTO Seat VALUES ('H14', 'rear stalls');
INSERT INTO Seat VALUES ('H15', 'rear stalls');
INSERT INTO Seat VALUES ('H16', 'rear stalls');
INSERT INTO Seat VALUES ('H17', 'rear stalls');
INSERT INTO Seat VALUES ('H18', 'rear stalls');
INSERT INTO Seat VALUES ('H19', 'rear stalls');
INSERT INTO Seat VALUES ('H20', 'rear stalls');
INSERT INTO Seat VALUES ('I01', 'rear stalls');
INSERT INTO Seat VALUES ('I02', 'rear stalls');
INSERT INTO Seat VALUES ('I03', 'rear stalls');
INSERT INTO Seat VALUES ('I04', 'rear stalls');
INSERT INTO Seat VALUES ('I05', 'rear stalls');
INSERT INTO Seat VALUES ('I06', 'rear stalls');
INSERT INTO Seat VALUES ('I07', 'rear stalls');
INSERT INTO Seat VALUES ('I08', 'rear stalls');
INSERT INTO Seat VALUES ('I09', 'rear stalls');
INSERT INTO Seat VALUES ('I10', 'rear stalls');
INSERT INTO Seat VALUES ('I11', 'rear stalls');
INSERT INTO Seat VALUES ('I12', 'rear stalls');
INSERT INTO Seat VALUES ('I13', 'rear stalls');
INSERT INTO Seat VALUES ('I14', 'rear stalls');
INSERT INTO Seat VALUES ('I15', 'rear stalls');
INSERT INTO Seat VALUES ('I16', 'rear stalls');
INSERT INTO Seat VALUES ('I17', 'rear stalls');
INSERT INTO Seat VALUES ('I18', 'rear stalls');
INSERT INTO Seat VALUES ('I19', 'rear stalls');
INSERT INTO Seat VALUES ('I20', 'rear stalls');
INSERT INTO Seat VALUES ('J01', 'rear stalls');
INSERT INTO Seat VALUES ('J02', 'rear stalls');
INSERT INTO Seat VALUES ('J03', 'rear stalls');
INSERT INTO Seat VALUES ('J04', 'rear stalls');
INSERT INTO Seat VALUES ('J05', 'rear stalls');
INSERT INTO Seat VALUES ('J06', 'rear stalls');
INSERT INTO Seat VALUES ('J07', 'rear stalls');
INSERT INTO Seat VALUES ('J08', 'rear stalls');
INSERT INTO Seat VALUES ('J09', 'rear stalls');
INSERT INTO Seat VALUES ('J10', 'rear stalls');
INSERT INTO Seat VALUES ('J11', 'rear stalls');
INSERT INTO Seat VALUES ('J12', 'rear stalls');
INSERT INTO Seat VALUES ('J13', 'rear stalls');
INSERT INTO Seat VALUES ('J14', 'rear stalls');
INSERT INTO Seat VALUES ('J15', 'rear stalls');
INSERT INTO Seat VALUES ('J16', 'rear stalls');
INSERT INTO Seat VALUES ('J17', 'rear stalls');
INSERT INTO Seat VALUES ('J18', 'rear stalls');
INSERT INTO Seat VALUES ('J19', 'rear stalls');
INSERT INTO Seat VALUES ('J20', 'rear stalls');
INSERT INTO Seat VALUES ('K01', 'front stalls');
INSERT INTO Seat VALUES ('K02', 'front stalls');
INSERT INTO Seat VALUES ('K03', 'front stalls');
INSERT INTO Seat VALUES ('K04', 'front stalls');
INSERT INTO Seat VALUES ('K05', 'front stalls');
INSERT INTO Seat VALUES ('K06', 'front stalls');
INSERT INTO Seat VALUES ('K07', 'front stalls');
INSERT INTO Seat VALUES ('K08', 'front stalls');
INSERT INTO Seat VALUES ('K09', 'front stalls');
INSERT INTO Seat VALUES ('K10', 'front stalls');
INSERT INTO Seat VALUES ('K11', 'front stalls');
INSERT INTO Seat VALUES ('K12', 'front stalls');
INSERT INTO Seat VALUES ('K13', 'front stalls');
INSERT INTO Seat VALUES ('K14', 'front stalls');
INSERT INTO Seat VALUES ('K15', 'front stalls');
INSERT INTO Seat VALUES ('K16', 'front stalls');
INSERT INTO Seat VALUES ('K17', 'front stalls');
INSERT INTO Seat VALUES ('K18', 'front stalls');
INSERT INTO Seat VALUES ('K19', 'front stalls');
INSERT INTO Seat VALUES ('K20', 'front stalls');
INSERT INTO Seat VALUES ('L01', 'front stalls');
INSERT INTO Seat VALUES ('L02', 'front stalls');
INSERT INTO Seat VALUES ('L03', 'front stalls');
INSERT INTO Seat VALUES ('L04', 'front stalls');
INSERT INTO Seat VALUES ('L05', 'front stalls');
INSERT INTO Seat VALUES ('L06', 'front stalls');
INSERT INTO Seat VALUES ('L07', 'front stalls');
INSERT INTO Seat VALUES ('L08', 'front stalls');
INSERT INTO Seat VALUES ('L09', 'front stalls');
INSERT INTO Seat VALUES ('L10', 'front stalls');
INSERT INTO Seat VALUES ('L11', 'front stalls');
INSERT INTO Seat VALUES ('L12', 'front stalls');
INSERT INTO Seat VALUES ('L13', 'front stalls');
INSERT INTO Seat VALUES ('L14', 'front stalls');
INSERT INTO Seat VALUES ('L15', 'front stalls');
INSERT INTO Seat VALUES ('L16', 'front stalls');
INSERT INTO Seat VALUES ('L17', 'front stalls');
INSERT INTO Seat VALUES ('L18', 'front stalls');
INSERT INTO Seat VALUES ('L19', 'front stalls');
INSERT INTO Seat VALUES ('L20', 'front stalls');
INSERT INTO Seat VALUES ('M01', 'front stalls');
INSERT INTO Seat VALUES ('M02', 'front stalls');
INSERT INTO Seat VALUES ('M03', 'front stalls');
INSERT INTO Seat VALUES ('M04', 'front stalls');
INSERT INTO Seat VALUES ('M05', 'front stalls');
INSERT INTO Seat VALUES ('M06', 'front stalls');
INSERT INTO Seat VALUES ('M07', 'front stalls');
INSERT INTO Seat VALUES ('M08', 'front stalls');
INSERT INTO Seat VALUES ('M09', 'front stalls');
INSERT INTO Seat VALUES ('M10', 'front stalls');
INSERT INTO Seat VALUES ('M11', 'front stalls');
INSERT INTO Seat VALUES ('M12', 'front stalls');
INSERT INTO Seat VALUES ('M13', 'front stalls');
INSERT INTO Seat VALUES ('M14', 'front stalls');
INSERT INTO Seat VALUES ('M15', 'front stalls');
INSERT INTO Seat VALUES ('M16', 'front stalls');
INSERT INTO Seat VALUES ('M17', 'front stalls');
INSERT INTO Seat VALUES ('M18', 'front stalls');
INSERT INTO Seat VALUES ('M19', 'front stalls');
INSERT INTO Seat VALUES ('M20', 'front stalls');
INSERT INTO Seat VALUES ('N01', 'front stalls');
INSERT INTO Seat VALUES ('N02', 'front stalls');
INSERT INTO Seat VALUES ('N03', 'front stalls');
INSERT INTO Seat VALUES ('N04', 'front stalls');
INSERT INTO Seat VALUES ('N05', 'front stalls');
INSERT INTO Seat VALUES ('N06', 'front stalls');
INSERT INTO Seat VALUES ('N07', 'front stalls');
INSERT INTO Seat VALUES ('N08', 'front stalls');
INSERT INTO Seat VALUES ('N09', 'front stalls');
INSERT INTO Seat VALUES ('N10', 'front stalls');
INSERT INTO Seat VALUES ('N11', 'front stalls');
INSERT INTO Seat VALUES ('N12', 'front stalls');
INSERT INTO Seat VALUES ('N13', 'front stalls');
INSERT INTO Seat VALUES ('N14', 'front stalls');
INSERT INTO Seat VALUES ('N15', 'front stalls');
INSERT INTO Seat VALUES ('N16', 'front stalls');
INSERT INTO Seat VALUES ('N17', 'front stalls');
INSERT INTO Seat VALUES ('N18', 'front stalls');
INSERT INTO Seat VALUES ('N19', 'front stalls');
INSERT INTO Seat VALUES ('N20', 'front stalls');
INSERT INTO Seat VALUES ('O01', 'front stalls');
INSERT INTO Seat VALUES ('O02', 'front stalls');
INSERT INTO Seat VALUES ('O03', 'front stalls');
INSERT INTO Seat VALUES ('O04', 'front stalls');
INSERT INTO Seat VALUES ('O05', 'front stalls');
INSERT INTO Seat VALUES ('O06', 'front stalls');
INSERT INTO Seat VALUES ('O07', 'front stalls');
INSERT INTO Seat VALUES ('O08', 'front stalls');
INSERT INTO Seat VALUES ('O09', 'front stalls');
INSERT INTO Seat VALUES ('O10', 'front stalls');
INSERT INTO Seat VALUES ('O11', 'front stalls');
INSERT INTO Seat VALUES ('O12', 'front stalls');
INSERT INTO Seat VALUES ('O13', 'front stalls');
INSERT INTO Seat VALUES ('O14', 'front stalls');
INSERT INTO Seat VALUES ('O15', 'front stalls');
INSERT INTO Seat VALUES ('O16', 'front stalls');
INSERT INTO Seat VALUES ('O17', 'front stalls');
INSERT INTO Seat VALUES ('O18', 'front stalls');
INSERT INTO Seat VALUES ('O19', 'front stalls');
INSERT INTO Seat VALUES ('O20', 'front stalls');
INSERT INTO Seat VALUES ('P01', 'front stalls');
INSERT INTO Seat VALUES ('P02', 'front stalls');
INSERT INTO Seat VALUES ('P03', 'front stalls');
INSERT INTO Seat VALUES ('P04', 'front stalls');
INSERT INTO Seat VALUES ('P05', 'front stalls');
INSERT INTO Seat VALUES ('P06', 'front stalls');
INSERT INTO Seat VALUES ('P07', 'front stalls');
INSERT INTO Seat VALUES ('P08', 'front stalls');
INSERT INTO Seat VALUES ('P09', 'front stalls');
INSERT INTO Seat VALUES ('P10', 'front stalls');
INSERT INTO Seat VALUES ('P11', 'front stalls');
INSERT INTO Seat VALUES ('P12', 'front stalls');
INSERT INTO Seat VALUES ('P13', 'front stalls');
INSERT INTO Seat VALUES ('P14', 'front stalls');
INSERT INTO Seat VALUES ('P15', 'front stalls');
INSERT INTO Seat VALUES ('P16', 'front stalls');
INSERT INTO Seat VALUES ('P17', 'front stalls');
INSERT INTO Seat VALUES ('P18', 'front stalls');
INSERT INTO Seat VALUES ('P19', 'front stalls');
INSERT INTO Seat VALUES ('P20', 'front stalls');
INSERT INTO Seat VALUES ('Q01', 'front stalls');
INSERT INTO Seat VALUES ('Q02', 'front stalls');
INSERT INTO Seat VALUES ('Q03', 'front stalls');
INSERT INTO Seat VALUES ('Q04', 'front stalls');
INSERT INTO Seat VALUES ('Q05', 'front stalls');
INSERT INTO Seat VALUES ('Q06', 'front stalls');
INSERT INTO Seat VALUES ('Q07', 'front stalls');
INSERT INTO Seat VALUES ('Q08', 'front stalls');
INSERT INTO Seat VALUES ('Q09', 'front stalls');
INSERT INTO Seat VALUES ('Q10', 'front stalls');
INSERT INTO Seat VALUES ('Q11', 'front stalls');
INSERT INTO Seat VALUES ('Q12', 'front stalls');
INSERT INTO Seat VALUES ('Q13', 'front stalls');
INSERT INTO Seat VALUES ('Q14', 'front stalls');
INSERT INTO Seat VALUES ('Q15', 'front stalls');
INSERT INTO Seat VALUES ('Q16', 'front stalls');
INSERT INTO Seat VALUES ('Q17', 'front stalls');
INSERT INTO Seat VALUES ('Q18', 'front stalls');
INSERT INTO Seat VALUES ('Q19', 'front stalls');
INSERT INTO Seat VALUES ('Q20', 'front stalls');
INSERT INTO Seat VALUES ('R01', 'front stalls');
INSERT INTO Seat VALUES ('R02', 'front stalls');
INSERT INTO Seat VALUES ('R03', 'front stalls');
INSERT INTO Seat VALUES ('R04', 'front stalls');
INSERT INTO Seat VALUES ('R05', 'front stalls');
INSERT INTO Seat VALUES ('R06', 'front stalls');
INSERT INTO Seat VALUES ('R07', 'front stalls');
INSERT INTO Seat VALUES ('R08', 'front stalls');
INSERT INTO Seat VALUES ('R09', 'front stalls');
INSERT INTO Seat VALUES ('R10', 'front stalls');
INSERT INTO Seat VALUES ('R11', 'front stalls');
INSERT INTO Seat VALUES ('R12', 'front stalls');
INSERT INTO Seat VALUES ('R13', 'front stalls');
INSERT INTO Seat VALUES ('R14', 'front stalls');
INSERT INTO Seat VALUES ('R15', 'front stalls');
INSERT INTO Seat VALUES ('R16', 'front stalls');
INSERT INTO Seat VALUES ('R17', 'front stalls');
INSERT INTO Seat VALUES ('R18', 'front stalls');
INSERT INTO Seat VALUES ('R19', 'front stalls');
INSERT INTO Seat VALUES ('R20', 'front stalls');
INSERT INTO Seat VALUES ('S01', 'front stalls');
INSERT INTO Seat VALUES ('S02', 'front stalls');
INSERT INTO Seat VALUES ('S03', 'front stalls');
INSERT INTO Seat VALUES ('S04', 'front stalls');
INSERT INTO Seat VALUES ('S05', 'front stalls');
INSERT INTO Seat VALUES ('S06', 'front stalls');
INSERT INTO Seat VALUES ('S07', 'front stalls');
INSERT INTO Seat VALUES ('S08', 'front stalls');
INSERT INTO Seat VALUES ('S09', 'front stalls');
INSERT INTO Seat VALUES ('S10', 'front stalls');
INSERT INTO Seat VALUES ('S11', 'front stalls');
INSERT INTO Seat VALUES ('S12', 'front stalls');
INSERT INTO Seat VALUES ('S13', 'front stalls');
INSERT INTO Seat VALUES ('S14', 'front stalls');
INSERT INTO Seat VALUES ('S15', 'front stalls');
INSERT INTO Seat VALUES ('S16', 'front stalls');
INSERT INTO Seat VALUES ('S17', 'front stalls');
INSERT INTO Seat VALUES ('S18', 'front stalls');
INSERT INTO Seat VALUES ('S19', 'front stalls');
INSERT INTO Seat VALUES ('S20', 'front stalls');
INSERT INTO Seat VALUES ('T01', 'front stalls');
INSERT INTO Seat VALUES ('T02', 'front stalls');
INSERT INTO Seat VALUES ('T03', 'front stalls');
INSERT INTO Seat VALUES ('T04', 'front stalls');
INSERT INTO Seat VALUES ('T05', 'front stalls');
INSERT INTO Seat VALUES ('T06', 'front stalls');
INSERT INTO Seat VALUES ('T07', 'front stalls');
INSERT INTO Seat VALUES ('T08', 'front stalls');
INSERT INTO Seat VALUES ('T09', 'front stalls');
INSERT INTO Seat VALUES ('T10', 'front stalls');
INSERT INTO Seat VALUES ('T11', 'front stalls');
INSERT INTO Seat VALUES ('T12', 'front stalls');
INSERT INTO Seat VALUES ('T13', 'front stalls');
INSERT INTO Seat VALUES ('T14', 'front stalls');
INSERT INTO Seat VALUES ('T15', 'front stalls');
INSERT INTO Seat VALUES ('T16', 'front stalls');
INSERT INTO Seat VALUES ('T17', 'front stalls');
INSERT INTO Seat VALUES ('T18', 'front stalls');
INSERT INTO Seat VALUES ('T19', 'front stalls');
INSERT INTO Seat VALUES ('T20', 'front stalls');
INSERT INTO Seat VALUES ('U01', 'balcony');
INSERT INTO Seat VALUES ('U02', 'balcony');
INSERT INTO Seat VALUES ('U03', 'balcony');
INSERT INTO Seat VALUES ('U04', 'balcony');
INSERT INTO Seat VALUES ('U05', 'balcony');
INSERT INTO Seat VALUES ('U06', 'balcony');
INSERT INTO Seat VALUES ('U07', 'balcony');
INSERT INTO Seat VALUES ('U08', 'balcony');
INSERT INTO Seat VALUES ('U09', 'balcony');
INSERT INTO Seat VALUES ('U10', 'balcony');
INSERT INTO Seat VALUES ('U11', 'balcony');
INSERT INTO Seat VALUES ('U12', 'balcony');
INSERT INTO Seat VALUES ('U13', 'balcony');
INSERT INTO Seat VALUES ('U14', 'balcony');
INSERT INTO Seat VALUES ('U15', 'balcony');
INSERT INTO Seat VALUES ('U16', 'balcony');
INSERT INTO Seat VALUES ('U17', 'balcony');
INSERT INTO Seat VALUES ('U18', 'balcony');
INSERT INTO Seat VALUES ('U19', 'balcony');
INSERT INTO Seat VALUES ('U20', 'balcony');
INSERT INTO Seat VALUES ('V01', 'balcony');
INSERT INTO Seat VALUES ('V02', 'balcony');
INSERT INTO Seat VALUES ('V03', 'balcony');
INSERT INTO Seat VALUES ('V04', 'balcony');
INSERT INTO Seat VALUES ('V05', 'balcony');
INSERT INTO Seat VALUES ('V06', 'balcony');
INSERT INTO Seat VALUES ('V07', 'balcony');
INSERT INTO Seat VALUES ('V08', 'balcony');
INSERT INTO Seat VALUES ('V09', 'balcony');
INSERT INTO Seat VALUES ('V10', 'balcony');
INSERT INTO Seat VALUES ('V11', 'balcony');
INSERT INTO Seat VALUES ('V12', 'balcony');
INSERT INTO Seat VALUES ('V13', 'balcony');
INSERT INTO Seat VALUES ('V14', 'balcony');
INSERT INTO Seat VALUES ('V15', 'balcony');
INSERT INTO Seat VALUES ('V16', 'balcony');
INSERT INTO Seat VALUES ('V17', 'balcony');
INSERT INTO Seat VALUES ('V18', 'balcony');
INSERT INTO Seat VALUES ('V19', 'balcony');
INSERT INTO Seat VALUES ('V20', 'balcony');
INSERT INTO Seat VALUES ('W01', 'balcony');
INSERT INTO Seat VALUES ('W02', 'balcony');
INSERT INTO Seat VALUES ('W03', 'balcony');
INSERT INTO Seat VALUES ('W04', 'balcony');
INSERT INTO Seat VALUES ('W05', 'balcony');
INSERT INTO Seat VALUES ('W06', 'balcony');
INSERT INTO Seat VALUES ('W07', 'balcony');
INSERT INTO Seat VALUES ('W08', 'balcony');
INSERT INTO Seat VALUES ('W09', 'balcony');
INSERT INTO Seat VALUES ('W10', 'balcony');
INSERT INTO Seat VALUES ('W11', 'balcony');
INSERT INTO Seat VALUES ('W12', 'balcony');
INSERT INTO Seat VALUES ('W13', 'balcony');
INSERT INTO Seat VALUES ('W14', 'balcony');
INSERT INTO Seat VALUES ('W15', 'balcony');
INSERT INTO Seat VALUES ('W16', 'balcony');
INSERT INTO Seat VALUES ('W17', 'balcony');
INSERT INTO Seat VALUES ('W18', 'balcony');
INSERT INTO Seat VALUES ('W19', 'balcony');
INSERT INTO Seat VALUES ('W20', 'balcony');
INSERT INTO Seat VALUES ('X01', 'balcony');
INSERT INTO Seat VALUES ('X02', 'balcony');
INSERT INTO Seat VALUES ('X03', 'balcony');
INSERT INTO Seat VALUES ('X04', 'balcony');
INSERT INTO Seat VALUES ('X05', 'balcony');
INSERT INTO Seat VALUES ('X06', 'balcony');
INSERT INTO Seat VALUES ('X07', 'balcony');
INSERT INTO Seat VALUES ('X08', 'balcony');
INSERT INTO Seat VALUES ('X09', 'balcony');
INSERT INTO Seat VALUES ('X10', 'balcony');
INSERT INTO Seat VALUES ('X11', 'balcony');
INSERT INTO Seat VALUES ('X12', 'balcony');
INSERT INTO Seat VALUES ('X13', 'balcony');
INSERT INTO Seat VALUES ('X14', 'balcony');
INSERT INTO Seat VALUES ('X15', 'balcony');
INSERT INTO Seat VALUES ('X16', 'balcony');
INSERT INTO Seat VALUES ('X17', 'balcony');
INSERT INTO Seat VALUES ('X18', 'balcony');
INSERT INTO Seat VALUES ('X19', 'balcony');
INSERT INTO Seat VALUES ('X20', 'balcony');
INSERT INTO Seat VALUES ('Y01', 'balcony');
INSERT INTO Seat VALUES ('Y02', 'balcony');
INSERT INTO Seat VALUES ('Y03', 'balcony');
INSERT INTO Seat VALUES ('Y04', 'balcony');
INSERT INTO Seat VALUES ('Y05', 'balcony');
INSERT INTO Seat VALUES ('Y06', 'balcony');
INSERT INTO Seat VALUES ('Y07', 'balcony');
INSERT INTO Seat VALUES ('Y08', 'balcony');
INSERT INTO Seat VALUES ('Y09', 'balcony');
INSERT INTO Seat VALUES ('Y10', 'balcony');
INSERT INTO Seat VALUES ('Y11', 'balcony');
INSERT INTO Seat VALUES ('Y12', 'balcony');
INSERT INTO Seat VALUES ('Y13', 'balcony');
INSERT INTO Seat VALUES ('Y14', 'balcony');
INSERT INTO Seat VALUES ('Y15', 'balcony');
INSERT INTO Seat VALUES ('Y16', 'balcony');
INSERT INTO Seat VALUES ('Y17', 'balcony');
INSERT INTO Seat VALUES ('Y18', 'balcony');
INSERT INTO Seat VALUES ('Y19', 'balcony');
INSERT INTO Seat VALUES ('Y20', 'balcony');
INSERT INTO Seat VALUES ('Z01', 'box 1');
INSERT INTO Seat VALUES ('Z02', 'box 1');
INSERT INTO Seat VALUES ('Z03', 'box 1');
INSERT INTO Seat VALUES ('Z04', 'box 1');
INSERT INTO Seat VALUES ('Z05', 'box 2');
INSERT INTO Seat VALUES ('Z06', 'box 2');
INSERT INTO Seat VALUES ('Z07', 'box 2');
INSERT INTO Seat VALUES ('Z08', 'box 2');
INSERT INTO Seat VALUES ('Z09', 'box 3');
INSERT INTO Seat VALUES ('Z10', 'box 3');
INSERT INTO Seat VALUES ('Z11', 'box 3');
INSERT INTO Seat VALUES ('Z12', 'box 3');
INSERT INTO Seat VALUES ('Z13', 'box 3');
INSERT INTO Seat VALUES ('Z14', 'box 3');
INSERT INTO Seat VALUES ('Z15', 'box 4');
INSERT INTO Seat VALUES ('Z16', 'box 4');
INSERT INTO Seat VALUES ('Z17', 'box 4');
INSERT INTO Seat VALUES ('Z18', 'box 4');
INSERT INTO Seat VALUES ('Z19', 'box 4');
INSERT INTO Seat VALUES ('Z20', 'box 4');

-- create production table
CREATE TABLE Production (
	Title VARCHAR(255),
	BasicTicketPrice FLOAT NOT NULL,
	PRIMARY KEY (Title)
);

-- insert production values
INSERT INTO Production VALUES ('Cats', 15.00);
INSERT INTO Production VALUES ('Fame', 15.00);
INSERT INTO Production VALUES ('Tosca', 30.00);

-- create performance table
CREATE TABLE Performance (
	PerfDate DATE,
	PerfTime TIME,
    Title VARCHAR(255),
	PRIMARY KEY (PerfDate, PerfTime),
    FOREIGN KEY (Title) REFERENCES Production (Title)
);

-- insert performance values
INSERT INTO Performance VALUES ('2017-11-01', '19:00:00', 'Cats');
INSERT INTO Performance VALUES ('2017-11-02', '19:00:00', 'Cats');
INSERT INTO Performance VALUES ('2017-11-03', '19:00:00', 'Cats');
INSERT INTO Performance VALUES ('2017-11-03', '13:00:00', 'Cats');
INSERT INTO Performance VALUES ('2017-11-04', '19:00:00', 'Fame');
INSERT INTO Performance VALUES ('2017-11-05', '13:00:00', 'Fame');
INSERT INTO Performance VALUES ('2017-11-05', '19:00:00', 'Tosca');
INSERT INTO Performance VALUES ('2017-11-06', '13:00:00', 'Tosca');
INSERT INTO Performance VALUES ('2017-11-06', '19:00:00', 'Tosca');

-- create booking table
CREATE TABLE Booking (
	Email VARCHAR(255) NOT NULL,
    PerfDate DATE,
	PerfTime TIME,
    RowNumber CHAR(3),
	PRIMARY KEY (PerfDate, PerfTime, RowNumber),
    FOREIGN KEY (PerfDate, PerfTime) REFERENCES Performance (PerfDate, PerfTime),
    FOREIGN KEY (RowNumber) REFERENCES Seat (RowNumber),
    UNIQUE (PerfDate, PerfTime, RowNumber) -- don't allow same seat for particular performance to be sold twice
);

-- insert booking values
INSERT INTO Booking VALUES ('ZP@email.com', '2017-11-01', '19:00:00', 'Z18');
INSERT INTO Booking VALUES ('ZP@email.com', '2017-11-01', '19:00:00', 'Z19');
INSERT INTO Booking VALUES ('Jane.Dot@live.com', '2017-11-01', '19:00:00', 'Z16');
INSERT INTO Booking VALUES ('Jane.Dot@live.com', '2017-11-05', '13:00:00', 'U20');
INSERT INTO Booking VALUES ('Jane.Dot@live.com', '2017-11-05', '13:00:00', 'U19');
INSERT INTO Booking VALUES ('Mike.Stand@email.com', '2017-11-05', '13:00:00', 'X13');
INSERT INTO Booking VALUES ('Mike.Stand@email.com', '2017-11-05', '13:00:00', 'X14');
INSERT INTO Booking VALUES ('qvf3@live.com', '2017-11-05', '13:00:00', 'Z19');


-- query a
SELECT * FROM Performance 
WHERE Title = 'Cats'
ORDER BY Perfdate, PerfTime;

-- query b
SELECT b.Email, b.PerfDate, b.PerfTime, p.Title
FROM Booking b JOIN Performance p ON b.PerfDate = p.PerfDate AND b.PerfTime = p.PerfTime
WHERE b.Email LIKE '%@email.com';

-- query c 
SELECT b.RowNumber, b.Email, ROUND(pr.BasicTicketPrice*z.PriceMultiplier, 2) AS PricePaid
FROM Booking b
JOIN Performance pe ON b.PerfDate = pe.PerfDate AND b.PerfTime = pe.PerfTime
JOIN Production pr ON pe.Title = pr.Title
JOIN Seat s ON b.RowNumber = s.RowNumber
JOIN Zone z ON s.Zone = z.Name;

-- query d 
SELECT s.RowNumber
FROM Seat s
WHERE NOT EXISTS (SELECT b.email FROM Booking b WHERE s.Rownumber = b.RowNumber AND b.PerfDate = '2017-11-01' AND b.PerfTime = '19:00:00')
ORDER BY s.RowNumber;

-- query e 
SELECT z.Name, z.PriceMultiplier, COUNT(s.RowNumber) AS NumberOfSeats
FROM Zone z 
JOIN Seat s ON z.Name = s.Zone
WHERE z.PriceMultiplier > 2.3
GROUP BY z.Name;




