CREATE TABLE campos_significado(
  ID_ETIQUETA TEXT,
  CONTENIDO TEXT
);

CREATE TABLE alumnosetiquetas(
  ID_ETIQUETA TEXT,
  OPCIONES INTEGER,
  CONTENIDO TEXT
);

CREATE TABLE alumnosetiquetasmin(
  ID_ETIQUETA TEXT,
  OPCIONES INTEGER,
  CONTENIDO TEXT
);

CREATE TABLE directoresetiquetas(
  ID_ETIQUETA TEXT,
  OPCIONES INTEGER,
  CONTENIDO TEXT
);

CREATE TABLE directoresetiquetasmin(
  ID_ETIQUETA TEXT,
  OPCIONES INTEGER,
  CONTENIDO TEXT
);

CREATE TABLE gruposetiquetas(
  ID_ETIQUETA TEXT,
  OPCIONES INTEGER,
  CONTENIDO TEXT
);

CREATE TABLE gruposetiquetasmin(
  ID_ETIQUETA TEXT,
  OPCIONES INTEGER,
  CONTENIDO TEXT
);

CREATE TABLE escuelasetiquetas(
  ID_ETIQUETA TEXT,
  OPCIONES INTEGER,
  CONTENIDO TEXT
);

CREATE TABLE escuelasetiquetasmin(
  ID_ETIQUETA TEXT,
  OPCIONES INTEGER,
  CONTENIDO TEXT
);

CREATE TABLE escuelas(
    ESCUELA INTEGER PRIMARY KEY,
    ID_ENT INT,
    ID_TURNO INT,
    ID_SERV INT,
    ESTRATO TEXT
);

CREATE TABLE grupos(
    ESCUELA INT,
    ID_ENT INT,
    ID_SERV INT,
    ESTRATO TEXT,
    MARGINC INT,
    TAM_LOC_SEC INT,
    I_MULTIGRADO INT,
    ID_INSTR TEXT,
    W_FGRPWT NUMERIC,
    GRUPO INT PRIMARY KEY,
    G001 INT,
    G002 INT,
    G003 INT,
    G004 INT,
    G005 INT,
    G006 INT,
    G007 INT,
    G008 INT,
    G009 INT,
    G010 INT,
    G011 INT,
    G012 INT,
    G013 INT,
    G014 INT,
    G015 INT,
    G016 INT,
    G017 INT,
    G018 INT,
    G019 INT,
    G020 INT,
    G021 INT,
    G022 INT,
    G023 INT,
    G024 INT,
    G025 INT,
    G026 INT,
    G027 INT,
    G028 INT,
    G029 INT,
    G030 INT,
    G031 INT,
    G032 INT,
    WVARSTRR INT,
    W_FGRR1 NUMERIC,
    W_FGRR2 NUMERIC,
    W_FGRR3 NUMERIC,
    W_FGRR4 NUMERIC,
    W_FGRR5 NUMERIC,
    W_FGRR6 NUMERIC,
    W_FGRR7 NUMERIC,
    W_FGRR8 NUMERIC,
    W_FGRR9 NUMERIC,
    W_FGRR10 NUMERIC,
    W_FGRR11 NUMERIC,
    W_FGRR12 NUMERIC,
    W_FGRR13 NUMERIC,
    W_FGRR14 NUMERIC,
    W_FGRR15 NUMERIC,
    W_FGRR16 NUMERIC,
    W_FGRR17 NUMERIC,
    W_FGRR18 NUMERIC,
    W_FGRR19 NUMERIC,
    W_FGRR20 NUMERIC,
    W_FGRR21 NUMERIC,
    W_FGRR22 NUMERIC,
    W_FGRR23 NUMERIC,
    W_FGRR24 NUMERIC,
    W_FGRR25 NUMERIC,
    W_FGRR26 NUMERIC,
    W_FGRR27 NUMERIC,
    W_FGRR28 NUMERIC,
    W_FGRR29 NUMERIC,
    W_FGRR30 NUMERIC,
    W_FGRR31 NUMERIC,
    W_FGRR32 NUMERIC,
    W_FGRR33 NUMERIC,
    W_FGRR34 NUMERIC,
    W_FGRR35 NUMERIC,
    W_FGRR36 NUMERIC,
    W_FGRR37 NUMERIC,
    W_FGRR38 NUMERIC,
    W_FGRR39 NUMERIC,
    W_FGRR40 NUMERIC,
    W_FGRR41 NUMERIC,
    W_FGRR42 NUMERIC,
    W_FGRR43 NUMERIC,
    W_FGRR44 NUMERIC,
    W_FGRR45 NUMERIC,
    W_FGRR46 NUMERIC,
    W_FGRR47 NUMERIC,
    W_FGRR48 NUMERIC,
    W_FGRR49 NUMERIC,
    W_FGRR50 NUMERIC,
    W_FGRR51 NUMERIC,
    W_FGRR52 NUMERIC,
    W_FGRR53 NUMERIC,
    W_FGRR54 NUMERIC,
    W_FGRR55 NUMERIC,
    W_FGRR56 NUMERIC,
    W_FGRR57 NUMERIC,
    W_FGRR58 NUMERIC,
    W_FGRR59 NUMERIC,
    W_FGRR60 NUMERIC,
    W_FGRR61 NUMERIC,
    W_FGRR62 NUMERIC,
    W_FGRR63 NUMERIC,
    W_FGRR64 NUMERIC,
    W_FGRR65 NUMERIC,
    W_FGRR66 NUMERIC,
    W_FGRR67 NUMERIC,
    W_FGRR68 NUMERIC,
    W_FGRR69 NUMERIC,
    W_FGRR70 NUMERIC,
    W_FGRR71 NUMERIC,
    W_FGRR72 NUMERIC,
    W_FGRR73 NUMERIC,
    W_FGRR74 NUMERIC,
    W_FGRR75 NUMERIC,
    W_FGRR76 NUMERIC,
    W_FGRR77 NUMERIC,
    W_FGRR78 NUMERIC,
    W_FGRR79 NUMERIC,
    W_FGRR80 NUMERIC,
    W_FGRR81 NUMERIC,
    W_FGRR82 NUMERIC,
    W_FGRR83 NUMERIC,
    W_FGRR84 NUMERIC,
    W_FGRR85 NUMERIC,
    W_FGRR86 NUMERIC,
    W_FGRR87 NUMERIC,
    W_FGRR88 NUMERIC,
    W_FGRR89 NUMERIC,
    W_FGRR90 NUMERIC,
    W_FGRR91 NUMERIC,
    W_FGRR92 NUMERIC,
    W_FGRR93 NUMERIC,
    W_FGRR94 NUMERIC,
    W_FGRR95 NUMERIC,
    W_FGRR96 NUMERIC,
    W_FGRR97 NUMERIC,
    W_FGRR98 NUMERIC,
    W_FGRR99 NUMERIC,
    W_FGRR100 NUMERIC
);

CREATE TABLE directores(
    ESCUELA INT PRIMARY KEY ,
    ID_ENT INT,
    ID_SERV INT,
    ESTRATO TEXT,
    ID_INSTR TEXT,
    W_FSCHWT NUMERIC,
    D001 INT,
    D002 INT,
    D003 INT,
    D004 INT,
    D005 INT,
    D006 INT,
    D007 INT,
    D008 INT,
    D009 INT,
    D010 INT,
    D011 INT,
    D012 INT,
    D013 INT,
    D014 INT,
    D015 INT,
    D016 INT,
    D017 INT,
    D018 INT,
    D019 INT,
    D020 INT,
    D021 INT,
    D022 INT,
    D023 INT,
    D024 INT,
    D025 INT,
    D026 INT,
    D027 INT,
    D028 INT,
    D029 INT,
    D030 INT,
    D031 INT,
    D032 INT,
    D033 INT,
    D034 INT,
    D035 INT,
    D036 INT,
    D037 INT,
    D038 INT,
    D039 INT,
    D040 INT,
    D041_A INT,
    D041_B INT,
    D041_C INT,
    D041_D INT,
    D041_E INT,
    D041_F INT,
    D042_A INT,
    D042_B INT,
    D042_C INT,
    D042_D INT,
    D042_E INT,
    D042_F INT,
    D043_A INT,
    D043_B INT,
    D043_C INT,
    D043_D INT,
    D043_E INT,
    D043_F INT,
    D044_A INT,
    D044_B INT,
    D044_C INT,
    D044_D INT,
    D044_E INT,
    D044_F INT,
    D045 INT,
    D046 INT,
    D047 INT,
    D048 INT,
    D049 INT,
    D050 INT,
    D051 INT,
    D052 INT,
    D053 INT,
    D054 INT,
    D055 INT,
    D056 INT,
    D057 INT,
    D058 INT,
    D059 INT,
    D060 INT,
    D061 INT,
    D062 INT,
    D063 INT,
    D064 INT,
    D065 INT,
    D066 INT,
    D067 INT,
    D068 INT,
    D069 INT,
    D070 INT,
    D071 INT,
    D072 INT,
    D073 INT,
    D074 INT,
    D075 INT,
    D076 INT,
    D077 INT,
    D078 INT,
    D079 INT,
    D080 INT,
    D081 INT,
    D082 INT,
    WVARSTRR INT,
    W_FSCR1 NUMERIC,
    W_FSCR2 NUMERIC,
    W_FSCR3 NUMERIC,
    W_FSCR4 NUMERIC,
    W_FSCR5 NUMERIC,
    W_FSCR6 NUMERIC,
    W_FSCR7 NUMERIC,
    W_FSCR8 NUMERIC,
    W_FSCR9 NUMERIC,
    W_FSCR10 NUMERIC,
    W_FSCR11 NUMERIC,
    W_FSCR12 NUMERIC,
    W_FSCR13 NUMERIC,
    W_FSCR14 NUMERIC,
    W_FSCR15 NUMERIC,
    W_FSCR16 NUMERIC,
    W_FSCR17 NUMERIC,
    W_FSCR18 NUMERIC,
    W_FSCR19 NUMERIC,
    W_FSCR20 NUMERIC,
    W_FSCR21 NUMERIC,
    W_FSCR22 NUMERIC,
    W_FSCR23 NUMERIC,
    W_FSCR24 NUMERIC,
    W_FSCR25 NUMERIC,
    W_FSCR26 NUMERIC,
    W_FSCR27 NUMERIC,
    W_FSCR28 NUMERIC,
    W_FSCR29 NUMERIC,
    W_FSCR30 NUMERIC,
    W_FSCR31 NUMERIC,
    W_FSCR32 NUMERIC,
    W_FSCR33 NUMERIC,
    W_FSCR34 NUMERIC,
    W_FSCR35 NUMERIC,
    W_FSCR36 NUMERIC,
    W_FSCR37 NUMERIC,
    W_FSCR38 NUMERIC,
    W_FSCR39 NUMERIC,
    W_FSCR40 NUMERIC,
    W_FSCR41 NUMERIC,
    W_FSCR42 NUMERIC,
    W_FSCR43 NUMERIC,
    W_FSCR44 NUMERIC,
    W_FSCR45 NUMERIC,
    W_FSCR46 NUMERIC,
    W_FSCR47 NUMERIC,
    W_FSCR48 NUMERIC,
    W_FSCR49 NUMERIC,
    W_FSCR50 NUMERIC,
    W_FSCR51 NUMERIC,
    W_FSCR52 NUMERIC,
    W_FSCR53 NUMERIC,
    W_FSCR54 NUMERIC,
    W_FSCR55 NUMERIC,
    W_FSCR56 NUMERIC,
    W_FSCR57 NUMERIC,
    W_FSCR58 NUMERIC,
    W_FSCR59 NUMERIC,
    W_FSCR60 NUMERIC,
    W_FSCR61 NUMERIC,
    W_FSCR62 NUMERIC,
    W_FSCR63 NUMERIC,
    W_FSCR64 NUMERIC,
    W_FSCR65 NUMERIC,
    W_FSCR66 NUMERIC,
    W_FSCR67 NUMERIC,
    W_FSCR68 NUMERIC,
    W_FSCR69 NUMERIC,
    W_FSCR70 NUMERIC,
    W_FSCR71 NUMERIC,
    W_FSCR72 NUMERIC,
    W_FSCR73 NUMERIC,
    W_FSCR74 NUMERIC,
    W_FSCR75 NUMERIC,
    W_FSCR76 NUMERIC,
    W_FSCR77 NUMERIC,
    W_FSCR78 NUMERIC,
    W_FSCR79 NUMERIC,
    W_FSCR80 NUMERIC,
    W_FSCR81 NUMERIC,
    W_FSCR82 NUMERIC,
    W_FSCR83 NUMERIC,
    W_FSCR84 NUMERIC,
    W_FSCR85 NUMERIC,
    W_FSCR86 NUMERIC,
    W_FSCR87 NUMERIC,
    W_FSCR88 NUMERIC,
    W_FSCR89 NUMERIC,
    W_FSCR90 NUMERIC,
    W_FSCR91 NUMERIC,
    W_FSCR92 NUMERIC,
    W_FSCR93 NUMERIC,
    W_FSCR94 NUMERIC,
    W_FSCR95 NUMERIC,
    W_FSCR96 NUMERIC,
    W_FSCR97 NUMERIC,
    W_FSCR98 NUMERIC,
    W_FSCR99 NUMERIC,
    W_FSCR100 NUMERIC
);

CREATE TABLE alumnos(
    ALUMNO INTEGER PRIMARY KEY,
    ESCUELA INTEGER,
    ID_ENT INTEGER,
    ID_SERV INTEGER,
    ESTRATO TEXT,
    MARGINC INTEGER,
    TAM_LOC_SEC INTEGER,
    I_MULTIGRADO INTEGER,
    ID_LYC_INSTR TEXT,
    ID_MAT_INSTR TEXT,
    SEXO INTEGER,
    EDAD_AC INTEGER,
    MES_NAC INTEGER,
    EDAD_N INTEGER,
    EDAD_ANT INTEGER,
    EDAD_EES INTEGER,
    W_FSTUWT NUMERIC,
    GRUPO INTEGER,
    SEA01 INTEGER,
    SEA02 INTEGER,
    SEA03 INTEGER,
    SEA04 INTEGER,
    SEA05 INTEGER,
    SEA06 INTEGER,
    SEA07 INTEGER,
    SEA08 INTEGER,
    SEA09 INTEGER,
    SEA10 INTEGER,
    SEA11 INTEGER,
    SEA12 INTEGER,
    SEA13 INTEGER,
    SEA14 INTEGER,
    SEA15 INTEGER,
    SEA16 INTEGER,
    SEA17 INTEGER,
    SEA18 INTEGER,
    SEA19 INTEGER,
    SEA20 INTEGER,
    SEA21 INTEGER,
    SEA22 INTEGER,
    SEA23 INTEGER,
    SEA24 INTEGER,
    SEA25 INTEGER,
    SEB01 INTEGER,
    SEB02 INTEGER,
    SEB03 INTEGER,
    SEB04 INTEGER,
    SEB05 INTEGER,
    SEB07 INTEGER,
    SEB08 INTEGER,
    SEB09 INTEGER,
    SEB10 INTEGER,
    SEB11 INTEGER,
    SEB12 INTEGER,
    SEB13 INTEGER,
    SEB14 INTEGER,
    SEB15 INTEGER,
    SEB17 INTEGER,
    SEB18 INTEGER,
    SEB19 INTEGER,
    SEB20 INTEGER,
    SEB21 INTEGER,
    SEB22 INTEGER,
    SEB23 INTEGER,
    SEB24 INTEGER,
    SEB25 INTEGER,
    SEC01 INTEGER,
    SEC02 INTEGER,
    SEC03 INTEGER,
    SEC04 INTEGER,
    SEC05 INTEGER,
    SEC06 INTEGER,
    SEC07 INTEGER,
    SEC08 INTEGER,
    SEC09 INTEGER,
    SEC10 INTEGER,
    SEC11 INTEGER,
    SEC12 INTEGER,
    SEC13 INTEGER,
    SEC14 INTEGER,
    SEC15 INTEGER,
    SEC16 INTEGER,
    SEC17 INTEGER,
    SEC18 INTEGER,
    SEC19 INTEGER,
    SEC20 INTEGER,
    SEC21 INTEGER,
    SEC22 INTEGER,
    SEC23 INTEGER,
    SEC25 INTEGER,
    SEC26 INTEGER,
    SED01 INTEGER,
    SED03 INTEGER,
    SED04 INTEGER,
    SED05 INTEGER,
    SED06 INTEGER,
    SED07 INTEGER,
    SED08 INTEGER,
    SED10 INTEGER,
    SED11 INTEGER,
    SED12 INTEGER,
    SED13 INTEGER,
    SED14 INTEGER,
    SED15 INTEGER,
    SED16 INTEGER,
    SED18 INTEGER,
    SED19 INTEGER,
    SED20 INTEGER,
    SED21 INTEGER,
    SED22 INTEGER,
    SED23 INTEGER,
    SED24 INTEGER,
    SED25 INTEGER,
    SEE01 INTEGER,
    SEE02 INTEGER,
    SEE03 INTEGER,
    SEE04 INTEGER,
    SEE05 INTEGER,
    SEE06 INTEGER,
    SEE07 INTEGER,
    SEE08 INTEGER,
    SEE09 INTEGER,
    SEE10 INTEGER,
    SEE11 INTEGER,
    SEE13 INTEGER,
    SEE14 INTEGER,
    SEE15 INTEGER,
    SEE16 INTEGER,
    SEE17 INTEGER,
    SEE18 INTEGER,
    SEE19 INTEGER,
    SEE21 INTEGER,
    SEE22 INTEGER,
    SEE23 INTEGER,
    SEE24 INTEGER,
    SEE25 INTEGER,
    SEF01 INTEGER,
    SEF02 INTEGER,
    SEF03 INTEGER,
    SEF04 INTEGER,
    SEF05 INTEGER,
    SEF06 INTEGER,
    SEF07 INTEGER,
    SEF08 INTEGER,
    SEF09 INTEGER,
    SEF10 INTEGER,
    SEF11 INTEGER,
    SEF12 INTEGER,
    SEF13 INTEGER,
    SEF14 INTEGER,
    SEF15 INTEGER,
    SEF16 INTEGER,
    SEF17 INTEGER,
    SEF18 INTEGER,
    SEF19 INTEGER,
    SEF20 INTEGER,
    SEF21 INTEGER,
    SEF22 INTEGER,
    SEF23 INTEGER,
    SEF24 INTEGER,
    SEF25 INTEGER,
    SMA01 INTEGER,
    SMA02 INTEGER,
    SMA03 INTEGER,
    SMA04 INTEGER,
    SMA05 INTEGER,
    SMA06 INTEGER,
    SMA07 INTEGER,
    SMA08 INTEGER,
    SMA09 INTEGER,
    SMA10 INTEGER,
    SMA11 INTEGER,
    SMA12 INTEGER,
    SMA13 INTEGER,
    SMA14 INTEGER,
    SMA15 INTEGER,
    SMA16 INTEGER,
    SMA17 INTEGER,
    SMA18 INTEGER,
    SMA19 INTEGER,
    SMA20 INTEGER,
    SMA21 INTEGER,
    SMA22 INTEGER,
    SMA23 INTEGER,
    SMA24 INTEGER,
    SMA25 INTEGER,
    SMB01 INTEGER,
    SMB02 INTEGER,
    SMB03 INTEGER,
    SMB04 INTEGER,
    SMB05 INTEGER,
    SMB06 INTEGER,
    SMB07 INTEGER,
    SMB08 INTEGER,
    SMB09 INTEGER,
    SMB10 INTEGER,
    SMB11 INTEGER,
    SMB12 INTEGER,
    SMB13 INTEGER,
    SMB14 INTEGER,
    SMB15 INTEGER,
    SMB16 INTEGER,
    SMB17 INTEGER,
    SMB18 INTEGER,
    SMB19 INTEGER,
    SMB20 INTEGER,
    SMB21 INTEGER,
    SMB22 INTEGER,
    SMB23 INTEGER,
    SMB24 INTEGER,
    SMB25 INTEGER,
    SMC01 INTEGER,
    SMC02 INTEGER,
    SMC03 INTEGER,
    SMC04 INTEGER,
    SMC05 INTEGER,
    SMC07 INTEGER,
    SMC08 INTEGER,
    SMC09 INTEGER,
    SMC10 INTEGER,
    SMC11 INTEGER,
    SMC12 INTEGER,
    SMC13 INTEGER,
    SMC14 INTEGER,
    SMC15 INTEGER,
    SMC16 INTEGER,
    SMC17 INTEGER,
    SMC18 INTEGER,
    SMC19 INTEGER,
    SMC20 INTEGER,
    SMC21 INTEGER,
    SMC23 INTEGER,
    SMC24 INTEGER,
    SMC25 INTEGER,
    SMD02 INTEGER,
    SMD04 INTEGER,
    SMD05 INTEGER,
    SMD06 INTEGER,
    SMD07 INTEGER,
    SMD08 INTEGER,
    SMD09 INTEGER,
    SMD10 INTEGER,
    SMD11 INTEGER,
    SMD12 INTEGER,
    SMD13 INTEGER,
    SMD14 INTEGER,
    SMD15 INTEGER,
    SMD16 INTEGER,
    SMD17 INTEGER,
    SMD18 INTEGER,
    SMD19 INTEGER,
    SMD20 INTEGER,
    SMD21 INTEGER,
    SMD22 INTEGER,
    SMD23 INTEGER,
    SMD24 INTEGER,
    SMD25 INTEGER,
    SME01 INTEGER,
    SME02 INTEGER,
    SME03 INTEGER,
    SME04 INTEGER,
    SME05 INTEGER,
    SME06 INTEGER,
    SME07 INTEGER,
    SME08 INTEGER,
    SME09 INTEGER,
    SME10 INTEGER,
    SME11 INTEGER,
    SME12 INTEGER,
    SME13 INTEGER,
    SME14 INTEGER,
    SME15 INTEGER,
    SME16 INTEGER,
    SME17 INTEGER,
    SME18 INTEGER,
    SME19 INTEGER,
    SME20 INTEGER,
    SME21 INTEGER,
    SME22 INTEGER,
    SME23 INTEGER,
    SME24 INTEGER,
    SME25 INTEGER,
    SMF01 INTEGER,
    SMF03 INTEGER,
    SMF04 INTEGER,
    SMF05 INTEGER,
    SMF06 INTEGER,
    SMF07 INTEGER,
    SMF08 INTEGER,
    SMF09 INTEGER,
    SMF10 INTEGER,
    SMF11 INTEGER,
    SMF12 INTEGER,
    SMF13 INTEGER,
    SMF14 INTEGER,
    SMF16 INTEGER,
    SMF17 INTEGER,
    SMF18 INTEGER,
    SMF19 INTEGER,
    SMF20 INTEGER,
    SMF21 INTEGER,
    SMF22 INTEGER,
    SMF23 INTEGER,
    SMF24 INTEGER,
    SMF25 INTEGER,
    AB001 INTEGER,
    AB002 INTEGER,
    AB003 INTEGER,
    AB004 INTEGER,
    AB005 INTEGER,
    AB006 INTEGER,
    AB007 INTEGER,
    AB008 INTEGER,
    AB009 INTEGER,
    AB010 INTEGER,
    AB011 INTEGER,
    AB012 INTEGER,
    AB013 INTEGER,
    AB014 INTEGER,
    AB015 INTEGER,
    AB016 INTEGER,
    AB017 INTEGER,
    AB018 INTEGER,
    AB019 INTEGER,
    AB020 INTEGER,
    AB021 INTEGER,
    AB022 INTEGER,
    AB023 INTEGER,
    AB024 INTEGER,
    AB025 INTEGER,
    AB026 INTEGER,
    AB027 INTEGER,
    AB028 INTEGER,
    AB029 INTEGER,
    AB030 INTEGER,
    AB031 INTEGER,
    AB032 INTEGER,
    AB033 INTEGER,
    AB034 INTEGER,
    AB035 INTEGER,
    AB036 INTEGER,
    AB037 INTEGER,
    AB038 INTEGER,
    AB039 INTEGER,
    AB040 INTEGER,
    AB041 INTEGER,
    AB042 INTEGER,
    AB043 INTEGER,
    AB044 INTEGER,
    AB045 INTEGER,
    AB046 INTEGER,
    AB047 INTEGER,
    AB048 INTEGER,
    AB049 INTEGER,
    AB050 INTEGER,
    AB051 INTEGER,
    AB052 INTEGER,
    AB053 INTEGER,
    AB054 INTEGER,
    AB055 INTEGER,
    AB056 INTEGER,
    AB057 INTEGER,
    AB058 INTEGER,
    AB059 INTEGER,
    AB060 INTEGER,
    AB061 INTEGER,
    AB062 INTEGER,
    AB063 INTEGER,
    AB064 INTEGER,
    AB065 INTEGER,
    AB066 INTEGER,
    AB067 INTEGER,
    AB068 INTEGER,
    AB069 INTEGER,
    AB070 INTEGER,
    AB071 INTEGER,
    AB072 INTEGER,
    AB073 INTEGER,
    AB074 INTEGER,
    AB075 INTEGER,
    AB076 INTEGER,
    AB077 INTEGER,
    AB078 INTEGER,
    AB079 INTEGER,
    AB080 INTEGER,
    AB081 INTEGER,
    AB082 INTEGER,
    PV1LYC NUMERIC,
    PV2LYC NUMERIC,
    PV3LYC NUMERIC,
    PV4LYC NUMERIC,
    PV5LYC NUMERIC,
    LYCNVL1 INTEGER,
    LYCNVL2 INTEGER,
    LYCNVL3 INTEGER,
    LYCNVL4 INTEGER,
    LYCNVL5 INTEGER,
    LYCNVLII1 INTEGER,
    LYCNVLII2 INTEGER,
    LYCNVLII3 INTEGER,
    LYCNVLII4 INTEGER,
    LYCNVLII5 INTEGER,
    LYCNVLIII1 INTEGER,
    LYCNVLIII2 INTEGER,
    LYCNVLIII3 INTEGER,
    LYCNVLIII4 INTEGER,
    LYCNVLIII5 INTEGER,
    PV1MAT NUMERIC,
    PV2MAT NUMERIC,
    PV3MAT NUMERIC,
    PV4MAT NUMERIC,
    PV5MAT NUMERIC,
    MATNVL1 INTEGER,
    MATNVL2 INTEGER,
    MATNVL3 INTEGER,
    MATNVL4 INTEGER,
    MATNVL5 INTEGER,
    MATNVLII1 INTEGER,
    MATNVLII2 INTEGER,
    MATNVLII3 INTEGER,
    MATNVLII4 INTEGER,
    MATNVLII5 INTEGER,
    MATNVLIII1 INTEGER,
    MATNVLIII2 INTEGER,
    MATNVLIII3 INTEGER,
    MATNVLIII4 INTEGER,
    MATNVLIII5 INTEGER,
    RFAB NUMERIC,
    RFABNVL INTEGER,
    I_RFAB INTEGER,
    WVARSTRR INTEGER,
    W_FSTR1 NUMERIC,
    W_FSTR2 NUMERIC,
    W_FSTR3 NUMERIC,
    W_FSTR4 NUMERIC,
    W_FSTR5 NUMERIC,
    W_FSTR6 NUMERIC,
    W_FSTR7 NUMERIC,
    W_FSTR8 NUMERIC,
    W_FSTR9 NUMERIC,
    W_FSTR10 NUMERIC,
    W_FSTR11 NUMERIC,
    W_FSTR12 NUMERIC,
    W_FSTR13 NUMERIC,
    W_FSTR14 NUMERIC,
    W_FSTR15 NUMERIC,
    W_FSTR16 NUMERIC,
    W_FSTR17 NUMERIC,
    W_FSTR18 NUMERIC,
    W_FSTR19 NUMERIC,
    W_FSTR20 NUMERIC,
    W_FSTR21 NUMERIC,
    W_FSTR22 NUMERIC,
    W_FSTR23 NUMERIC,
    W_FSTR24 NUMERIC,
    W_FSTR25 NUMERIC,
    W_FSTR26 NUMERIC,
    W_FSTR27 NUMERIC,
    W_FSTR28 NUMERIC,
    W_FSTR29 NUMERIC,
    W_FSTR30 NUMERIC,
    W_FSTR31 NUMERIC,
    W_FSTR32 NUMERIC,
    W_FSTR33 NUMERIC,
    W_FSTR34 NUMERIC,
    W_FSTR35 NUMERIC,
    W_FSTR36 NUMERIC,
    W_FSTR37 NUMERIC,
    W_FSTR38 NUMERIC,
    W_FSTR39 NUMERIC,
    W_FSTR40 NUMERIC,
    W_FSTR41 NUMERIC,
    W_FSTR42 NUMERIC,
    W_FSTR43 NUMERIC,
    W_FSTR44 NUMERIC,
    W_FSTR45 NUMERIC,
    W_FSTR46 NUMERIC,
    W_FSTR47 NUMERIC,
    W_FSTR48 NUMERIC,
    W_FSTR49 NUMERIC,
    W_FSTR50 NUMERIC,
    W_FSTR51 NUMERIC,
    W_FSTR52 NUMERIC,
    W_FSTR53 NUMERIC,
    W_FSTR54 NUMERIC,
    W_FSTR55 NUMERIC,
    W_FSTR56 NUMERIC,
    W_FSTR57 NUMERIC,
    W_FSTR58 NUMERIC,
    W_FSTR59 NUMERIC,
    W_FSTR60 NUMERIC,
    W_FSTR61 NUMERIC,
    W_FSTR62 NUMERIC,
    W_FSTR63 NUMERIC,
    W_FSTR64 NUMERIC,
    W_FSTR65 NUMERIC,
    W_FSTR66 NUMERIC,
    W_FSTR67 NUMERIC,
    W_FSTR68 NUMERIC,
    W_FSTR69 NUMERIC,
    W_FSTR70 NUMERIC,
    W_FSTR71 NUMERIC,
    W_FSTR72 NUMERIC,
    W_FSTR73 NUMERIC,
    W_FSTR74 NUMERIC,
    W_FSTR75 NUMERIC,
    W_FSTR76 NUMERIC,
    W_FSTR77 NUMERIC,
    W_FSTR78 NUMERIC,
    W_FSTR79 NUMERIC,
    W_FSTR80 NUMERIC,
    W_FSTR81 NUMERIC,
    W_FSTR82 NUMERIC,
    W_FSTR83 NUMERIC,
    W_FSTR84 NUMERIC,
    W_FSTR85 NUMERIC,
    W_FSTR86 NUMERIC,
    W_FSTR87 NUMERIC,
    W_FSTR88 NUMERIC,
    W_FSTR89 NUMERIC,
    W_FSTR90 NUMERIC,
    W_FSTR91 NUMERIC,
    W_FSTR92 NUMERIC,
    W_FSTR93 NUMERIC,
    W_FSTR94 NUMERIC,
    W_FSTR95 NUMERIC,
    W_FSTR96 NUMERIC,
    W_FSTR97 NUMERIC,
    W_FSTR98 NUMERIC,
    W_FSTR99 NUMERIC,
    W_FSTR100 NUMERIC
);