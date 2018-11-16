-- Create Full Tables
--ESCUELAS
CREATE TABLE planea_schma.escuelasFullCategoricalMin as(
	SELECT
		t2.escuela,
		t2.entidad,
		t2.TipoEscuela,
		turno.contenido as turno
	FROM (
		SELECT
		 t1.escuela,
		 t1.entidad,
		 serv.contenido as TipoEscuela,
		 t1.id_turno
			FROM (
				SELECT
					planea_schma.escuelas.escuela,
					e.contenido as entidad,
					planea_schma.escuelas.id_serv,
					planea_schma.escuelas.id_turno
				FROM(
					(SELECT opciones, contenido FROM planea_schma.escuelasetiquetasmin WHERE id_etiqueta='ID_ENT') as e
					INNER JOIN planea_schma.escuelas ON planea_schma.escuelas.id_ent = e.opciones
				)
			) as t1
			INNER JOIN (SELECT opciones, contenido FROM planea_schma.escuelasetiquetasmin WHERE id_etiqueta='ID_SERV') as serv ON t1.id_serv = serv.opciones
	) as t2
	INNER JOIN (SELECT opciones, contenido FROM planea_schma.escuelasetiquetasmin WHERE id_etiqueta='ID_TURNO') as turno ON t2.id_turno = turno.opciones
);

-- GRUPOS: COMPLETE AND CATEGORICAL
CREATE TABLE planea_schma.gruposFullCategoricalMin as(
SELECT
	escuela,
	grupo,
	estrato,
	id_instr,
	t2.G010_ as G010,
	t2.G025_ as G025,
	t2.G015_ as G015,
	t2.G029_ as G029,
	t2.G003_ as G003,
	t2.G001_ as G001,
	t2.I_MULTIGRADO_ as I_MULTIGRADO,
	t2.G012_ as G012,
	t2.G030_ as G030,
	t2.G008_ as G008,
	t2.G018_ as G018,
	t2.G020_ as G020,
	t2.G027_ as G027,
	t2.G021_ as G021,
	t2.MARGINC_ as MARGINC,
	t2.G007_ as G007,
	t2.G016_ as G016,
	t2.G024_ as G024,
	t2.G031_ as G031,
	t2.TAM_LOC_SEC_ as TAM_LOC_SEC,
	t2.G028_ as G028,
	t2.G013_ as G013,
	t2.G032_ as G032,
	t2.G005_ as G005,
	t2.G019_ as G019,
	t2.ID_ENT_ as ID_ENT,
	t2.G002_ as G002,
	t2.G009_ as G009,
	t2.G004_ as G004,
	t2.G011_ as G011,
	t2.G014_ as G014,
	t2.G022_ as G022,
	t2.G017_ as G017,
	t2.G026_ as G026,
	t2.G023_ as G023,
	t2.ID_SERV_ as ID_SERV,
	G006_ as G006
FROM (
	SELECT *
	FROM (
		SELECT *
		FROM (
			SELECT *
			FROM (
				SELECT *
				FROM (
					SELECT *
					FROM (
						SELECT *
						FROM (
							SELECT *
							FROM (
								SELECT *
								FROM (
									SELECT *
									FROM (
										SELECT *
										FROM (
											SELECT *
											FROM (
												SELECT *
												FROM (
													SELECT *
													FROM (
														SELECT *
														FROM (
															SELECT *
															FROM (
																SELECT *
																FROM (
																	SELECT *
																	FROM (
																		SELECT *
																		FROM (
																			SELECT *
																			FROM (
																				SELECT *
																				FROM (
																					SELECT *
																					FROM (
																						SELECT *
																						FROM (
																							SELECT *
																							FROM (
																								SELECT *
																								FROM (
																									SELECT *
																									FROM (
																										SELECT *
																										FROM (
																											SELECT *
																											FROM (
																												SELECT *
																												FROM (
																													SELECT *
																													FROM (
																														SELECT *
																														FROM (
																															SELECT *
																															FROM (
																																SELECT *
																																FROM (
																																	SELECT *
																																	FROM (
																																		SELECT *
																																		FROM (
																																			SELECT *
																																			FROM (
																																				SELECT *
																																				FROM (
																																					(SELECT opciones, contenido as G010_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G010') as temp37
																																					INNER JOIN planea_schma.grupos ON planea_schma.grupos.G010 = temp37.opciones
																																				)
																																				) as t37
																																			INNER JOIN (SELECT opciones, contenido as G025_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G025') as temp36 ON t37.G025 = temp36.opciones
																																			) as t36
																																			INNER JOIN (SELECT opciones, contenido as G015_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G015') as temp35 ON t36.G015 = temp35.opciones
																																		) as t35
																																		INNER JOIN (SELECT opciones, contenido as G029_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G029') as temp34 ON t35.G029 = temp34.opciones
																																	) as t34
																																	INNER JOIN (SELECT opciones, contenido as G003_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G003') as temp33 ON t34.G003 = temp33.opciones
																																) as t33
																																INNER JOIN (SELECT opciones, contenido as G001_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G001') as temp32 ON t33.G001 = temp32.opciones
																															) as t32
																															INNER JOIN (SELECT opciones, contenido as I_MULTIGRADO_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='I_MULTIGRADO') as temp31 ON t32.I_MULTIGRADO = temp31.opciones
																														) as t31
																														INNER JOIN (SELECT opciones, contenido as G012_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G012') as temp30 ON t31.G012 = temp30.opciones
																													) as t30
																													INNER JOIN (SELECT opciones, contenido as G030_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G030') as temp29 ON t30.G030 = temp29.opciones
																												) as t29
																												INNER JOIN (SELECT opciones, contenido as G008_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G008') as temp28 ON t29.G008 = temp28.opciones
																											) as t28
																											INNER JOIN (SELECT opciones, contenido as G018_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G018') as temp27 ON t28.G018 = temp27.opciones
																										) as t27
																										INNER JOIN (SELECT opciones, contenido as G020_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G020') as temp26 ON t27.G020 = temp26.opciones
																									) as t26
																									INNER JOIN (SELECT opciones, contenido as G027_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G027') as temp25 ON t26.G027 = temp25.opciones
																								) as t25
																								INNER JOIN (SELECT opciones, contenido as G021_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G021') as temp24 ON t25.G021 = temp24.opciones
																							) as t24
																							INNER JOIN (SELECT opciones, contenido as MARGINC_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='MARGINC') as temp23 ON t24.MARGINC = temp23.opciones
																						) as t23
																						INNER JOIN (SELECT opciones, contenido as G007_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G007') as temp22 ON t23.G007 = temp22.opciones
																					) as t22
																					INNER JOIN (SELECT opciones, contenido as G016_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G016') as temp21 ON t22.G016 = temp21.opciones
																				) as t21
																				INNER JOIN (SELECT opciones, contenido as G024_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G024') as temp20 ON t21.G024 = temp20.opciones
																			) as t20
																			INNER JOIN (SELECT opciones, contenido as G031_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G031') as temp19 ON t20.G031 = temp19.opciones
																		) as t19
																		INNER JOIN (SELECT opciones, contenido as TAM_LOC_SEC_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='TAM_LOC_SEC') as temp18 ON t19.TAM_LOC_SEC = temp18.opciones
																	) as t18
																	INNER JOIN (SELECT opciones, contenido as G028_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G028') as temp17 ON t18.G028 = temp17.opciones
																) as t17
																INNER JOIN (SELECT opciones, contenido as G013_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G013') as temp16 ON t17.G013 = temp16.opciones
															) as t16
															INNER JOIN (SELECT opciones, contenido as G032_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G032') as temp15 ON t16.G032 = temp15.opciones
														) as t15
														INNER JOIN (SELECT opciones, contenido as G005_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G005') as temp14 ON t15.G005 = temp14.opciones
													) as t14
													INNER JOIN (SELECT opciones, contenido as G019_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G019') as temp13 ON t14.G019 = temp13.opciones
												) as t13
												INNER JOIN (SELECT opciones, contenido as ID_ENT_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='ID_ENT') as temp12 ON t13.ID_ENT = temp12.opciones
											) as t12
											INNER JOIN (SELECT opciones, contenido as G002_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G002') as temp11 ON t12.G002 = temp11.opciones
										) as t11
										INNER JOIN (SELECT opciones, contenido as G009_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G009') as temp10 ON t11.G009 = temp10.opciones
									) as t10
									INNER JOIN (SELECT opciones, contenido as G004_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G004') as temp9 ON t10.G004 = temp9.opciones
								) as t9
								INNER JOIN (SELECT opciones, contenido as G011_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G011') as temp8 ON t9.G011 = temp8.opciones
							) as t8
							INNER JOIN (SELECT opciones, contenido as G014_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G014') as temp7 ON t8.G014 = temp7.opciones
						) as t7
						INNER JOIN (SELECT opciones, contenido as G022_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G022') as temp6 ON t7.G022 = temp6.opciones
					) as t6
					INNER JOIN (SELECT opciones, contenido as G017_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G017') as temp5 ON t6.G017 = temp5.opciones
				) as t5
				INNER JOIN (SELECT opciones, contenido as G026_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G026') as temp4 ON t5.G026 = temp4.opciones
			) as t4
			INNER JOIN (SELECT opciones, contenido as G023_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G023') as temp3 ON t4.G023 = temp3.opciones
		) as t3
		INNER JOIN (SELECT opciones, contenido as ID_SERV_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='ID_SERV') as temp2 ON t3.ID_SERV = temp2.opciones
	) as t2
	INNER JOIN (SELECT opciones, contenido as G006_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G006') as temp1 ON t2.G006 = temp1.opciones
);

CREATE TABLE planea_schma.gruposFullMin as(
SELECT
	escuela,
	grupo,
	estrato,
	id_instr,
	w_fgrpwt,
	w_fgrr1,
	w_fgrr2,
	w_fgrr3,
	w_fgrr4,
	w_fgrr5,
	w_fgrr6,
	w_fgrr7,
	w_fgrr8,
	w_fgrr9,
	w_fgrr10,
	w_fgrr11,
	w_fgrr12,
	w_fgrr13,
	w_fgrr14,
	w_fgrr15,
	w_fgrr16,
	w_fgrr17,
	w_fgrr18,
	w_fgrr19,
	w_fgrr20,
	w_fgrr21,
	w_fgrr22,
	w_fgrr23,
	w_fgrr24,
	w_fgrr25,
	w_fgrr26,
	w_fgrr27,
	w_fgrr28,
	w_fgrr29,
	w_fgrr30,
	w_fgrr31,
	w_fgrr32,
	w_fgrr33,
	w_fgrr34,
	w_fgrr35,
	w_fgrr36,
	w_fgrr37,
	w_fgrr38,
	w_fgrr39,
	w_fgrr40,
	w_fgrr41,
	w_fgrr42,
	w_fgrr43,
	w_fgrr44,
	w_fgrr45,
	w_fgrr46,
	w_fgrr47,
	w_fgrr48,
	w_fgrr49,
	w_fgrr50,
	w_fgrr51,
	w_fgrr52,
	w_fgrr53,
	w_fgrr54,
	w_fgrr55,
	w_fgrr56,
	w_fgrr57,
	w_fgrr58,
	w_fgrr59,
	w_fgrr60,
	w_fgrr61,
	w_fgrr62,
	w_fgrr63,
	w_fgrr64,
	w_fgrr65,
	w_fgrr66,
	w_fgrr67,
	w_fgrr68,
	w_fgrr69,
	w_fgrr70,
	w_fgrr71,
	w_fgrr72,
	w_fgrr73,
	w_fgrr74,
	w_fgrr75,
	w_fgrr76,
	w_fgrr77,
	w_fgrr78,
	w_fgrr79,
	w_fgrr80,
	w_fgrr81,
	w_fgrr82,
	w_fgrr83,
	w_fgrr84,
	w_fgrr85,
	w_fgrr86,
	w_fgrr87,
	w_fgrr88,
	w_fgrr89,
	w_fgrr90,
	w_fgrr91,
	w_fgrr92,
	w_fgrr93,
	w_fgrr94,
	w_fgrr95,
	w_fgrr96,
	w_fgrr97,
	w_fgrr98,
	w_fgrr99,
	w_fgrr100,
	t2.G010_ as G010,
	t2.G025_ as G025,
	t2.G015_ as G015,
	t2.G029_ as G029,
	t2.G003_ as G003,
	t2.G001_ as G001,
	t2.I_MULTIGRADO_ as I_MULTIGRADO,
	t2.G012_ as G012,
	t2.G030_ as G030,
	t2.G008_ as G008,
	t2.G018_ as G018,
	t2.G020_ as G020,
	t2.G027_ as G027,
	t2.G021_ as G021,
	t2.MARGINC_ as MARGINC,
	t2.G007_ as G007,
	t2.G016_ as G016,
	t2.G024_ as G024,
	t2.G031_ as G031,
	t2.TAM_LOC_SEC_ as TAM_LOC_SEC,
	t2.G028_ as G028,
	t2.G013_ as G013,
	t2.G032_ as G032,
	t2.G005_ as G005,
	t2.G019_ as G019,
	t2.ID_ENT_ as ID_ENT,
	t2.G002_ as G002,
	t2.G009_ as G009,
	t2.G004_ as G004,
	t2.G011_ as G011,
	t2.G014_ as G014,
	t2.G022_ as G022,
	t2.G017_ as G017,
	t2.G026_ as G026,
	t2.G023_ as G023,
	t2.ID_SERV_ as ID_SERV,
	G006_ as G006
FROM (
	SELECT *
	FROM (
		SELECT *
		FROM (
			SELECT *
			FROM (
				SELECT *
				FROM (
					SELECT *
					FROM (
						SELECT *
						FROM (
							SELECT *
							FROM (
								SELECT *
								FROM (
									SELECT *
									FROM (
										SELECT *
										FROM (
											SELECT *
											FROM (
												SELECT *
												FROM (
													SELECT *
													FROM (
														SELECT *
														FROM (
															SELECT *
															FROM (
																SELECT *
																FROM (
																	SELECT *
																	FROM (
																		SELECT *
																		FROM (
																			SELECT *
																			FROM (
																				SELECT *
																				FROM (
																					SELECT *
																					FROM (
																						SELECT *
																						FROM (
																							SELECT *
																							FROM (
																								SELECT *
																								FROM (
																									SELECT *
																									FROM (
																										SELECT *
																										FROM (
																											SELECT *
																											FROM (
																												SELECT *
																												FROM (
																													SELECT *
																													FROM (
																														SELECT *
																														FROM (
																															SELECT *
																															FROM (
																																SELECT *
																																FROM (
																																	SELECT *
																																	FROM (
																																		SELECT *
																																		FROM (
																																			SELECT *
																																			FROM (
																																				SELECT *
																																				FROM (
																																					(SELECT opciones, contenido as G010_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G010') as temp37
																																					INNER JOIN planea_schma.grupos ON planea_schma.grupos.G010 = temp37.opciones
																																				)
																																				) as t37
																																			INNER JOIN (SELECT opciones, contenido as G025_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G025') as temp36 ON t37.G025 = temp36.opciones
																																			) as t36
																																			INNER JOIN (SELECT opciones, contenido as G015_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G015') as temp35 ON t36.G015 = temp35.opciones
																																		) as t35
																																		INNER JOIN (SELECT opciones, contenido as G029_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G029') as temp34 ON t35.G029 = temp34.opciones
																																	) as t34
																																	INNER JOIN (SELECT opciones, contenido as G003_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G003') as temp33 ON t34.G003 = temp33.opciones
																																) as t33
																																INNER JOIN (SELECT opciones, contenido as G001_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G001') as temp32 ON t33.G001 = temp32.opciones
																															) as t32
																															INNER JOIN (SELECT opciones, contenido as I_MULTIGRADO_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='I_MULTIGRADO') as temp31 ON t32.I_MULTIGRADO = temp31.opciones
																														) as t31
																														INNER JOIN (SELECT opciones, contenido as G012_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G012') as temp30 ON t31.G012 = temp30.opciones
																													) as t30
																													INNER JOIN (SELECT opciones, contenido as G030_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G030') as temp29 ON t30.G030 = temp29.opciones
																												) as t29
																												INNER JOIN (SELECT opciones, contenido as G008_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G008') as temp28 ON t29.G008 = temp28.opciones
																											) as t28
																											INNER JOIN (SELECT opciones, contenido as G018_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G018') as temp27 ON t28.G018 = temp27.opciones
																										) as t27
																										INNER JOIN (SELECT opciones, contenido as G020_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G020') as temp26 ON t27.G020 = temp26.opciones
																									) as t26
																									INNER JOIN (SELECT opciones, contenido as G027_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G027') as temp25 ON t26.G027 = temp25.opciones
																								) as t25
																								INNER JOIN (SELECT opciones, contenido as G021_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G021') as temp24 ON t25.G021 = temp24.opciones
																							) as t24
																							INNER JOIN (SELECT opciones, contenido as MARGINC_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='MARGINC') as temp23 ON t24.MARGINC = temp23.opciones
																						) as t23
																						INNER JOIN (SELECT opciones, contenido as G007_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G007') as temp22 ON t23.G007 = temp22.opciones
																					) as t22
																					INNER JOIN (SELECT opciones, contenido as G016_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G016') as temp21 ON t22.G016 = temp21.opciones
																				) as t21
																				INNER JOIN (SELECT opciones, contenido as G024_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G024') as temp20 ON t21.G024 = temp20.opciones
																			) as t20
																			INNER JOIN (SELECT opciones, contenido as G031_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G031') as temp19 ON t20.G031 = temp19.opciones
																		) as t19
																		INNER JOIN (SELECT opciones, contenido as TAM_LOC_SEC_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='TAM_LOC_SEC') as temp18 ON t19.TAM_LOC_SEC = temp18.opciones
																	) as t18
																	INNER JOIN (SELECT opciones, contenido as G028_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G028') as temp17 ON t18.G028 = temp17.opciones
																) as t17
																INNER JOIN (SELECT opciones, contenido as G013_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G013') as temp16 ON t17.G013 = temp16.opciones
															) as t16
															INNER JOIN (SELECT opciones, contenido as G032_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G032') as temp15 ON t16.G032 = temp15.opciones
														) as t15
														INNER JOIN (SELECT opciones, contenido as G005_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G005') as temp14 ON t15.G005 = temp14.opciones
													) as t14
													INNER JOIN (SELECT opciones, contenido as G019_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G019') as temp13 ON t14.G019 = temp13.opciones
												) as t13
												INNER JOIN (SELECT opciones, contenido as ID_ENT_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='ID_ENT') as temp12 ON t13.ID_ENT = temp12.opciones
											) as t12
											INNER JOIN (SELECT opciones, contenido as G002_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G002') as temp11 ON t12.G002 = temp11.opciones
										) as t11
										INNER JOIN (SELECT opciones, contenido as G009_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G009') as temp10 ON t11.G009 = temp10.opciones
									) as t10
									INNER JOIN (SELECT opciones, contenido as G004_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G004') as temp9 ON t10.G004 = temp9.opciones
								) as t9
								INNER JOIN (SELECT opciones, contenido as G011_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G011') as temp8 ON t9.G011 = temp8.opciones
							) as t8
							INNER JOIN (SELECT opciones, contenido as G014_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G014') as temp7 ON t8.G014 = temp7.opciones
						) as t7
						INNER JOIN (SELECT opciones, contenido as G022_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G022') as temp6 ON t7.G022 = temp6.opciones
					) as t6
					INNER JOIN (SELECT opciones, contenido as G017_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G017') as temp5 ON t6.G017 = temp5.opciones
				) as t5
				INNER JOIN (SELECT opciones, contenido as G026_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G026') as temp4 ON t5.G026 = temp4.opciones
			) as t4
			INNER JOIN (SELECT opciones, contenido as G023_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G023') as temp3 ON t4.G023 = temp3.opciones
		) as t3
		INNER JOIN (SELECT opciones, contenido as ID_SERV_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='ID_SERV') as temp2 ON t3.ID_SERV = temp2.opciones
	) as t2
	INNER JOIN (SELECT opciones, contenido as G006_ FROM planea_schma.gruposetiquetasmin WHERE id_etiqueta='G006') as temp1 ON t2.G006 = temp1.opciones
);

-- DIRECTORES: COMPLETE AND CATEGORICAL
CREATE TABLE planea_schma.directoresFullCategoricalMin as(
SELECT
	escuela,
	estrato,
	id_instr,
	t2.D041_a_ as D041_a,
	t2.D069_ as D069,
	t2.D079_ as D079,
	t2.D025_ as D025,
	t2.D037_ as D037,
	t2.D032_ as D032,
	t2.D005_ as D005,
	t2.D021_ as D021,
	t2.D043_f_ as D043_f,
	t2.D073_ as D073,
	t2.D058_ as D058,
	t2.D077_ as D077,
	t2.D044_f_ as D044_f,
	t2.D042_d_ as D042_d,
	t2.D041_e_ as D041_e,
	t2.D067_ as D067,
	t2.D049_ as D049,
	t2.D002_ as D002,
	t2.D015_ as D015,
	t2.D010_ as D010,
	t2.D026_ as D026,
	t2.D041_d_ as D041_d,
	t2.D033_ as D033,
	t2.D044_d_ as D044_d,
	t2.D044_e_ as D044_e,
	t2.D068_ as D068,
	t2.D043_a_ as D043_a,
	t2.D007_ as D007,
	t2.D075_ as D075,
	t2.D043_b_ as D043_b,
	t2.D045_ as D045,
	t2.D042_a_ as D042_a,
	t2.D027_ as D027,
	t2.D035_ as D035,
	t2.D041_f_ as D041_f,
	t2.D014_ as D014,
	t2.D011_ as D011,
	t2.D039_ as D039,
	t2.D081_ as D081,
	t2.D044_a_ as D044_a,
	t2.D062_ as D062,
	t2.D042_e_ as D042_e,
	t2.D012_ as D012,
	t2.D064_ as D064,
	t2.D056_ as D056,
	t2.D076_ as D076,
	t2.D070_ as D070,
	t2.D019_ as D019,
	t2.D038_ as D038,
	t2.D047_ as D047,
	t2.D059_ as D059,
	t2.D017_ as D017,
	t2.D048_ as D048,
	t2.D061_ as D061,
	t2.D013_ as D013,
	t2.D034_ as D034,
	t2.D042_c_ as D042_c,
	t2.D042_b_ as D042_b,
	t2.D024_ as D024,
	t2.D072_ as D072,
	t2.D028_ as D028,
	t2.D009_ as D009,
	t2.D006_ as D006,
	t2.D042_f_ as D042_f,
	t2.D046_ as D046,
	t2.D053_ as D053,
	t2.D030_ as D030,
	t2.D071_ as D071,
	t2.D054_ as D054,
	t2.D041_c_ as D041_c,
	t2.D031_ as D031,
	t2.D004_ as D004,
	t2.D055_ as D055,
	t2.D023_ as D023,
	t2.D040_ as D040,
	t2.D065_ as D065,
	t2.D078_ as D078,
	t2.D066_ as D066,
	t2.D043_e_ as D043_e,
	t2.D022_ as D022,
	t2.D074_ as D074,
	t2.D050_ as D050,
	t2.D016_ as D016,
	t2.D043_c_ as D043_c,
	t2.D018_ as D018,
	t2.D057_ as D057,
	t2.D029_ as D029,
	t2.D043_d_ as D043_d,
	t2.D060_ as D060,
	t2.D044_c_ as D044_c,
	t2.D036_ as D036,
	t2.D044_b_ as D044_b,
	t2.D082_ as D082,
	t2.ID_ENT_ as ID_ENT,
	t2.D041_b_ as D041_b,
	t2.D008_ as D008,
	t2.D052_ as D052,
	t2.ID_SERV_ as ID_SERV,
	t2.D001_ as D001,
	t2.D020_ as D020,
	t2.D003_ as D003,
	t2.D063_ as D063,
	t2.D051_ as D051,
	D080_ as D080
FROM (
	SELECT *
	FROM (
		SELECT *
		FROM (
			SELECT *
			FROM (
				SELECT *
				FROM (
					SELECT *
					FROM (
						SELECT *
						FROM (
							SELECT *
							FROM (
								SELECT *
								FROM (
									SELECT *
									FROM (
										SELECT *
										FROM (
											SELECT *
											FROM (
												SELECT *
												FROM (
													SELECT *
													FROM (
														SELECT *
														FROM (
															SELECT *
															FROM (
																SELECT *
																FROM (
																	SELECT *
																	FROM (
																		SELECT *
																		FROM (
																			SELECT *
																			FROM (
																				SELECT *
																				FROM (
																					SELECT *
																					FROM (
																						SELECT *
																						FROM (
																							SELECT *
																							FROM (
																								SELECT *
																								FROM (
																									SELECT *
																									FROM (
																										SELECT *
																										FROM (
																											SELECT *
																											FROM (
																												SELECT *
																												FROM (
																													SELECT *
																													FROM (
																														SELECT *
																														FROM (
																															SELECT *
																															FROM (
																																SELECT *
																																FROM (
																																	SELECT *
																																	FROM (
																																		SELECT *
																																		FROM (
																																			SELECT *
																																			FROM (
																																				SELECT *
																																				FROM (
																																					SELECT *
																																					FROM (
																																						SELECT *
																																						FROM (
																																							SELECT *
																																							FROM (
																																								SELECT *
																																								FROM (
																																									SELECT *
																																									FROM (
																																										SELECT *
																																										FROM (
																																											SELECT *
																																											FROM (
																																												SELECT *
																																												FROM (
																																													SELECT *
																																													FROM (
																																														SELECT *
																																														FROM (
																																															SELECT *
																																															FROM (
																																																SELECT *
																																																FROM (
																																																	SELECT *
																																																	FROM (
																																																		SELECT *
																																																		FROM (
																																																			SELECT *
																																																			FROM (
																																																				SELECT *
																																																				FROM (
																																																					SELECT *
																																																					FROM (
																																																						SELECT *
																																																						FROM (
																																																							SELECT *
																																																							FROM (
																																																								SELECT *
																																																								FROM (
																																																									SELECT *
																																																									FROM (
																																																										SELECT *
																																																										FROM (
																																																											SELECT *
																																																											FROM (
																																																												SELECT *
																																																												FROM (
																																																													SELECT *
																																																													FROM (
																																																														SELECT *
																																																														FROM (
																																																															SELECT *
																																																															FROM (
																																																																SELECT *
																																																																FROM (
																																																																	SELECT *
																																																																	FROM (
																																																																		SELECT *
																																																																		FROM (
																																																																			SELECT *
																																																																			FROM (
																																																																				SELECT *
																																																																				FROM (
																																																																					SELECT *
																																																																					FROM (
																																																																						SELECT *
																																																																						FROM (
																																																																							SELECT *
																																																																							FROM (
																																																																								SELECT *
																																																																								FROM (
																																																																									SELECT *
																																																																									FROM (
																																																																										SELECT *
																																																																										FROM (
																																																																											SELECT *
																																																																											FROM (
																																																																												SELECT *
																																																																												FROM (
																																																																													SELECT *
																																																																													FROM (
																																																																														SELECT *
																																																																														FROM (
																																																																															SELECT *
																																																																															FROM (
																																																																																SELECT *
																																																																																FROM (
																																																																																	SELECT *
																																																																																	FROM (
																																																																																		SELECT *
																																																																																		FROM (
																																																																																			SELECT *
																																																																																			FROM (
																																																																																				SELECT *
																																																																																				FROM (
																																																																																					SELECT *
																																																																																					FROM (
																																																																																						SELECT *
																																																																																						FROM (
																																																																																							SELECT *
																																																																																							FROM (
																																																																																								SELECT *
																																																																																								FROM (
																																																																																									SELECT *
																																																																																									FROM (
																																																																																										SELECT *
																																																																																										FROM (
																																																																																											SELECT *
																																																																																											FROM (
																																																																																												SELECT *
																																																																																												FROM (
																																																																																													SELECT *
																																																																																													FROM (
																																																																																														SELECT *
																																																																																														FROM (
																																																																																															SELECT *
																																																																																															FROM (
																																																																																																SELECT *
																																																																																																FROM (
																																																																																																	SELECT *
																																																																																																	FROM (
																																																																																																		SELECT *
																																																																																																		FROM (
																																																																																																			SELECT *
																																																																																																			FROM (
																																																																																																				SELECT *
																																																																																																				FROM (
																																																																																																					SELECT *
																																																																																																					FROM (
																																																																																																						SELECT *
																																																																																																						FROM (
																																																																																																							SELECT *
																																																																																																							FROM (
																																																																																																								(SELECT opciones, contenido as D041_a_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_a') as temp104
																																																																																																								INNER JOIN planea_schma.directores ON planea_schma.directores.D041_a = temp104.opciones
																																																																																																							)
																																																																																																							) as t104
																																																																																																						INNER JOIN (SELECT opciones, contenido as D069_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D069') as temp103 ON t104.D069 = temp103.opciones
																																																																																																						) as t103
																																																																																																						INNER JOIN (SELECT opciones, contenido as D079_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D079') as temp102 ON t103.D079 = temp102.opciones
																																																																																																					) as t102
																																																																																																					INNER JOIN (SELECT opciones, contenido as D025_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D025') as temp101 ON t102.D025 = temp101.opciones
																																																																																																				) as t101
																																																																																																				INNER JOIN (SELECT opciones, contenido as D037_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D037') as temp100 ON t101.D037 = temp100.opciones
																																																																																																			) as t100
																																																																																																			INNER JOIN (SELECT opciones, contenido as D032_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D032') as temp99 ON t100.D032 = temp99.opciones
																																																																																																		) as t99
																																																																																																		INNER JOIN (SELECT opciones, contenido as D005_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D005') as temp98 ON t99.D005 = temp98.opciones
																																																																																																	) as t98
																																																																																																	INNER JOIN (SELECT opciones, contenido as D021_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D021') as temp97 ON t98.D021 = temp97.opciones
																																																																																																) as t97
																																																																																																INNER JOIN (SELECT opciones, contenido as D043_f_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_f') as temp96 ON t97.D043_f = temp96.opciones
																																																																																															) as t96
																																																																																															INNER JOIN (SELECT opciones, contenido as D073_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D073') as temp95 ON t96.D073 = temp95.opciones
																																																																																														) as t95
																																																																																														INNER JOIN (SELECT opciones, contenido as D058_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D058') as temp94 ON t95.D058 = temp94.opciones
																																																																																													) as t94
																																																																																													INNER JOIN (SELECT opciones, contenido as D077_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D077') as temp93 ON t94.D077 = temp93.opciones
																																																																																												) as t93
																																																																																												INNER JOIN (SELECT opciones, contenido as D044_f_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_f') as temp92 ON t93.D044_f = temp92.opciones
																																																																																											) as t92
																																																																																											INNER JOIN (SELECT opciones, contenido as D042_d_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_d') as temp91 ON t92.D042_d = temp91.opciones
																																																																																										) as t91
																																																																																										INNER JOIN (SELECT opciones, contenido as D041_e_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_e') as temp90 ON t91.D041_e = temp90.opciones
																																																																																									) as t90
																																																																																									INNER JOIN (SELECT opciones, contenido as D067_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D067') as temp89 ON t90.D067 = temp89.opciones
																																																																																								) as t89
																																																																																								INNER JOIN (SELECT opciones, contenido as D049_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D049') as temp88 ON t89.D049 = temp88.opciones
																																																																																							) as t88
																																																																																							INNER JOIN (SELECT opciones, contenido as D002_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D002') as temp87 ON t88.D002 = temp87.opciones
																																																																																						) as t87
																																																																																						INNER JOIN (SELECT opciones, contenido as D015_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D015') as temp86 ON t87.D015 = temp86.opciones
																																																																																					) as t86
																																																																																					INNER JOIN (SELECT opciones, contenido as D010_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D010') as temp85 ON t86.D010 = temp85.opciones
																																																																																				) as t85
																																																																																				INNER JOIN (SELECT opciones, contenido as D026_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D026') as temp84 ON t85.D026 = temp84.opciones
																																																																																			) as t84
																																																																																			INNER JOIN (SELECT opciones, contenido as D041_d_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_d') as temp83 ON t84.D041_d = temp83.opciones
																																																																																		) as t83
																																																																																		INNER JOIN (SELECT opciones, contenido as D033_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D033') as temp82 ON t83.D033 = temp82.opciones
																																																																																	) as t82
																																																																																	INNER JOIN (SELECT opciones, contenido as D044_d_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_d') as temp81 ON t82.D044_d = temp81.opciones
																																																																																) as t81
																																																																																INNER JOIN (SELECT opciones, contenido as D044_e_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_e') as temp80 ON t81.D044_e = temp80.opciones
																																																																															) as t80
																																																																															INNER JOIN (SELECT opciones, contenido as D068_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D068') as temp79 ON t80.D068 = temp79.opciones
																																																																														) as t79
																																																																														INNER JOIN (SELECT opciones, contenido as D043_a_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_a') as temp78 ON t79.D043_a = temp78.opciones
																																																																													) as t78
																																																																													INNER JOIN (SELECT opciones, contenido as D007_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D007') as temp77 ON t78.D007 = temp77.opciones
																																																																												) as t77
																																																																												INNER JOIN (SELECT opciones, contenido as D075_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D075') as temp76 ON t77.D075 = temp76.opciones
																																																																											) as t76
																																																																											INNER JOIN (SELECT opciones, contenido as D043_b_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_b') as temp75 ON t76.D043_b = temp75.opciones
																																																																										) as t75
																																																																										INNER JOIN (SELECT opciones, contenido as D045_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D045') as temp74 ON t75.D045 = temp74.opciones
																																																																									) as t74
																																																																									INNER JOIN (SELECT opciones, contenido as D042_a_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_a') as temp73 ON t74.D042_a = temp73.opciones
																																																																								) as t73
																																																																								INNER JOIN (SELECT opciones, contenido as D027_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D027') as temp72 ON t73.D027 = temp72.opciones
																																																																							) as t72
																																																																							INNER JOIN (SELECT opciones, contenido as D035_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D035') as temp71 ON t72.D035 = temp71.opciones
																																																																						) as t71
																																																																						INNER JOIN (SELECT opciones, contenido as D041_f_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_f') as temp70 ON t71.D041_f = temp70.opciones
																																																																					) as t70
																																																																					INNER JOIN (SELECT opciones, contenido as D014_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D014') as temp69 ON t70.D014 = temp69.opciones
																																																																				) as t69
																																																																				INNER JOIN (SELECT opciones, contenido as D011_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D011') as temp68 ON t69.D011 = temp68.opciones
																																																																			) as t68
																																																																			INNER JOIN (SELECT opciones, contenido as D039_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D039') as temp67 ON t68.D039 = temp67.opciones
																																																																		) as t67
																																																																		INNER JOIN (SELECT opciones, contenido as D081_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D081') as temp66 ON t67.D081 = temp66.opciones
																																																																	) as t66
																																																																	INNER JOIN (SELECT opciones, contenido as D044_a_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_a') as temp65 ON t66.D044_a = temp65.opciones
																																																																) as t65
																																																																INNER JOIN (SELECT opciones, contenido as D062_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D062') as temp64 ON t65.D062 = temp64.opciones
																																																															) as t64
																																																															INNER JOIN (SELECT opciones, contenido as D042_e_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_e') as temp63 ON t64.D042_e = temp63.opciones
																																																														) as t63
																																																														INNER JOIN (SELECT opciones, contenido as D012_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D012') as temp62 ON t63.D012 = temp62.opciones
																																																													) as t62
																																																													INNER JOIN (SELECT opciones, contenido as D064_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D064') as temp61 ON t62.D064 = temp61.opciones
																																																												) as t61
																																																												INNER JOIN (SELECT opciones, contenido as D056_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D056') as temp60 ON t61.D056 = temp60.opciones
																																																											) as t60
																																																											INNER JOIN (SELECT opciones, contenido as D076_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D076') as temp59 ON t60.D076 = temp59.opciones
																																																										) as t59
																																																										INNER JOIN (SELECT opciones, contenido as D070_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D070') as temp58 ON t59.D070 = temp58.opciones
																																																									) as t58
																																																									INNER JOIN (SELECT opciones, contenido as D019_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D019') as temp57 ON t58.D019 = temp57.opciones
																																																								) as t57
																																																								INNER JOIN (SELECT opciones, contenido as D038_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D038') as temp56 ON t57.D038 = temp56.opciones
																																																							) as t56
																																																							INNER JOIN (SELECT opciones, contenido as D047_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D047') as temp55 ON t56.D047 = temp55.opciones
																																																						) as t55
																																																						INNER JOIN (SELECT opciones, contenido as D059_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D059') as temp54 ON t55.D059 = temp54.opciones
																																																					) as t54
																																																					INNER JOIN (SELECT opciones, contenido as D017_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D017') as temp53 ON t54.D017 = temp53.opciones
																																																				) as t53
																																																				INNER JOIN (SELECT opciones, contenido as D048_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D048') as temp52 ON t53.D048 = temp52.opciones
																																																			) as t52
																																																			INNER JOIN (SELECT opciones, contenido as D061_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D061') as temp51 ON t52.D061 = temp51.opciones
																																																		) as t51
																																																		INNER JOIN (SELECT opciones, contenido as D013_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D013') as temp50 ON t51.D013 = temp50.opciones
																																																	) as t50
																																																	INNER JOIN (SELECT opciones, contenido as D034_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D034') as temp49 ON t50.D034 = temp49.opciones
																																																) as t49
																																																INNER JOIN (SELECT opciones, contenido as D042_c_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_c') as temp48 ON t49.D042_c = temp48.opciones
																																															) as t48
																																															INNER JOIN (SELECT opciones, contenido as D042_b_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_b') as temp47 ON t48.D042_b = temp47.opciones
																																														) as t47
																																														INNER JOIN (SELECT opciones, contenido as D024_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D024') as temp46 ON t47.D024 = temp46.opciones
																																													) as t46
																																													INNER JOIN (SELECT opciones, contenido as D072_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D072') as temp45 ON t46.D072 = temp45.opciones
																																												) as t45
																																												INNER JOIN (SELECT opciones, contenido as D028_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D028') as temp44 ON t45.D028 = temp44.opciones
																																											) as t44
																																											INNER JOIN (SELECT opciones, contenido as D009_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D009') as temp43 ON t44.D009 = temp43.opciones
																																										) as t43
																																										INNER JOIN (SELECT opciones, contenido as D006_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D006') as temp42 ON t43.D006 = temp42.opciones
																																									) as t42
																																									INNER JOIN (SELECT opciones, contenido as D042_f_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_f') as temp41 ON t42.D042_f = temp41.opciones
																																								) as t41
																																								INNER JOIN (SELECT opciones, contenido as D046_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D046') as temp40 ON t41.D046 = temp40.opciones
																																							) as t40
																																							INNER JOIN (SELECT opciones, contenido as D053_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D053') as temp39 ON t40.D053 = temp39.opciones
																																						) as t39
																																						INNER JOIN (SELECT opciones, contenido as D030_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D030') as temp38 ON t39.D030 = temp38.opciones
																																					) as t38
																																					INNER JOIN (SELECT opciones, contenido as D071_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D071') as temp37 ON t38.D071 = temp37.opciones
																																				) as t37
																																				INNER JOIN (SELECT opciones, contenido as D054_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D054') as temp36 ON t37.D054 = temp36.opciones
																																			) as t36
																																			INNER JOIN (SELECT opciones, contenido as D041_c_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_c') as temp35 ON t36.D041_c = temp35.opciones
																																		) as t35
																																		INNER JOIN (SELECT opciones, contenido as D031_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D031') as temp34 ON t35.D031 = temp34.opciones
																																	) as t34
																																	INNER JOIN (SELECT opciones, contenido as D004_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D004') as temp33 ON t34.D004 = temp33.opciones
																																) as t33
																																INNER JOIN (SELECT opciones, contenido as D055_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D055') as temp32 ON t33.D055 = temp32.opciones
																															) as t32
																															INNER JOIN (SELECT opciones, contenido as D023_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D023') as temp31 ON t32.D023 = temp31.opciones
																														) as t31
																														INNER JOIN (SELECT opciones, contenido as D040_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D040') as temp30 ON t31.D040 = temp30.opciones
																													) as t30
																													INNER JOIN (SELECT opciones, contenido as D065_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D065') as temp29 ON t30.D065 = temp29.opciones
																												) as t29
																												INNER JOIN (SELECT opciones, contenido as D078_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D078') as temp28 ON t29.D078 = temp28.opciones
																											) as t28
																											INNER JOIN (SELECT opciones, contenido as D066_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D066') as temp27 ON t28.D066 = temp27.opciones
																										) as t27
																										INNER JOIN (SELECT opciones, contenido as D043_e_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_e') as temp26 ON t27.D043_e = temp26.opciones
																									) as t26
																									INNER JOIN (SELECT opciones, contenido as D022_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D022') as temp25 ON t26.D022 = temp25.opciones
																								) as t25
																								INNER JOIN (SELECT opciones, contenido as D074_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D074') as temp24 ON t25.D074 = temp24.opciones
																							) as t24
																							INNER JOIN (SELECT opciones, contenido as D050_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D050') as temp23 ON t24.D050 = temp23.opciones
																						) as t23
																						INNER JOIN (SELECT opciones, contenido as D016_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D016') as temp22 ON t23.D016 = temp22.opciones
																					) as t22
																					INNER JOIN (SELECT opciones, contenido as D043_c_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_c') as temp21 ON t22.D043_c = temp21.opciones
																				) as t21
																				INNER JOIN (SELECT opciones, contenido as D018_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D018') as temp20 ON t21.D018 = temp20.opciones
																			) as t20
																			INNER JOIN (SELECT opciones, contenido as D057_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D057') as temp19 ON t20.D057 = temp19.opciones
																		) as t19
																		INNER JOIN (SELECT opciones, contenido as D029_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D029') as temp18 ON t19.D029 = temp18.opciones
																	) as t18
																	INNER JOIN (SELECT opciones, contenido as D043_d_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_d') as temp17 ON t18.D043_d = temp17.opciones
																) as t17
																INNER JOIN (SELECT opciones, contenido as D060_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D060') as temp16 ON t17.D060 = temp16.opciones
															) as t16
															INNER JOIN (SELECT opciones, contenido as D044_c_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_c') as temp15 ON t16.D044_c = temp15.opciones
														) as t15
														INNER JOIN (SELECT opciones, contenido as D036_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D036') as temp14 ON t15.D036 = temp14.opciones
													) as t14
													INNER JOIN (SELECT opciones, contenido as D044_b_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_b') as temp13 ON t14.D044_b = temp13.opciones
												) as t13
												INNER JOIN (SELECT opciones, contenido as D082_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D082') as temp12 ON t13.D082 = temp12.opciones
											) as t12
											INNER JOIN (SELECT opciones, contenido as ID_ENT_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='ID_ENT') as temp11 ON t12.ID_ENT = temp11.opciones
										) as t11
										INNER JOIN (SELECT opciones, contenido as D041_b_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_b') as temp10 ON t11.D041_b = temp10.opciones
									) as t10
									INNER JOIN (SELECT opciones, contenido as D008_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D008') as temp9 ON t10.D008 = temp9.opciones
								) as t9
								INNER JOIN (SELECT opciones, contenido as D052_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D052') as temp8 ON t9.D052 = temp8.opciones
							) as t8
							INNER JOIN (SELECT opciones, contenido as ID_SERV_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='ID_SERV') as temp7 ON t8.ID_SERV = temp7.opciones
						) as t7
						INNER JOIN (SELECT opciones, contenido as D001_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D001') as temp6 ON t7.D001 = temp6.opciones
					) as t6
					INNER JOIN (SELECT opciones, contenido as D020_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D020') as temp5 ON t6.D020 = temp5.opciones
				) as t5
				INNER JOIN (SELECT opciones, contenido as D003_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D003') as temp4 ON t5.D003 = temp4.opciones
			) as t4
			INNER JOIN (SELECT opciones, contenido as D063_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D063') as temp3 ON t4.D063 = temp3.opciones
		) as t3
		INNER JOIN (SELECT opciones, contenido as D051_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D051') as temp2 ON t3.D051 = temp2.opciones
	) as t2
	INNER JOIN (SELECT opciones, contenido as D080_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D080') as temp1 ON t2.D080 = temp1.opciones
);

CREATE TABLE planea_schma.directoresFullMin as(
SELECT
	escuela,
	estrato,
	id_instr,
	w_fschwt,
	w_fscr1,
	w_fscr2,
	w_fscr3,
	w_fscr4,
	w_fscr5,
	w_fscr6,
	w_fscr7,
	w_fscr8,
	w_fscr9,
	w_fscr10,
	w_fscr11,
	w_fscr12,
	w_fscr13,
	w_fscr14,
	w_fscr15,
	w_fscr16,
	w_fscr17,
	w_fscr18,
	w_fscr19,
	w_fscr20,
	w_fscr21,
	w_fscr22,
	w_fscr23,
	w_fscr24,
	w_fscr25,
	w_fscr26,
	w_fscr27,
	w_fscr28,
	w_fscr29,
	w_fscr30,
	w_fscr31,
	w_fscr32,
	w_fscr33,
	w_fscr34,
	w_fscr35,
	w_fscr36,
	w_fscr37,
	w_fscr38,
	w_fscr39,
	w_fscr40,
	w_fscr41,
	w_fscr42,
	w_fscr43,
	w_fscr44,
	w_fscr45,
	w_fscr46,
	w_fscr47,
	w_fscr48,
	w_fscr49,
	w_fscr50,
	w_fscr51,
	w_fscr52,
	w_fscr53,
	w_fscr54,
	w_fscr55,
	w_fscr56,
	w_fscr57,
	w_fscr58,
	w_fscr59,
	w_fscr60,
	w_fscr61,
	w_fscr62,
	w_fscr63,
	w_fscr64,
	w_fscr65,
	w_fscr66,
	w_fscr67,
	w_fscr68,
	w_fscr69,
	w_fscr70,
	w_fscr71,
	w_fscr72,
	w_fscr73,
	w_fscr74,
	w_fscr75,
	w_fscr76,
	w_fscr77,
	w_fscr78,
	w_fscr79,
	w_fscr80,
	w_fscr81,
	w_fscr82,
	w_fscr83,
	w_fscr84,
	w_fscr85,
	w_fscr86,
	w_fscr87,
	w_fscr88,
	w_fscr89,
	w_fscr90,
	w_fscr91,
	w_fscr92,
	w_fscr93,
	w_fscr94,
	w_fscr95,
	w_fscr96,
	w_fscr97,
	w_fscr98,
	w_fscr99,
	w_fscr100,
	t2.D041_a_ as D041_a,
	t2.D069_ as D069,
	t2.D079_ as D079,
	t2.D025_ as D025,
	t2.D037_ as D037,
	t2.D032_ as D032,
	t2.D005_ as D005,
	t2.D021_ as D021,
	t2.D043_f_ as D043_f,
	t2.D073_ as D073,
	t2.D058_ as D058,
	t2.D077_ as D077,
	t2.D044_f_ as D044_f,
	t2.D042_d_ as D042_d,
	t2.D041_e_ as D041_e,
	t2.D067_ as D067,
	t2.D049_ as D049,
	t2.D002_ as D002,
	t2.D015_ as D015,
	t2.D010_ as D010,
	t2.D026_ as D026,
	t2.D041_d_ as D041_d,
	t2.D033_ as D033,
	t2.D044_d_ as D044_d,
	t2.D044_e_ as D044_e,
	t2.D068_ as D068,
	t2.D043_a_ as D043_a,
	t2.D007_ as D007,
	t2.D075_ as D075,
	t2.D043_b_ as D043_b,
	t2.D045_ as D045,
	t2.D042_a_ as D042_a,
	t2.D027_ as D027,
	t2.D035_ as D035,
	t2.D041_f_ as D041_f,
	t2.D014_ as D014,
	t2.D011_ as D011,
	t2.D039_ as D039,
	t2.D081_ as D081,
	t2.D044_a_ as D044_a,
	t2.D062_ as D062,
	t2.D042_e_ as D042_e,
	t2.D012_ as D012,
	t2.D064_ as D064,
	t2.D056_ as D056,
	t2.D076_ as D076,
	t2.D070_ as D070,
	t2.D019_ as D019,
	t2.D038_ as D038,
	t2.D047_ as D047,
	t2.D059_ as D059,
	t2.D017_ as D017,
	t2.D048_ as D048,
	t2.D061_ as D061,
	t2.D013_ as D013,
	t2.D034_ as D034,
	t2.D042_c_ as D042_c,
	t2.D042_b_ as D042_b,
	t2.D024_ as D024,
	t2.D072_ as D072,
	t2.D028_ as D028,
	t2.D009_ as D009,
	t2.D006_ as D006,
	t2.D042_f_ as D042_f,
	t2.D046_ as D046,
	t2.D053_ as D053,
	t2.D030_ as D030,
	t2.D071_ as D071,
	t2.D054_ as D054,
	t2.D041_c_ as D041_c,
	t2.D031_ as D031,
	t2.D004_ as D004,
	t2.D055_ as D055,
	t2.D023_ as D023,
	t2.D040_ as D040,
	t2.D065_ as D065,
	t2.D078_ as D078,
	t2.D066_ as D066,
	t2.D043_e_ as D043_e,
	t2.D022_ as D022,
	t2.D074_ as D074,
	t2.D050_ as D050,
	t2.D016_ as D016,
	t2.D043_c_ as D043_c,
	t2.D018_ as D018,
	t2.D057_ as D057,
	t2.D029_ as D029,
	t2.D043_d_ as D043_d,
	t2.D060_ as D060,
	t2.D044_c_ as D044_c,
	t2.D036_ as D036,
	t2.D044_b_ as D044_b,
	t2.D082_ as D082,
	t2.ID_ENT_ as ID_ENT,
	t2.D041_b_ as D041_b,
	t2.D008_ as D008,
	t2.D052_ as D052,
	t2.ID_SERV_ as ID_SERV,
	t2.D001_ as D001,
	t2.D020_ as D020,
	t2.D003_ as D003,
	t2.D063_ as D063,
	t2.D051_ as D051,
	D080_ as D080
FROM (
	SELECT *
	FROM (
		SELECT *
		FROM (
			SELECT *
			FROM (
				SELECT *
				FROM (
					SELECT *
					FROM (
						SELECT *
						FROM (
							SELECT *
							FROM (
								SELECT *
								FROM (
									SELECT *
									FROM (
										SELECT *
										FROM (
											SELECT *
											FROM (
												SELECT *
												FROM (
													SELECT *
													FROM (
														SELECT *
														FROM (
															SELECT *
															FROM (
																SELECT *
																FROM (
																	SELECT *
																	FROM (
																		SELECT *
																		FROM (
																			SELECT *
																			FROM (
																				SELECT *
																				FROM (
																					SELECT *
																					FROM (
																						SELECT *
																						FROM (
																							SELECT *
																							FROM (
																								SELECT *
																								FROM (
																									SELECT *
																									FROM (
																										SELECT *
																										FROM (
																											SELECT *
																											FROM (
																												SELECT *
																												FROM (
																													SELECT *
																													FROM (
																														SELECT *
																														FROM (
																															SELECT *
																															FROM (
																																SELECT *
																																FROM (
																																	SELECT *
																																	FROM (
																																		SELECT *
																																		FROM (
																																			SELECT *
																																			FROM (
																																				SELECT *
																																				FROM (
																																					SELECT *
																																					FROM (
																																						SELECT *
																																						FROM (
																																							SELECT *
																																							FROM (
																																								SELECT *
																																								FROM (
																																									SELECT *
																																									FROM (
																																										SELECT *
																																										FROM (
																																											SELECT *
																																											FROM (
																																												SELECT *
																																												FROM (
																																													SELECT *
																																													FROM (
																																														SELECT *
																																														FROM (
																																															SELECT *
																																															FROM (
																																																SELECT *
																																																FROM (
																																																	SELECT *
																																																	FROM (
																																																		SELECT *
																																																		FROM (
																																																			SELECT *
																																																			FROM (
																																																				SELECT *
																																																				FROM (
																																																					SELECT *
																																																					FROM (
																																																						SELECT *
																																																						FROM (
																																																							SELECT *
																																																							FROM (
																																																								SELECT *
																																																								FROM (
																																																									SELECT *
																																																									FROM (
																																																										SELECT *
																																																										FROM (
																																																											SELECT *
																																																											FROM (
																																																												SELECT *
																																																												FROM (
																																																													SELECT *
																																																													FROM (
																																																														SELECT *
																																																														FROM (
																																																															SELECT *
																																																															FROM (
																																																																SELECT *
																																																																FROM (
																																																																	SELECT *
																																																																	FROM (
																																																																		SELECT *
																																																																		FROM (
																																																																			SELECT *
																																																																			FROM (
																																																																				SELECT *
																																																																				FROM (
																																																																					SELECT *
																																																																					FROM (
																																																																						SELECT *
																																																																						FROM (
																																																																							SELECT *
																																																																							FROM (
																																																																								SELECT *
																																																																								FROM (
																																																																									SELECT *
																																																																									FROM (
																																																																										SELECT *
																																																																										FROM (
																																																																											SELECT *
																																																																											FROM (
																																																																												SELECT *
																																																																												FROM (
																																																																													SELECT *
																																																																													FROM (
																																																																														SELECT *
																																																																														FROM (
																																																																															SELECT *
																																																																															FROM (
																																																																																SELECT *
																																																																																FROM (
																																																																																	SELECT *
																																																																																	FROM (
																																																																																		SELECT *
																																																																																		FROM (
																																																																																			SELECT *
																																																																																			FROM (
																																																																																				SELECT *
																																																																																				FROM (
																																																																																					SELECT *
																																																																																					FROM (
																																																																																						SELECT *
																																																																																						FROM (
																																																																																							SELECT *
																																																																																							FROM (
																																																																																								SELECT *
																																																																																								FROM (
																																																																																									SELECT *
																																																																																									FROM (
																																																																																										SELECT *
																																																																																										FROM (
																																																																																											SELECT *
																																																																																											FROM (
																																																																																												SELECT *
																																																																																												FROM (
																																																																																													SELECT *
																																																																																													FROM (
																																																																																														SELECT *
																																																																																														FROM (
																																																																																															SELECT *
																																																																																															FROM (
																																																																																																SELECT *
																																																																																																FROM (
																																																																																																	SELECT *
																																																																																																	FROM (
																																																																																																		SELECT *
																																																																																																		FROM (
																																																																																																			SELECT *
																																																																																																			FROM (
																																																																																																				SELECT *
																																																																																																				FROM (
																																																																																																					SELECT *
																																																																																																					FROM (
																																																																																																						SELECT *
																																																																																																						FROM (
																																																																																																							SELECT *
																																																																																																							FROM (
																																																																																																								(SELECT opciones, contenido as D041_a_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_a') as temp104
																																																																																																								INNER JOIN planea_schma.directores ON planea_schma.directores.D041_a = temp104.opciones
																																																																																																							)
																																																																																																							) as t104
																																																																																																						INNER JOIN (SELECT opciones, contenido as D069_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D069') as temp103 ON t104.D069 = temp103.opciones
																																																																																																						) as t103
																																																																																																						INNER JOIN (SELECT opciones, contenido as D079_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D079') as temp102 ON t103.D079 = temp102.opciones
																																																																																																					) as t102
																																																																																																					INNER JOIN (SELECT opciones, contenido as D025_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D025') as temp101 ON t102.D025 = temp101.opciones
																																																																																																				) as t101
																																																																																																				INNER JOIN (SELECT opciones, contenido as D037_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D037') as temp100 ON t101.D037 = temp100.opciones
																																																																																																			) as t100
																																																																																																			INNER JOIN (SELECT opciones, contenido as D032_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D032') as temp99 ON t100.D032 = temp99.opciones
																																																																																																		) as t99
																																																																																																		INNER JOIN (SELECT opciones, contenido as D005_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D005') as temp98 ON t99.D005 = temp98.opciones
																																																																																																	) as t98
																																																																																																	INNER JOIN (SELECT opciones, contenido as D021_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D021') as temp97 ON t98.D021 = temp97.opciones
																																																																																																) as t97
																																																																																																INNER JOIN (SELECT opciones, contenido as D043_f_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_f') as temp96 ON t97.D043_f = temp96.opciones
																																																																																															) as t96
																																																																																															INNER JOIN (SELECT opciones, contenido as D073_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D073') as temp95 ON t96.D073 = temp95.opciones
																																																																																														) as t95
																																																																																														INNER JOIN (SELECT opciones, contenido as D058_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D058') as temp94 ON t95.D058 = temp94.opciones
																																																																																													) as t94
																																																																																													INNER JOIN (SELECT opciones, contenido as D077_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D077') as temp93 ON t94.D077 = temp93.opciones
																																																																																												) as t93
																																																																																												INNER JOIN (SELECT opciones, contenido as D044_f_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_f') as temp92 ON t93.D044_f = temp92.opciones
																																																																																											) as t92
																																																																																											INNER JOIN (SELECT opciones, contenido as D042_d_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_d') as temp91 ON t92.D042_d = temp91.opciones
																																																																																										) as t91
																																																																																										INNER JOIN (SELECT opciones, contenido as D041_e_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_e') as temp90 ON t91.D041_e = temp90.opciones
																																																																																									) as t90
																																																																																									INNER JOIN (SELECT opciones, contenido as D067_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D067') as temp89 ON t90.D067 = temp89.opciones
																																																																																								) as t89
																																																																																								INNER JOIN (SELECT opciones, contenido as D049_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D049') as temp88 ON t89.D049 = temp88.opciones
																																																																																							) as t88
																																																																																							INNER JOIN (SELECT opciones, contenido as D002_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D002') as temp87 ON t88.D002 = temp87.opciones
																																																																																						) as t87
																																																																																						INNER JOIN (SELECT opciones, contenido as D015_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D015') as temp86 ON t87.D015 = temp86.opciones
																																																																																					) as t86
																																																																																					INNER JOIN (SELECT opciones, contenido as D010_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D010') as temp85 ON t86.D010 = temp85.opciones
																																																																																				) as t85
																																																																																				INNER JOIN (SELECT opciones, contenido as D026_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D026') as temp84 ON t85.D026 = temp84.opciones
																																																																																			) as t84
																																																																																			INNER JOIN (SELECT opciones, contenido as D041_d_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_d') as temp83 ON t84.D041_d = temp83.opciones
																																																																																		) as t83
																																																																																		INNER JOIN (SELECT opciones, contenido as D033_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D033') as temp82 ON t83.D033 = temp82.opciones
																																																																																	) as t82
																																																																																	INNER JOIN (SELECT opciones, contenido as D044_d_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_d') as temp81 ON t82.D044_d = temp81.opciones
																																																																																) as t81
																																																																																INNER JOIN (SELECT opciones, contenido as D044_e_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_e') as temp80 ON t81.D044_e = temp80.opciones
																																																																															) as t80
																																																																															INNER JOIN (SELECT opciones, contenido as D068_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D068') as temp79 ON t80.D068 = temp79.opciones
																																																																														) as t79
																																																																														INNER JOIN (SELECT opciones, contenido as D043_a_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_a') as temp78 ON t79.D043_a = temp78.opciones
																																																																													) as t78
																																																																													INNER JOIN (SELECT opciones, contenido as D007_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D007') as temp77 ON t78.D007 = temp77.opciones
																																																																												) as t77
																																																																												INNER JOIN (SELECT opciones, contenido as D075_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D075') as temp76 ON t77.D075 = temp76.opciones
																																																																											) as t76
																																																																											INNER JOIN (SELECT opciones, contenido as D043_b_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_b') as temp75 ON t76.D043_b = temp75.opciones
																																																																										) as t75
																																																																										INNER JOIN (SELECT opciones, contenido as D045_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D045') as temp74 ON t75.D045 = temp74.opciones
																																																																									) as t74
																																																																									INNER JOIN (SELECT opciones, contenido as D042_a_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_a') as temp73 ON t74.D042_a = temp73.opciones
																																																																								) as t73
																																																																								INNER JOIN (SELECT opciones, contenido as D027_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D027') as temp72 ON t73.D027 = temp72.opciones
																																																																							) as t72
																																																																							INNER JOIN (SELECT opciones, contenido as D035_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D035') as temp71 ON t72.D035 = temp71.opciones
																																																																						) as t71
																																																																						INNER JOIN (SELECT opciones, contenido as D041_f_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_f') as temp70 ON t71.D041_f = temp70.opciones
																																																																					) as t70
																																																																					INNER JOIN (SELECT opciones, contenido as D014_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D014') as temp69 ON t70.D014 = temp69.opciones
																																																																				) as t69
																																																																				INNER JOIN (SELECT opciones, contenido as D011_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D011') as temp68 ON t69.D011 = temp68.opciones
																																																																			) as t68
																																																																			INNER JOIN (SELECT opciones, contenido as D039_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D039') as temp67 ON t68.D039 = temp67.opciones
																																																																		) as t67
																																																																		INNER JOIN (SELECT opciones, contenido as D081_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D081') as temp66 ON t67.D081 = temp66.opciones
																																																																	) as t66
																																																																	INNER JOIN (SELECT opciones, contenido as D044_a_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_a') as temp65 ON t66.D044_a = temp65.opciones
																																																																) as t65
																																																																INNER JOIN (SELECT opciones, contenido as D062_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D062') as temp64 ON t65.D062 = temp64.opciones
																																																															) as t64
																																																															INNER JOIN (SELECT opciones, contenido as D042_e_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_e') as temp63 ON t64.D042_e = temp63.opciones
																																																														) as t63
																																																														INNER JOIN (SELECT opciones, contenido as D012_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D012') as temp62 ON t63.D012 = temp62.opciones
																																																													) as t62
																																																													INNER JOIN (SELECT opciones, contenido as D064_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D064') as temp61 ON t62.D064 = temp61.opciones
																																																												) as t61
																																																												INNER JOIN (SELECT opciones, contenido as D056_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D056') as temp60 ON t61.D056 = temp60.opciones
																																																											) as t60
																																																											INNER JOIN (SELECT opciones, contenido as D076_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D076') as temp59 ON t60.D076 = temp59.opciones
																																																										) as t59
																																																										INNER JOIN (SELECT opciones, contenido as D070_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D070') as temp58 ON t59.D070 = temp58.opciones
																																																									) as t58
																																																									INNER JOIN (SELECT opciones, contenido as D019_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D019') as temp57 ON t58.D019 = temp57.opciones
																																																								) as t57
																																																								INNER JOIN (SELECT opciones, contenido as D038_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D038') as temp56 ON t57.D038 = temp56.opciones
																																																							) as t56
																																																							INNER JOIN (SELECT opciones, contenido as D047_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D047') as temp55 ON t56.D047 = temp55.opciones
																																																						) as t55
																																																						INNER JOIN (SELECT opciones, contenido as D059_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D059') as temp54 ON t55.D059 = temp54.opciones
																																																					) as t54
																																																					INNER JOIN (SELECT opciones, contenido as D017_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D017') as temp53 ON t54.D017 = temp53.opciones
																																																				) as t53
																																																				INNER JOIN (SELECT opciones, contenido as D048_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D048') as temp52 ON t53.D048 = temp52.opciones
																																																			) as t52
																																																			INNER JOIN (SELECT opciones, contenido as D061_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D061') as temp51 ON t52.D061 = temp51.opciones
																																																		) as t51
																																																		INNER JOIN (SELECT opciones, contenido as D013_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D013') as temp50 ON t51.D013 = temp50.opciones
																																																	) as t50
																																																	INNER JOIN (SELECT opciones, contenido as D034_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D034') as temp49 ON t50.D034 = temp49.opciones
																																																) as t49
																																																INNER JOIN (SELECT opciones, contenido as D042_c_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_c') as temp48 ON t49.D042_c = temp48.opciones
																																															) as t48
																																															INNER JOIN (SELECT opciones, contenido as D042_b_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_b') as temp47 ON t48.D042_b = temp47.opciones
																																														) as t47
																																														INNER JOIN (SELECT opciones, contenido as D024_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D024') as temp46 ON t47.D024 = temp46.opciones
																																													) as t46
																																													INNER JOIN (SELECT opciones, contenido as D072_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D072') as temp45 ON t46.D072 = temp45.opciones
																																												) as t45
																																												INNER JOIN (SELECT opciones, contenido as D028_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D028') as temp44 ON t45.D028 = temp44.opciones
																																											) as t44
																																											INNER JOIN (SELECT opciones, contenido as D009_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D009') as temp43 ON t44.D009 = temp43.opciones
																																										) as t43
																																										INNER JOIN (SELECT opciones, contenido as D006_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D006') as temp42 ON t43.D006 = temp42.opciones
																																									) as t42
																																									INNER JOIN (SELECT opciones, contenido as D042_f_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D042_f') as temp41 ON t42.D042_f = temp41.opciones
																																								) as t41
																																								INNER JOIN (SELECT opciones, contenido as D046_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D046') as temp40 ON t41.D046 = temp40.opciones
																																							) as t40
																																							INNER JOIN (SELECT opciones, contenido as D053_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D053') as temp39 ON t40.D053 = temp39.opciones
																																						) as t39
																																						INNER JOIN (SELECT opciones, contenido as D030_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D030') as temp38 ON t39.D030 = temp38.opciones
																																					) as t38
																																					INNER JOIN (SELECT opciones, contenido as D071_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D071') as temp37 ON t38.D071 = temp37.opciones
																																				) as t37
																																				INNER JOIN (SELECT opciones, contenido as D054_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D054') as temp36 ON t37.D054 = temp36.opciones
																																			) as t36
																																			INNER JOIN (SELECT opciones, contenido as D041_c_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_c') as temp35 ON t36.D041_c = temp35.opciones
																																		) as t35
																																		INNER JOIN (SELECT opciones, contenido as D031_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D031') as temp34 ON t35.D031 = temp34.opciones
																																	) as t34
																																	INNER JOIN (SELECT opciones, contenido as D004_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D004') as temp33 ON t34.D004 = temp33.opciones
																																) as t33
																																INNER JOIN (SELECT opciones, contenido as D055_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D055') as temp32 ON t33.D055 = temp32.opciones
																															) as t32
																															INNER JOIN (SELECT opciones, contenido as D023_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D023') as temp31 ON t32.D023 = temp31.opciones
																														) as t31
																														INNER JOIN (SELECT opciones, contenido as D040_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D040') as temp30 ON t31.D040 = temp30.opciones
																													) as t30
																													INNER JOIN (SELECT opciones, contenido as D065_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D065') as temp29 ON t30.D065 = temp29.opciones
																												) as t29
																												INNER JOIN (SELECT opciones, contenido as D078_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D078') as temp28 ON t29.D078 = temp28.opciones
																											) as t28
																											INNER JOIN (SELECT opciones, contenido as D066_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D066') as temp27 ON t28.D066 = temp27.opciones
																										) as t27
																										INNER JOIN (SELECT opciones, contenido as D043_e_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_e') as temp26 ON t27.D043_e = temp26.opciones
																									) as t26
																									INNER JOIN (SELECT opciones, contenido as D022_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D022') as temp25 ON t26.D022 = temp25.opciones
																								) as t25
																								INNER JOIN (SELECT opciones, contenido as D074_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D074') as temp24 ON t25.D074 = temp24.opciones
																							) as t24
																							INNER JOIN (SELECT opciones, contenido as D050_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D050') as temp23 ON t24.D050 = temp23.opciones
																						) as t23
																						INNER JOIN (SELECT opciones, contenido as D016_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D016') as temp22 ON t23.D016 = temp22.opciones
																					) as t22
																					INNER JOIN (SELECT opciones, contenido as D043_c_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_c') as temp21 ON t22.D043_c = temp21.opciones
																				) as t21
																				INNER JOIN (SELECT opciones, contenido as D018_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D018') as temp20 ON t21.D018 = temp20.opciones
																			) as t20
																			INNER JOIN (SELECT opciones, contenido as D057_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D057') as temp19 ON t20.D057 = temp19.opciones
																		) as t19
																		INNER JOIN (SELECT opciones, contenido as D029_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D029') as temp18 ON t19.D029 = temp18.opciones
																	) as t18
																	INNER JOIN (SELECT opciones, contenido as D043_d_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D043_d') as temp17 ON t18.D043_d = temp17.opciones
																) as t17
																INNER JOIN (SELECT opciones, contenido as D060_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D060') as temp16 ON t17.D060 = temp16.opciones
															) as t16
															INNER JOIN (SELECT opciones, contenido as D044_c_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_c') as temp15 ON t16.D044_c = temp15.opciones
														) as t15
														INNER JOIN (SELECT opciones, contenido as D036_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D036') as temp14 ON t15.D036 = temp14.opciones
													) as t14
													INNER JOIN (SELECT opciones, contenido as D044_b_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D044_b') as temp13 ON t14.D044_b = temp13.opciones
												) as t13
												INNER JOIN (SELECT opciones, contenido as D082_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D082') as temp12 ON t13.D082 = temp12.opciones
											) as t12
											INNER JOIN (SELECT opciones, contenido as ID_ENT_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='ID_ENT') as temp11 ON t12.ID_ENT = temp11.opciones
										) as t11
										INNER JOIN (SELECT opciones, contenido as D041_b_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D041_b') as temp10 ON t11.D041_b = temp10.opciones
									) as t10
									INNER JOIN (SELECT opciones, contenido as D008_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D008') as temp9 ON t10.D008 = temp9.opciones
								) as t9
								INNER JOIN (SELECT opciones, contenido as D052_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D052') as temp8 ON t9.D052 = temp8.opciones
							) as t8
							INNER JOIN (SELECT opciones, contenido as ID_SERV_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='ID_SERV') as temp7 ON t8.ID_SERV = temp7.opciones
						) as t7
						INNER JOIN (SELECT opciones, contenido as D001_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D001') as temp6 ON t7.D001 = temp6.opciones
					) as t6
					INNER JOIN (SELECT opciones, contenido as D020_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D020') as temp5 ON t6.D020 = temp5.opciones
				) as t5
				INNER JOIN (SELECT opciones, contenido as D003_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D003') as temp4 ON t5.D003 = temp4.opciones
			) as t4
			INNER JOIN (SELECT opciones, contenido as D063_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D063') as temp3 ON t4.D063 = temp3.opciones
		) as t3
		INNER JOIN (SELECT opciones, contenido as D051_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D051') as temp2 ON t3.D051 = temp2.opciones
	) as t2
	INNER JOIN (SELECT opciones, contenido as D080_ FROM planea_schma.directoresetiquetasmin WHERE id_etiqueta='D080') as temp1 ON t2.D080 = temp1.opciones
);

-- ALUMNOS: COMPLETE AND CATEGORICAL
-- CATEGORICAL
CREATE TABLE planea_schma.alumnosFullMin AS (
SELECT
	alumno,
	escuela,
	grupo,
	estrato,
	id_lyc_instr,
	id_mat_instr,
	w_fstuwt,
	pv1lyc,
	pv2lyc,
	pv3lyc,
	pv4lyc,
	pv5lyc,
	pv1mat,
	pv2mat,
	pv3mat,
	pv4mat,
	pv5mat,
	rfab,
	w_fstr1,
	w_fstr2,
	w_fstr3,
	w_fstr4,
	w_fstr5,
	w_fstr6,
	w_fstr7,
	w_fstr8,
	w_fstr9,
	w_fstr10,
	w_fstr11,
	w_fstr12,
	w_fstr13,
	w_fstr14,
	w_fstr15,
	w_fstr16,
	w_fstr17,
	w_fstr18,
	w_fstr19,
	w_fstr20,
	w_fstr21,
	w_fstr22,
	w_fstr23,
	w_fstr24,
	w_fstr25,
	w_fstr26,
	w_fstr27,
	w_fstr28,
	w_fstr29,
	w_fstr30,
	w_fstr31,
	w_fstr32,
	w_fstr33,
	w_fstr34,
	w_fstr35,
	w_fstr36,
	w_fstr37,
	w_fstr38,
	w_fstr39,
	w_fstr40,
	w_fstr41,
	w_fstr42,
	w_fstr43,
	w_fstr44,
	w_fstr45,
	w_fstr46,
	w_fstr47,
	w_fstr48,
	w_fstr49,
	w_fstr50,
	w_fstr51,
	w_fstr52,
	w_fstr53,
	w_fstr54,
	w_fstr55,
	w_fstr56,
	w_fstr57,
	w_fstr58,
	w_fstr59,
	w_fstr60,
	w_fstr61,
	w_fstr62,
	w_fstr63,
	w_fstr64,
	w_fstr65,
	w_fstr66,
	w_fstr67,
	w_fstr68,
	w_fstr69,
	w_fstr70,
	w_fstr71,
	w_fstr72,
	w_fstr73,
	w_fstr74,
	w_fstr75,
	w_fstr76,
	w_fstr77,
	w_fstr78,
	w_fstr79,
	w_fstr80,
	w_fstr81,
	w_fstr82,
	w_fstr83,
	w_fstr84,
	w_fstr85,
	w_fstr86,
	w_fstr87,
	w_fstr88,
	w_fstr89,
	w_fstr90,
	w_fstr91,
	w_fstr92,
	w_fstr93,
	w_fstr94,
	w_fstr95,
	w_fstr96,
	w_fstr97,
	w_fstr98,
	w_fstr99,
	w_fstr100,
	t2.MATNVLII3_ as MATNVLII3,
	t2.AB003_ as AB003,
	t2.AB065_ as AB065,
	t2.RFABNVL_ as RFABNVL,
	t2.AB037_ as AB037,
	t2.AB038_ as AB038,
	t2.LYCNVLIII4_ as LYCNVLIII4,
	t2.AB013_ as AB013,
	t2.LYCNVLII5_ as LYCNVLII5,
	t2.MATNVLIII1_ as MATNVLIII1,
	t2.AB016_ as AB016,
	t2.EDAD_EES_ as EDAD_EES,
	t2.AB010_ as AB010,
	t2.AB076_ as AB076,
	t2.AB053_ as AB053,
	t2.I_MULTIGRADO_ as I_MULTIGRADO,
	t2.AB060_ as AB060,
	t2.AB057_ as AB057,
	t2.EDAD_N_ as EDAD_N,
	t2.AB021_ as AB021,
	t2.MATNVL2_ as MATNVL2,
	t2.AB058_ as AB058,
	t2.MATNVL4_ as MATNVL4,
	t2.AB063_ as AB063,
	t2.MATNVLII1_ as MATNVLII1,
	t2.AB004_ as AB004,
	t2.AB029_ as AB029,
	t2.AB059_ as AB059,
	t2.LYCNVLIII2_ as LYCNVLIII2,
	t2.TAM_LOC_SEC_ as TAM_LOC_SEC,
	t2.AB039_ as AB039,
	t2.AB014_ as AB014,
	t2.LYCNVLIII3_ as LYCNVLIII3,
	t2.AB044_ as AB044,
	t2.AB005_ as AB005,
	t2.LYCNVLII3_ as LYCNVLII3,
	t2.LYCNVLII4_ as LYCNVLII4,
	t2.AB052_ as AB052,
	t2.AB069_ as AB069,
	t2.AB067_ as AB067,
	t2.MATNVLIII2_ as MATNVLIII2,
	t2.AB073_ as AB073,
	t2.AB062_ as AB062,
	t2.AB081_ as AB081,
	t2.MATNVLIII5_ as MATNVLIII5,
	t2.AB070_ as AB070,
	t2.MATNVLII2_ as MATNVLII2,
	t2.AB009_ as AB009,
	t2.AB034_ as AB034,
	t2.AB015_ as AB015,
	t2.AB025_ as AB025,
	t2.EDAD_AC_ as EDAD_AC,
	t2.AB046_ as AB046,
	t2.AB074_ as AB074,
	t2.MATNVLII4_ as MATNVLII4,
	t2.AB031_ as AB031,
	t2.AB002_ as AB002,
	t2.AB028_ as AB028,
	t2.AB051_ as AB051,
	t2.AB068_ as AB068,
	t2.AB030_ as AB030,
	t2.AB020_ as AB020,
	t2.AB061_ as AB061,
	t2.AB019_ as AB019,
	t2.MATNVL3_ as MATNVL3,
	t2.MATNVLII5_ as MATNVLII5,
	t2.AB048_ as AB048,
	t2.LYCNVL5_ as LYCNVL5,
	t2.AB035_ as AB035,
	t2.AB047_ as AB047,
	t2.AB066_ as AB066,
	t2.AB006_ as AB006,
	t2.SEXO_ as SEXO,
	t2.MES_NAC_ as MES_NAC,
	t2.AB008_ as AB008,
	t2.AB042_ as AB042,
	t2.AB054_ as AB054,
	t2.LYCNVLII1_ as LYCNVLII1,
	t2.AB072_ as AB072,
	t2.AB080_ as AB080,
	t2.LYCNVLIII5_ as LYCNVLIII5,
	t2.AB077_ as AB077,
	t2.AB082_ as AB082,
	t2.I_RFAB_ as I_RFAB,
	t2.AB079_ as AB079,
	t2.AB022_ as AB022,
	t2.AB023_ as AB023,
	t2.MARGINC_ as MARGINC,
	t2.AB040_ as AB040,
	t2.AB001_ as AB001,
	t2.LYCNVL1_ as LYCNVL1,
	t2.AB017_ as AB017,
	t2.AB026_ as AB026,
	t2.AB050_ as AB050,
	t2.LYCNVLII2_ as LYCNVLII2,
	t2.AB064_ as AB064,
	t2.LYCNVLIII1_ as LYCNVLIII1,
	t2.AB007_ as AB007,
	t2.AB018_ as AB018,
	t2.AB045_ as AB045,
	t2.AB011_ as AB011,
	t2.AB027_ as AB027,
	t2.AB049_ as AB049,
	t2.LYCNVL3_ as LYCNVL3,
	t2.AB041_ as AB041,
	t2.AB055_ as AB055,
	t2.MATNVL1_ as MATNVL1,
	t2.AB056_ as AB056,
	t2.AB012_ as AB012,
	t2.AB033_ as AB033,
	t2.ID_ENT_ as ID_ENT,
	t2.AB032_ as AB032,
	t2.MATNVLIII3_ as MATNVLIII3,
	t2.LYCNVL4_ as LYCNVL4,
	t2.AB024_ as AB024,
	t2.LYCNVL2_ as LYCNVL2,
	t2.ID_SERV_ as ID_SERV,
	t2.MATNVL5_ as MATNVL5,
	t2.EDAD_ANT_ as EDAD_ANT,
	t2.MATNVLIII4_ as MATNVLIII4,
	t2.AB075_ as AB075,
	t2.AB071_ as AB071,
	t2.AB036_ as AB036,
	t2.AB043_ as AB043,
	AB078_ as AB078
FROM (
	SELECT *
	FROM (
		SELECT *
		FROM (
			SELECT *
			FROM (
				SELECT *
				FROM (
					SELECT *
					FROM (
						SELECT *
						FROM (
							SELECT *
							FROM (
								SELECT *
								FROM (
									SELECT *
									FROM (
										SELECT *
										FROM (
											SELECT *
											FROM (
												SELECT *
												FROM (
													SELECT *
													FROM (
														SELECT *
														FROM (
															SELECT *
															FROM (
																SELECT *
																FROM (
																	SELECT *
																	FROM (
																		SELECT *
																		FROM (
																			SELECT *
																			FROM (
																				SELECT *
																				FROM (
																					SELECT *
																					FROM (
																						SELECT *
																						FROM (
																							SELECT *
																							FROM (
																								SELECT *
																								FROM (
																									SELECT *
																									FROM (
																										SELECT *
																										FROM (
																											SELECT *
																											FROM (
																												SELECT *
																												FROM (
																													SELECT *
																													FROM (
																														SELECT *
																														FROM (
																															SELECT *
																															FROM (
																																SELECT *
																																FROM (
																																	SELECT *
																																	FROM (
																																		SELECT *
																																		FROM (
																																			SELECT *
																																			FROM (
																																				SELECT *
																																				FROM (
																																					SELECT *
																																					FROM (
																																						SELECT *
																																						FROM (
																																							SELECT *
																																							FROM (
																																								SELECT *
																																								FROM (
																																									SELECT *
																																									FROM (
																																										SELECT *
																																										FROM (
																																											SELECT *
																																											FROM (
																																												SELECT *
																																												FROM (
																																													SELECT *
																																													FROM (
																																														SELECT *
																																														FROM (
																																															SELECT *
																																															FROM (
																																																SELECT *
																																																FROM (
																																																	SELECT *
																																																	FROM (
																																																		SELECT *
																																																		FROM (
																																																			SELECT *
																																																			FROM (
																																																				SELECT *
																																																				FROM (
																																																					SELECT *
																																																					FROM (
																																																						SELECT *
																																																						FROM (
																																																							SELECT *
																																																							FROM (
																																																								SELECT *
																																																								FROM (
																																																									SELECT *
																																																									FROM (
																																																										SELECT *
																																																										FROM (
																																																											SELECT *
																																																											FROM (
																																																												SELECT *
																																																												FROM (
																																																													SELECT *
																																																													FROM (
																																																														SELECT *
																																																														FROM (
																																																															SELECT *
																																																															FROM (
																																																																SELECT *
																																																																FROM (
																																																																	SELECT *
																																																																	FROM (
																																																																		SELECT *
																																																																		FROM (
																																																																			SELECT *
																																																																			FROM (
																																																																				SELECT *
																																																																				FROM (
																																																																					SELECT *
																																																																					FROM (
																																																																						SELECT *
																																																																						FROM (
																																																																							SELECT *
																																																																							FROM (
																																																																								SELECT *
																																																																								FROM (
																																																																									SELECT *
																																																																									FROM (
																																																																										SELECT *
																																																																										FROM (
																																																																											SELECT *
																																																																											FROM (
																																																																												SELECT *
																																																																												FROM (
																																																																													SELECT *
																																																																													FROM (
																																																																														SELECT *
																																																																														FROM (
																																																																															SELECT *
																																																																															FROM (
																																																																																SELECT *
																																																																																FROM (
																																																																																	SELECT *
																																																																																	FROM (
																																																																																		SELECT *
																																																																																		FROM (
																																																																																			SELECT *
																																																																																			FROM (
																																																																																				SELECT *
																																																																																				FROM (
																																																																																					SELECT *
																																																																																					FROM (
																																																																																						SELECT *
																																																																																						FROM (
																																																																																							SELECT *
																																																																																							FROM (
																																																																																								SELECT *
																																																																																								FROM (
																																																																																									SELECT *
																																																																																									FROM (
																																																																																										SELECT *
																																																																																										FROM (
																																																																																											SELECT *
																																																																																											FROM (
																																																																																												SELECT *
																																																																																												FROM (
																																																																																													SELECT *
																																																																																													FROM (
																																																																																														SELECT *
																																																																																														FROM (
																																																																																															SELECT *
																																																																																															FROM (
																																																																																																SELECT *
																																																																																																FROM (
																																																																																																	SELECT *
																																																																																																	FROM (
																																																																																																		SELECT *
																																																																																																		FROM (
																																																																																																			SELECT *
																																																																																																			FROM (
																																																																																																				SELECT *
																																																																																																				FROM (
																																																																																																					SELECT *
																																																																																																					FROM (
																																																																																																						SELECT *
																																																																																																						FROM (
																																																																																																							SELECT *
																																																																																																							FROM (
																																																																																																								SELECT *
																																																																																																								FROM (
																																																																																																									SELECT *
																																																																																																									FROM (
																																																																																																										SELECT *
																																																																																																										FROM (
																																																																																																											SELECT *
																																																																																																											FROM (
																																																																																																												SELECT *
																																																																																																												FROM (
																																																																																																													SELECT *
																																																																																																													FROM (
																																																																																																														SELECT *
																																																																																																														FROM (
																																																																																																															SELECT *
																																																																																																															FROM (
																																																																																																																SELECT *
																																																																																																																FROM (
																																																																																																																	SELECT *
																																																																																																																	FROM (
																																																																																																																		SELECT *
																																																																																																																		FROM (
																																																																																																																			SELECT *
																																																																																																																			FROM (
																																																																																																																				SELECT *
																																																																																																																				FROM (
																																																																																																																					SELECT *
																																																																																																																					FROM (
																																																																																																																						SELECT *
																																																																																																																						FROM (
																																																																																																																							SELECT *
																																																																																																																							FROM (
																																																																																																																								SELECT *
																																																																																																																								FROM (
																																																																																																																									SELECT *
																																																																																																																									FROM (
																																																																																																																										SELECT *
																																																																																																																										FROM (
																																																																																																																											SELECT *
																																																																																																																											FROM (
																																																																																																																												SELECT *
																																																																																																																												FROM (
																																																																																																																													(SELECT opciones, contenido as MATNVLII3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLII3') as temp125
																																																																																																																													INNER JOIN planea_schma.alumnos ON planea_schma.alumnos.MATNVLII3 = temp125.opciones
																																																																																																																												)
																																																																																																																												) as t125
																																																																																																																											INNER JOIN (SELECT opciones, contenido as AB003_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB003') as temp124 ON t125.AB003 = temp124.opciones
																																																																																																																											) as t124
																																																																																																																											INNER JOIN (SELECT opciones, contenido as AB065_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB065') as temp123 ON t124.AB065 = temp123.opciones
																																																																																																																										) as t123
																																																																																																																										INNER JOIN (SELECT opciones, contenido as RFABNVL_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='RFABNVL') as temp122 ON t123.RFABNVL = temp122.opciones
																																																																																																																									) as t122
																																																																																																																									INNER JOIN (SELECT opciones, contenido as AB037_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB037') as temp121 ON t122.AB037 = temp121.opciones
																																																																																																																								) as t121
																																																																																																																								INNER JOIN (SELECT opciones, contenido as AB038_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB038') as temp120 ON t121.AB038 = temp120.opciones
																																																																																																																							) as t120
																																																																																																																							INNER JOIN (SELECT opciones, contenido as LYCNVLIII4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLIII4') as temp119 ON t120.LYCNVLIII4 = temp119.opciones
																																																																																																																						) as t119
																																																																																																																						INNER JOIN (SELECT opciones, contenido as AB013_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB013') as temp118 ON t119.AB013 = temp118.opciones
																																																																																																																					) as t118
																																																																																																																					INNER JOIN (SELECT opciones, contenido as LYCNVLII5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLII5') as temp117 ON t118.LYCNVLII5 = temp117.opciones
																																																																																																																				) as t117
																																																																																																																				INNER JOIN (SELECT opciones, contenido as MATNVLIII1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLIII1') as temp116 ON t117.MATNVLIII1 = temp116.opciones
																																																																																																																			) as t116
																																																																																																																			INNER JOIN (SELECT opciones, contenido as AB016_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB016') as temp115 ON t116.AB016 = temp115.opciones
																																																																																																																		) as t115
																																																																																																																		INNER JOIN (SELECT opciones, contenido as EDAD_EES_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='EDAD_EES') as temp114 ON t115.EDAD_EES = temp114.opciones
																																																																																																																	) as t114
																																																																																																																	INNER JOIN (SELECT opciones, contenido as AB010_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB010') as temp113 ON t114.AB010 = temp113.opciones
																																																																																																																) as t113
																																																																																																																INNER JOIN (SELECT opciones, contenido as AB076_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB076') as temp112 ON t113.AB076 = temp112.opciones
																																																																																																															) as t112
																																																																																																															INNER JOIN (SELECT opciones, contenido as AB053_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB053') as temp111 ON t112.AB053 = temp111.opciones
																																																																																																														) as t111
																																																																																																														INNER JOIN (SELECT opciones, contenido as I_MULTIGRADO_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='I_MULTIGRADO') as temp110 ON t111.I_MULTIGRADO = temp110.opciones
																																																																																																													) as t110
																																																																																																													INNER JOIN (SELECT opciones, contenido as AB060_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB060') as temp109 ON t110.AB060 = temp109.opciones
																																																																																																												) as t109
																																																																																																												INNER JOIN (SELECT opciones, contenido as AB057_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB057') as temp108 ON t109.AB057 = temp108.opciones
																																																																																																											) as t108
																																																																																																											INNER JOIN (SELECT opciones, contenido as EDAD_N_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='EDAD_N') as temp107 ON t108.EDAD_N = temp107.opciones
																																																																																																										) as t107
																																																																																																										INNER JOIN (SELECT opciones, contenido as AB021_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB021') as temp106 ON t107.AB021 = temp106.opciones
																																																																																																									) as t106
																																																																																																									INNER JOIN (SELECT opciones, contenido as MATNVL2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVL2') as temp105 ON t106.MATNVL2 = temp105.opciones
																																																																																																								) as t105
																																																																																																								INNER JOIN (SELECT opciones, contenido as AB058_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB058') as temp104 ON t105.AB058 = temp104.opciones
																																																																																																							) as t104
																																																																																																							INNER JOIN (SELECT opciones, contenido as MATNVL4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVL4') as temp103 ON t104.MATNVL4 = temp103.opciones
																																																																																																						) as t103
																																																																																																						INNER JOIN (SELECT opciones, contenido as AB063_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB063') as temp102 ON t103.AB063 = temp102.opciones
																																																																																																					) as t102
																																																																																																					INNER JOIN (SELECT opciones, contenido as MATNVLII1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLII1') as temp101 ON t102.MATNVLII1 = temp101.opciones
																																																																																																				) as t101
																																																																																																				INNER JOIN (SELECT opciones, contenido as AB004_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB004') as temp100 ON t101.AB004 = temp100.opciones
																																																																																																			) as t100
																																																																																																			INNER JOIN (SELECT opciones, contenido as AB029_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB029') as temp99 ON t100.AB029 = temp99.opciones
																																																																																																		) as t99
																																																																																																		INNER JOIN (SELECT opciones, contenido as AB059_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB059') as temp98 ON t99.AB059 = temp98.opciones
																																																																																																	) as t98
																																																																																																	INNER JOIN (SELECT opciones, contenido as LYCNVLIII2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLIII2') as temp97 ON t98.LYCNVLIII2 = temp97.opciones
																																																																																																) as t97
																																																																																																INNER JOIN (SELECT opciones, contenido as TAM_LOC_SEC_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='TAM_LOC_SEC') as temp96 ON t97.TAM_LOC_SEC = temp96.opciones
																																																																																															) as t96
																																																																																															INNER JOIN (SELECT opciones, contenido as AB039_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB039') as temp95 ON t96.AB039 = temp95.opciones
																																																																																														) as t95
																																																																																														INNER JOIN (SELECT opciones, contenido as AB014_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB014') as temp94 ON t95.AB014 = temp94.opciones
																																																																																													) as t94
																																																																																													INNER JOIN (SELECT opciones, contenido as LYCNVLIII3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLIII3') as temp93 ON t94.LYCNVLIII3 = temp93.opciones
																																																																																												) as t93
																																																																																												INNER JOIN (SELECT opciones, contenido as AB044_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB044') as temp92 ON t93.AB044 = temp92.opciones
																																																																																											) as t92
																																																																																											INNER JOIN (SELECT opciones, contenido as AB005_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB005') as temp91 ON t92.AB005 = temp91.opciones
																																																																																										) as t91
																																																																																										INNER JOIN (SELECT opciones, contenido as LYCNVLII3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLII3') as temp90 ON t91.LYCNVLII3 = temp90.opciones
																																																																																									) as t90
																																																																																									INNER JOIN (SELECT opciones, contenido as LYCNVLII4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLII4') as temp89 ON t90.LYCNVLII4 = temp89.opciones
																																																																																								) as t89
																																																																																								INNER JOIN (SELECT opciones, contenido as AB052_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB052') as temp88 ON t89.AB052 = temp88.opciones
																																																																																							) as t88
																																																																																							INNER JOIN (SELECT opciones, contenido as AB069_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB069') as temp87 ON t88.AB069 = temp87.opciones
																																																																																						) as t87
																																																																																						INNER JOIN (SELECT opciones, contenido as AB067_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB067') as temp86 ON t87.AB067 = temp86.opciones
																																																																																					) as t86
																																																																																					INNER JOIN (SELECT opciones, contenido as MATNVLIII2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLIII2') as temp85 ON t86.MATNVLIII2 = temp85.opciones
																																																																																				) as t85
																																																																																				INNER JOIN (SELECT opciones, contenido as AB073_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB073') as temp84 ON t85.AB073 = temp84.opciones
																																																																																			) as t84
																																																																																			INNER JOIN (SELECT opciones, contenido as AB062_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB062') as temp83 ON t84.AB062 = temp83.opciones
																																																																																		) as t83
																																																																																		INNER JOIN (SELECT opciones, contenido as AB081_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB081') as temp82 ON t83.AB081 = temp82.opciones
																																																																																	) as t82
																																																																																	INNER JOIN (SELECT opciones, contenido as MATNVLIII5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLIII5') as temp81 ON t82.MATNVLIII5 = temp81.opciones
																																																																																) as t81
																																																																																INNER JOIN (SELECT opciones, contenido as AB070_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB070') as temp80 ON t81.AB070 = temp80.opciones
																																																																															) as t80
																																																																															INNER JOIN (SELECT opciones, contenido as MATNVLII2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLII2') as temp79 ON t80.MATNVLII2 = temp79.opciones
																																																																														) as t79
																																																																														INNER JOIN (SELECT opciones, contenido as AB009_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB009') as temp78 ON t79.AB009 = temp78.opciones
																																																																													) as t78
																																																																													INNER JOIN (SELECT opciones, contenido as AB034_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB034') as temp77 ON t78.AB034 = temp77.opciones
																																																																												) as t77
																																																																												INNER JOIN (SELECT opciones, contenido as AB015_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB015') as temp76 ON t77.AB015 = temp76.opciones
																																																																											) as t76
																																																																											INNER JOIN (SELECT opciones, contenido as AB025_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB025') as temp75 ON t76.AB025 = temp75.opciones
																																																																										) as t75
																																																																										INNER JOIN (SELECT opciones, contenido as EDAD_AC_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='EDAD_AC') as temp74 ON t75.EDAD_AC = temp74.opciones
																																																																									) as t74
																																																																									INNER JOIN (SELECT opciones, contenido as AB046_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB046') as temp73 ON t74.AB046 = temp73.opciones
																																																																								) as t73
																																																																								INNER JOIN (SELECT opciones, contenido as AB074_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB074') as temp72 ON t73.AB074 = temp72.opciones
																																																																							) as t72
																																																																							INNER JOIN (SELECT opciones, contenido as MATNVLII4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLII4') as temp71 ON t72.MATNVLII4 = temp71.opciones
																																																																						) as t71
																																																																						INNER JOIN (SELECT opciones, contenido as AB031_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB031') as temp70 ON t71.AB031 = temp70.opciones
																																																																					) as t70
																																																																					INNER JOIN (SELECT opciones, contenido as AB002_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB002') as temp69 ON t70.AB002 = temp69.opciones
																																																																				) as t69
																																																																				INNER JOIN (SELECT opciones, contenido as AB028_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB028') as temp68 ON t69.AB028 = temp68.opciones
																																																																			) as t68
																																																																			INNER JOIN (SELECT opciones, contenido as AB051_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB051') as temp67 ON t68.AB051 = temp67.opciones
																																																																		) as t67
																																																																		INNER JOIN (SELECT opciones, contenido as AB068_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB068') as temp66 ON t67.AB068 = temp66.opciones
																																																																	) as t66
																																																																	INNER JOIN (SELECT opciones, contenido as AB030_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB030') as temp65 ON t66.AB030 = temp65.opciones
																																																																) as t65
																																																																INNER JOIN (SELECT opciones, contenido as AB020_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB020') as temp64 ON t65.AB020 = temp64.opciones
																																																															) as t64
																																																															INNER JOIN (SELECT opciones, contenido as AB061_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB061') as temp63 ON t64.AB061 = temp63.opciones
																																																														) as t63
																																																														INNER JOIN (SELECT opciones, contenido as AB019_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB019') as temp62 ON t63.AB019 = temp62.opciones
																																																													) as t62
																																																													INNER JOIN (SELECT opciones, contenido as MATNVL3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVL3') as temp61 ON t62.MATNVL3 = temp61.opciones
																																																												) as t61
																																																												INNER JOIN (SELECT opciones, contenido as MATNVLII5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLII5') as temp60 ON t61.MATNVLII5 = temp60.opciones
																																																											) as t60
																																																											INNER JOIN (SELECT opciones, contenido as AB048_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB048') as temp59 ON t60.AB048 = temp59.opciones
																																																										) as t59
																																																										INNER JOIN (SELECT opciones, contenido as LYCNVL5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVL5') as temp58 ON t59.LYCNVL5 = temp58.opciones
																																																									) as t58
																																																									INNER JOIN (SELECT opciones, contenido as AB035_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB035') as temp57 ON t58.AB035 = temp57.opciones
																																																								) as t57
																																																								INNER JOIN (SELECT opciones, contenido as AB047_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB047') as temp56 ON t57.AB047 = temp56.opciones
																																																							) as t56
																																																							INNER JOIN (SELECT opciones, contenido as AB066_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB066') as temp55 ON t56.AB066 = temp55.opciones
																																																						) as t55
																																																						INNER JOIN (SELECT opciones, contenido as AB006_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB006') as temp54 ON t55.AB006 = temp54.opciones
																																																					) as t54
																																																					INNER JOIN (SELECT opciones, contenido as SEXO_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='SEXO') as temp53 ON t54.SEXO = temp53.opciones
																																																				) as t53
																																																				INNER JOIN (SELECT opciones, contenido as MES_NAC_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MES_NAC') as temp52 ON t53.MES_NAC = temp52.opciones
																																																			) as t52
																																																			INNER JOIN (SELECT opciones, contenido as AB008_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB008') as temp51 ON t52.AB008 = temp51.opciones
																																																		) as t51
																																																		INNER JOIN (SELECT opciones, contenido as AB042_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB042') as temp50 ON t51.AB042 = temp50.opciones
																																																	) as t50
																																																	INNER JOIN (SELECT opciones, contenido as AB054_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB054') as temp49 ON t50.AB054 = temp49.opciones
																																																) as t49
																																																INNER JOIN (SELECT opciones, contenido as LYCNVLII1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLII1') as temp48 ON t49.LYCNVLII1 = temp48.opciones
																																															) as t48
																																															INNER JOIN (SELECT opciones, contenido as AB072_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB072') as temp47 ON t48.AB072 = temp47.opciones
																																														) as t47
																																														INNER JOIN (SELECT opciones, contenido as AB080_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB080') as temp46 ON t47.AB080 = temp46.opciones
																																													) as t46
																																													INNER JOIN (SELECT opciones, contenido as LYCNVLIII5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLIII5') as temp45 ON t46.LYCNVLIII5 = temp45.opciones
																																												) as t45
																																												INNER JOIN (SELECT opciones, contenido as AB077_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB077') as temp44 ON t45.AB077 = temp44.opciones
																																											) as t44
																																											INNER JOIN (SELECT opciones, contenido as AB082_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB082') as temp43 ON t44.AB082 = temp43.opciones
																																										) as t43
																																										INNER JOIN (SELECT opciones, contenido as I_RFAB_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='I_RFAB') as temp42 ON t43.I_RFAB = temp42.opciones
																																									) as t42
																																									INNER JOIN (SELECT opciones, contenido as AB079_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB079') as temp41 ON t42.AB079 = temp41.opciones
																																								) as t41
																																								INNER JOIN (SELECT opciones, contenido as AB022_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB022') as temp40 ON t41.AB022 = temp40.opciones
																																							) as t40
																																							INNER JOIN (SELECT opciones, contenido as AB023_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB023') as temp39 ON t40.AB023 = temp39.opciones
																																						) as t39
																																						INNER JOIN (SELECT opciones, contenido as MARGINC_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MARGINC') as temp38 ON t39.MARGINC = temp38.opciones
																																					) as t38
																																					INNER JOIN (SELECT opciones, contenido as AB040_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB040') as temp37 ON t38.AB040 = temp37.opciones
																																				) as t37
																																				INNER JOIN (SELECT opciones, contenido as AB001_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB001') as temp36 ON t37.AB001 = temp36.opciones
																																			) as t36
																																			INNER JOIN (SELECT opciones, contenido as LYCNVL1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVL1') as temp35 ON t36.LYCNVL1 = temp35.opciones
																																		) as t35
																																		INNER JOIN (SELECT opciones, contenido as AB017_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB017') as temp34 ON t35.AB017 = temp34.opciones
																																	) as t34
																																	INNER JOIN (SELECT opciones, contenido as AB026_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB026') as temp33 ON t34.AB026 = temp33.opciones
																																) as t33
																																INNER JOIN (SELECT opciones, contenido as AB050_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB050') as temp32 ON t33.AB050 = temp32.opciones
																															) as t32
																															INNER JOIN (SELECT opciones, contenido as LYCNVLII2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLII2') as temp31 ON t32.LYCNVLII2 = temp31.opciones
																														) as t31
																														INNER JOIN (SELECT opciones, contenido as AB064_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB064') as temp30 ON t31.AB064 = temp30.opciones
																													) as t30
																													INNER JOIN (SELECT opciones, contenido as LYCNVLIII1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLIII1') as temp29 ON t30.LYCNVLIII1 = temp29.opciones
																												) as t29
																												INNER JOIN (SELECT opciones, contenido as AB007_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB007') as temp28 ON t29.AB007 = temp28.opciones
																											) as t28
																											INNER JOIN (SELECT opciones, contenido as AB018_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB018') as temp27 ON t28.AB018 = temp27.opciones
																										) as t27
																										INNER JOIN (SELECT opciones, contenido as AB045_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB045') as temp26 ON t27.AB045 = temp26.opciones
																									) as t26
																									INNER JOIN (SELECT opciones, contenido as AB011_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB011') as temp25 ON t26.AB011 = temp25.opciones
																								) as t25
																								INNER JOIN (SELECT opciones, contenido as AB027_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB027') as temp24 ON t25.AB027 = temp24.opciones
																							) as t24
																							INNER JOIN (SELECT opciones, contenido as AB049_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB049') as temp23 ON t24.AB049 = temp23.opciones
																						) as t23
																						INNER JOIN (SELECT opciones, contenido as LYCNVL3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVL3') as temp22 ON t23.LYCNVL3 = temp22.opciones
																					) as t22
																					INNER JOIN (SELECT opciones, contenido as AB041_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB041') as temp21 ON t22.AB041 = temp21.opciones
																				) as t21
																				INNER JOIN (SELECT opciones, contenido as AB055_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB055') as temp20 ON t21.AB055 = temp20.opciones
																			) as t20
																			INNER JOIN (SELECT opciones, contenido as MATNVL1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVL1') as temp19 ON t20.MATNVL1 = temp19.opciones
																		) as t19
																		INNER JOIN (SELECT opciones, contenido as AB056_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB056') as temp18 ON t19.AB056 = temp18.opciones
																	) as t18
																	INNER JOIN (SELECT opciones, contenido as AB012_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB012') as temp17 ON t18.AB012 = temp17.opciones
																) as t17
																INNER JOIN (SELECT opciones, contenido as AB033_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB033') as temp16 ON t17.AB033 = temp16.opciones
															) as t16
															INNER JOIN (SELECT opciones, contenido as ID_ENT_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='ID_ENT') as temp15 ON t16.ID_ENT = temp15.opciones
														) as t15
														INNER JOIN (SELECT opciones, contenido as AB032_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB032') as temp14 ON t15.AB032 = temp14.opciones
													) as t14
													INNER JOIN (SELECT opciones, contenido as MATNVLIII3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLIII3') as temp13 ON t14.MATNVLIII3 = temp13.opciones
												) as t13
												INNER JOIN (SELECT opciones, contenido as LYCNVL4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVL4') as temp12 ON t13.LYCNVL4 = temp12.opciones
											) as t12
											INNER JOIN (SELECT opciones, contenido as AB024_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB024') as temp11 ON t12.AB024 = temp11.opciones
										) as t11
										INNER JOIN (SELECT opciones, contenido as LYCNVL2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVL2') as temp10 ON t11.LYCNVL2 = temp10.opciones
									) as t10
									INNER JOIN (SELECT opciones, contenido as ID_SERV_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='ID_SERV') as temp9 ON t10.ID_SERV = temp9.opciones
								) as t9
								INNER JOIN (SELECT opciones, contenido as MATNVL5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVL5') as temp8 ON t9.MATNVL5 = temp8.opciones
							) as t8
							INNER JOIN (SELECT opciones, contenido as EDAD_ANT_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='EDAD_ANT') as temp7 ON t8.EDAD_ANT = temp7.opciones
						) as t7
						INNER JOIN (SELECT opciones, contenido as MATNVLIII4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLIII4') as temp6 ON t7.MATNVLIII4 = temp6.opciones
					) as t6
					INNER JOIN (SELECT opciones, contenido as AB075_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB075') as temp5 ON t6.AB075 = temp5.opciones
				) as t5
				INNER JOIN (SELECT opciones, contenido as AB071_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB071') as temp4 ON t5.AB071 = temp4.opciones
			) as t4
			INNER JOIN (SELECT opciones, contenido as AB036_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB036') as temp3 ON t4.AB036 = temp3.opciones
		) as t3
		INNER JOIN (SELECT opciones, contenido as AB043_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB043') as temp2 ON t3.AB043 = temp2.opciones
	) as t2
	INNER JOIN (SELECT opciones, contenido as AB078_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB078') as temp1 ON t2.AB078 = temp1.opciones
);

--COMPLETE
CREATE TABLE planea_schma.alumnosFullCategoricalMin as(
SELECT
	alumno,
	escuela,
	grupo,
	estrato,
	id_lyc_instr,
	id_mat_instr,
	t2.MATNVLII3_ as MATNVLII3,
	t2.AB003_ as AB003,
	t2.AB065_ as AB065,
	t2.RFABNVL_ as RFABNVL,
	t2.AB037_ as AB037,
	t2.AB038_ as AB038,
	t2.LYCNVLIII4_ as LYCNVLIII4,
	t2.AB013_ as AB013,
	t2.LYCNVLII5_ as LYCNVLII5,
	t2.MATNVLIII1_ as MATNVLIII1,
	t2.AB016_ as AB016,
	t2.EDAD_EES_ as EDAD_EES,
	t2.AB010_ as AB010,
	t2.AB076_ as AB076,
	t2.AB053_ as AB053,
	t2.I_MULTIGRADO_ as I_MULTIGRADO,
	t2.AB060_ as AB060,
	t2.AB057_ as AB057,
	t2.EDAD_N_ as EDAD_N,
	t2.AB021_ as AB021,
	t2.MATNVL2_ as MATNVL2,
	t2.AB058_ as AB058,
	t2.MATNVL4_ as MATNVL4,
	t2.AB063_ as AB063,
	t2.MATNVLII1_ as MATNVLII1,
	t2.AB004_ as AB004,
	t2.AB029_ as AB029,
	t2.AB059_ as AB059,
	t2.LYCNVLIII2_ as LYCNVLIII2,
	t2.TAM_LOC_SEC_ as TAM_LOC_SEC,
	t2.AB039_ as AB039,
	t2.AB014_ as AB014,
	t2.LYCNVLIII3_ as LYCNVLIII3,
	t2.AB044_ as AB044,
	t2.AB005_ as AB005,
	t2.LYCNVLII3_ as LYCNVLII3,
	t2.LYCNVLII4_ as LYCNVLII4,
	t2.AB052_ as AB052,
	t2.AB069_ as AB069,
	t2.AB067_ as AB067,
	t2.MATNVLIII2_ as MATNVLIII2,
	t2.AB073_ as AB073,
	t2.AB062_ as AB062,
	t2.AB081_ as AB081,
	t2.MATNVLIII5_ as MATNVLIII5,
	t2.AB070_ as AB070,
	t2.MATNVLII2_ as MATNVLII2,
	t2.AB009_ as AB009,
	t2.AB034_ as AB034,
	t2.AB015_ as AB015,
	t2.AB025_ as AB025,
	t2.EDAD_AC_ as EDAD_AC,
	t2.AB046_ as AB046,
	t2.AB074_ as AB074,
	t2.MATNVLII4_ as MATNVLII4,
	t2.AB031_ as AB031,
	t2.AB002_ as AB002,
	t2.AB028_ as AB028,
	t2.AB051_ as AB051,
	t2.AB068_ as AB068,
	t2.AB030_ as AB030,
	t2.AB020_ as AB020,
	t2.AB061_ as AB061,
	t2.AB019_ as AB019,
	t2.MATNVL3_ as MATNVL3,
	t2.MATNVLII5_ as MATNVLII5,
	t2.AB048_ as AB048,
	t2.LYCNVL5_ as LYCNVL5,
	t2.AB035_ as AB035,
	t2.AB047_ as AB047,
	t2.AB066_ as AB066,
	t2.AB006_ as AB006,
	t2.SEXO_ as SEXO,
	t2.MES_NAC_ as MES_NAC,
	t2.AB008_ as AB008,
	t2.AB042_ as AB042,
	t2.AB054_ as AB054,
	t2.LYCNVLII1_ as LYCNVLII1,
	t2.AB072_ as AB072,
	t2.AB080_ as AB080,
	t2.LYCNVLIII5_ as LYCNVLIII5,
	t2.AB077_ as AB077,
	t2.AB082_ as AB082,
	t2.I_RFAB_ as I_RFAB,
	t2.AB079_ as AB079,
	t2.AB022_ as AB022,
	t2.AB023_ as AB023,
	t2.MARGINC_ as MARGINC,
	t2.AB040_ as AB040,
	t2.AB001_ as AB001,
	t2.LYCNVL1_ as LYCNVL1,
	t2.AB017_ as AB017,
	t2.AB026_ as AB026,
	t2.AB050_ as AB050,
	t2.LYCNVLII2_ as LYCNVLII2,
	t2.AB064_ as AB064,
	t2.LYCNVLIII1_ as LYCNVLIII1,
	t2.AB007_ as AB007,
	t2.AB018_ as AB018,
	t2.AB045_ as AB045,
	t2.AB011_ as AB011,
	t2.AB027_ as AB027,
	t2.AB049_ as AB049,
	t2.LYCNVL3_ as LYCNVL3,
	t2.AB041_ as AB041,
	t2.AB055_ as AB055,
	t2.MATNVL1_ as MATNVL1,
	t2.AB056_ as AB056,
	t2.AB012_ as AB012,
	t2.AB033_ as AB033,
	t2.ID_ENT_ as ID_ENT,
	t2.AB032_ as AB032,
	t2.MATNVLIII3_ as MATNVLIII3,
	t2.LYCNVL4_ as LYCNVL4,
	t2.AB024_ as AB024,
	t2.LYCNVL2_ as LYCNVL2,
	t2.ID_SERV_ as ID_SERV,
	t2.MATNVL5_ as MATNVL5,
	t2.EDAD_ANT_ as EDAD_ANT,
	t2.MATNVLIII4_ as MATNVLIII4,
	t2.AB075_ as AB075,
	t2.AB071_ as AB071,
	t2.AB036_ as AB036,
	t2.AB043_ as AB043,
	AB078_ as AB078
FROM (
	SELECT *
	FROM (
		SELECT *
		FROM (
			SELECT *
			FROM (
				SELECT *
				FROM (
					SELECT *
					FROM (
						SELECT *
						FROM (
							SELECT *
							FROM (
								SELECT *
								FROM (
									SELECT *
									FROM (
										SELECT *
										FROM (
											SELECT *
											FROM (
												SELECT *
												FROM (
													SELECT *
													FROM (
														SELECT *
														FROM (
															SELECT *
															FROM (
																SELECT *
																FROM (
																	SELECT *
																	FROM (
																		SELECT *
																		FROM (
																			SELECT *
																			FROM (
																				SELECT *
																				FROM (
																					SELECT *
																					FROM (
																						SELECT *
																						FROM (
																							SELECT *
																							FROM (
																								SELECT *
																								FROM (
																									SELECT *
																									FROM (
																										SELECT *
																										FROM (
																											SELECT *
																											FROM (
																												SELECT *
																												FROM (
																													SELECT *
																													FROM (
																														SELECT *
																														FROM (
																															SELECT *
																															FROM (
																																SELECT *
																																FROM (
																																	SELECT *
																																	FROM (
																																		SELECT *
																																		FROM (
																																			SELECT *
																																			FROM (
																																				SELECT *
																																				FROM (
																																					SELECT *
																																					FROM (
																																						SELECT *
																																						FROM (
																																							SELECT *
																																							FROM (
																																								SELECT *
																																								FROM (
																																									SELECT *
																																									FROM (
																																										SELECT *
																																										FROM (
																																											SELECT *
																																											FROM (
																																												SELECT *
																																												FROM (
																																													SELECT *
																																													FROM (
																																														SELECT *
																																														FROM (
																																															SELECT *
																																															FROM (
																																																SELECT *
																																																FROM (
																																																	SELECT *
																																																	FROM (
																																																		SELECT *
																																																		FROM (
																																																			SELECT *
																																																			FROM (
																																																				SELECT *
																																																				FROM (
																																																					SELECT *
																																																					FROM (
																																																						SELECT *
																																																						FROM (
																																																							SELECT *
																																																							FROM (
																																																								SELECT *
																																																								FROM (
																																																									SELECT *
																																																									FROM (
																																																										SELECT *
																																																										FROM (
																																																											SELECT *
																																																											FROM (
																																																												SELECT *
																																																												FROM (
																																																													SELECT *
																																																													FROM (
																																																														SELECT *
																																																														FROM (
																																																															SELECT *
																																																															FROM (
																																																																SELECT *
																																																																FROM (
																																																																	SELECT *
																																																																	FROM (
																																																																		SELECT *
																																																																		FROM (
																																																																			SELECT *
																																																																			FROM (
																																																																				SELECT *
																																																																				FROM (
																																																																					SELECT *
																																																																					FROM (
																																																																						SELECT *
																																																																						FROM (
																																																																							SELECT *
																																																																							FROM (
																																																																								SELECT *
																																																																								FROM (
																																																																									SELECT *
																																																																									FROM (
																																																																										SELECT *
																																																																										FROM (
																																																																											SELECT *
																																																																											FROM (
																																																																												SELECT *
																																																																												FROM (
																																																																													SELECT *
																																																																													FROM (
																																																																														SELECT *
																																																																														FROM (
																																																																															SELECT *
																																																																															FROM (
																																																																																SELECT *
																																																																																FROM (
																																																																																	SELECT *
																																																																																	FROM (
																																																																																		SELECT *
																																																																																		FROM (
																																																																																			SELECT *
																																																																																			FROM (
																																																																																				SELECT *
																																																																																				FROM (
																																																																																					SELECT *
																																																																																					FROM (
																																																																																						SELECT *
																																																																																						FROM (
																																																																																							SELECT *
																																																																																							FROM (
																																																																																								SELECT *
																																																																																								FROM (
																																																																																									SELECT *
																																																																																									FROM (
																																																																																										SELECT *
																																																																																										FROM (
																																																																																											SELECT *
																																																																																											FROM (
																																																																																												SELECT *
																																																																																												FROM (
																																																																																													SELECT *
																																																																																													FROM (
																																																																																														SELECT *
																																																																																														FROM (
																																																																																															SELECT *
																																																																																															FROM (
																																																																																																SELECT *
																																																																																																FROM (
																																																																																																	SELECT *
																																																																																																	FROM (
																																																																																																		SELECT *
																																																																																																		FROM (
																																																																																																			SELECT *
																																																																																																			FROM (
																																																																																																				SELECT *
																																																																																																				FROM (
																																																																																																					SELECT *
																																																																																																					FROM (
																																																																																																						SELECT *
																																																																																																						FROM (
																																																																																																							SELECT *
																																																																																																							FROM (
																																																																																																								SELECT *
																																																																																																								FROM (
																																																																																																									SELECT *
																																																																																																									FROM (
																																																																																																										SELECT *
																																																																																																										FROM (
																																																																																																											SELECT *
																																																																																																											FROM (
																																																																																																												SELECT *
																																																																																																												FROM (
																																																																																																													SELECT *
																																																																																																													FROM (
																																																																																																														SELECT *
																																																																																																														FROM (
																																																																																																															SELECT *
																																																																																																															FROM (
																																																																																																																SELECT *
																																																																																																																FROM (
																																																																																																																	SELECT *
																																																																																																																	FROM (
																																																																																																																		SELECT *
																																																																																																																		FROM (
																																																																																																																			SELECT *
																																																																																																																			FROM (
																																																																																																																				SELECT *
																																																																																																																				FROM (
																																																																																																																					SELECT *
																																																																																																																					FROM (
																																																																																																																						SELECT *
																																																																																																																						FROM (
																																																																																																																							SELECT *
																																																																																																																							FROM (
																																																																																																																								SELECT *
																																																																																																																								FROM (
																																																																																																																									SELECT *
																																																																																																																									FROM (
																																																																																																																										SELECT *
																																																																																																																										FROM (
																																																																																																																											SELECT *
																																																																																																																											FROM (
																																																																																																																												SELECT *
																																																																																																																												FROM (
																																																																																																																													(SELECT opciones, contenido as MATNVLII3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLII3') as temp125
																																																																																																																													INNER JOIN planea_schma.alumnos ON planea_schma.alumnos.MATNVLII3 = temp125.opciones
																																																																																																																												)
																																																																																																																												) as t125
																																																																																																																											INNER JOIN (SELECT opciones, contenido as AB003_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB003') as temp124 ON t125.AB003 = temp124.opciones
																																																																																																																											) as t124
																																																																																																																											INNER JOIN (SELECT opciones, contenido as AB065_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB065') as temp123 ON t124.AB065 = temp123.opciones
																																																																																																																										) as t123
																																																																																																																										INNER JOIN (SELECT opciones, contenido as RFABNVL_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='RFABNVL') as temp122 ON t123.RFABNVL = temp122.opciones
																																																																																																																									) as t122
																																																																																																																									INNER JOIN (SELECT opciones, contenido as AB037_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB037') as temp121 ON t122.AB037 = temp121.opciones
																																																																																																																								) as t121
																																																																																																																								INNER JOIN (SELECT opciones, contenido as AB038_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB038') as temp120 ON t121.AB038 = temp120.opciones
																																																																																																																							) as t120
																																																																																																																							INNER JOIN (SELECT opciones, contenido as LYCNVLIII4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLIII4') as temp119 ON t120.LYCNVLIII4 = temp119.opciones
																																																																																																																						) as t119
																																																																																																																						INNER JOIN (SELECT opciones, contenido as AB013_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB013') as temp118 ON t119.AB013 = temp118.opciones
																																																																																																																					) as t118
																																																																																																																					INNER JOIN (SELECT opciones, contenido as LYCNVLII5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLII5') as temp117 ON t118.LYCNVLII5 = temp117.opciones
																																																																																																																				) as t117
																																																																																																																				INNER JOIN (SELECT opciones, contenido as MATNVLIII1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLIII1') as temp116 ON t117.MATNVLIII1 = temp116.opciones
																																																																																																																			) as t116
																																																																																																																			INNER JOIN (SELECT opciones, contenido as AB016_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB016') as temp115 ON t116.AB016 = temp115.opciones
																																																																																																																		) as t115
																																																																																																																		INNER JOIN (SELECT opciones, contenido as EDAD_EES_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='EDAD_EES') as temp114 ON t115.EDAD_EES = temp114.opciones
																																																																																																																	) as t114
																																																																																																																	INNER JOIN (SELECT opciones, contenido as AB010_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB010') as temp113 ON t114.AB010 = temp113.opciones
																																																																																																																) as t113
																																																																																																																INNER JOIN (SELECT opciones, contenido as AB076_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB076') as temp112 ON t113.AB076 = temp112.opciones
																																																																																																															) as t112
																																																																																																															INNER JOIN (SELECT opciones, contenido as AB053_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB053') as temp111 ON t112.AB053 = temp111.opciones
																																																																																																														) as t111
																																																																																																														INNER JOIN (SELECT opciones, contenido as I_MULTIGRADO_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='I_MULTIGRADO') as temp110 ON t111.I_MULTIGRADO = temp110.opciones
																																																																																																													) as t110
																																																																																																													INNER JOIN (SELECT opciones, contenido as AB060_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB060') as temp109 ON t110.AB060 = temp109.opciones
																																																																																																												) as t109
																																																																																																												INNER JOIN (SELECT opciones, contenido as AB057_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB057') as temp108 ON t109.AB057 = temp108.opciones
																																																																																																											) as t108
																																																																																																											INNER JOIN (SELECT opciones, contenido as EDAD_N_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='EDAD_N') as temp107 ON t108.EDAD_N = temp107.opciones
																																																																																																										) as t107
																																																																																																										INNER JOIN (SELECT opciones, contenido as AB021_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB021') as temp106 ON t107.AB021 = temp106.opciones
																																																																																																									) as t106
																																																																																																									INNER JOIN (SELECT opciones, contenido as MATNVL2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVL2') as temp105 ON t106.MATNVL2 = temp105.opciones
																																																																																																								) as t105
																																																																																																								INNER JOIN (SELECT opciones, contenido as AB058_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB058') as temp104 ON t105.AB058 = temp104.opciones
																																																																																																							) as t104
																																																																																																							INNER JOIN (SELECT opciones, contenido as MATNVL4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVL4') as temp103 ON t104.MATNVL4 = temp103.opciones
																																																																																																						) as t103
																																																																																																						INNER JOIN (SELECT opciones, contenido as AB063_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB063') as temp102 ON t103.AB063 = temp102.opciones
																																																																																																					) as t102
																																																																																																					INNER JOIN (SELECT opciones, contenido as MATNVLII1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLII1') as temp101 ON t102.MATNVLII1 = temp101.opciones
																																																																																																				) as t101
																																																																																																				INNER JOIN (SELECT opciones, contenido as AB004_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB004') as temp100 ON t101.AB004 = temp100.opciones
																																																																																																			) as t100
																																																																																																			INNER JOIN (SELECT opciones, contenido as AB029_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB029') as temp99 ON t100.AB029 = temp99.opciones
																																																																																																		) as t99
																																																																																																		INNER JOIN (SELECT opciones, contenido as AB059_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB059') as temp98 ON t99.AB059 = temp98.opciones
																																																																																																	) as t98
																																																																																																	INNER JOIN (SELECT opciones, contenido as LYCNVLIII2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLIII2') as temp97 ON t98.LYCNVLIII2 = temp97.opciones
																																																																																																) as t97
																																																																																																INNER JOIN (SELECT opciones, contenido as TAM_LOC_SEC_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='TAM_LOC_SEC') as temp96 ON t97.TAM_LOC_SEC = temp96.opciones
																																																																																															) as t96
																																																																																															INNER JOIN (SELECT opciones, contenido as AB039_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB039') as temp95 ON t96.AB039 = temp95.opciones
																																																																																														) as t95
																																																																																														INNER JOIN (SELECT opciones, contenido as AB014_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB014') as temp94 ON t95.AB014 = temp94.opciones
																																																																																													) as t94
																																																																																													INNER JOIN (SELECT opciones, contenido as LYCNVLIII3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLIII3') as temp93 ON t94.LYCNVLIII3 = temp93.opciones
																																																																																												) as t93
																																																																																												INNER JOIN (SELECT opciones, contenido as AB044_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB044') as temp92 ON t93.AB044 = temp92.opciones
																																																																																											) as t92
																																																																																											INNER JOIN (SELECT opciones, contenido as AB005_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB005') as temp91 ON t92.AB005 = temp91.opciones
																																																																																										) as t91
																																																																																										INNER JOIN (SELECT opciones, contenido as LYCNVLII3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLII3') as temp90 ON t91.LYCNVLII3 = temp90.opciones
																																																																																									) as t90
																																																																																									INNER JOIN (SELECT opciones, contenido as LYCNVLII4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLII4') as temp89 ON t90.LYCNVLII4 = temp89.opciones
																																																																																								) as t89
																																																																																								INNER JOIN (SELECT opciones, contenido as AB052_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB052') as temp88 ON t89.AB052 = temp88.opciones
																																																																																							) as t88
																																																																																							INNER JOIN (SELECT opciones, contenido as AB069_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB069') as temp87 ON t88.AB069 = temp87.opciones
																																																																																						) as t87
																																																																																						INNER JOIN (SELECT opciones, contenido as AB067_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB067') as temp86 ON t87.AB067 = temp86.opciones
																																																																																					) as t86
																																																																																					INNER JOIN (SELECT opciones, contenido as MATNVLIII2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLIII2') as temp85 ON t86.MATNVLIII2 = temp85.opciones
																																																																																				) as t85
																																																																																				INNER JOIN (SELECT opciones, contenido as AB073_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB073') as temp84 ON t85.AB073 = temp84.opciones
																																																																																			) as t84
																																																																																			INNER JOIN (SELECT opciones, contenido as AB062_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB062') as temp83 ON t84.AB062 = temp83.opciones
																																																																																		) as t83
																																																																																		INNER JOIN (SELECT opciones, contenido as AB081_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB081') as temp82 ON t83.AB081 = temp82.opciones
																																																																																	) as t82
																																																																																	INNER JOIN (SELECT opciones, contenido as MATNVLIII5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLIII5') as temp81 ON t82.MATNVLIII5 = temp81.opciones
																																																																																) as t81
																																																																																INNER JOIN (SELECT opciones, contenido as AB070_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB070') as temp80 ON t81.AB070 = temp80.opciones
																																																																															) as t80
																																																																															INNER JOIN (SELECT opciones, contenido as MATNVLII2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLII2') as temp79 ON t80.MATNVLII2 = temp79.opciones
																																																																														) as t79
																																																																														INNER JOIN (SELECT opciones, contenido as AB009_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB009') as temp78 ON t79.AB009 = temp78.opciones
																																																																													) as t78
																																																																													INNER JOIN (SELECT opciones, contenido as AB034_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB034') as temp77 ON t78.AB034 = temp77.opciones
																																																																												) as t77
																																																																												INNER JOIN (SELECT opciones, contenido as AB015_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB015') as temp76 ON t77.AB015 = temp76.opciones
																																																																											) as t76
																																																																											INNER JOIN (SELECT opciones, contenido as AB025_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB025') as temp75 ON t76.AB025 = temp75.opciones
																																																																										) as t75
																																																																										INNER JOIN (SELECT opciones, contenido as EDAD_AC_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='EDAD_AC') as temp74 ON t75.EDAD_AC = temp74.opciones
																																																																									) as t74
																																																																									INNER JOIN (SELECT opciones, contenido as AB046_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB046') as temp73 ON t74.AB046 = temp73.opciones
																																																																								) as t73
																																																																								INNER JOIN (SELECT opciones, contenido as AB074_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB074') as temp72 ON t73.AB074 = temp72.opciones
																																																																							) as t72
																																																																							INNER JOIN (SELECT opciones, contenido as MATNVLII4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLII4') as temp71 ON t72.MATNVLII4 = temp71.opciones
																																																																						) as t71
																																																																						INNER JOIN (SELECT opciones, contenido as AB031_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB031') as temp70 ON t71.AB031 = temp70.opciones
																																																																					) as t70
																																																																					INNER JOIN (SELECT opciones, contenido as AB002_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB002') as temp69 ON t70.AB002 = temp69.opciones
																																																																				) as t69
																																																																				INNER JOIN (SELECT opciones, contenido as AB028_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB028') as temp68 ON t69.AB028 = temp68.opciones
																																																																			) as t68
																																																																			INNER JOIN (SELECT opciones, contenido as AB051_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB051') as temp67 ON t68.AB051 = temp67.opciones
																																																																		) as t67
																																																																		INNER JOIN (SELECT opciones, contenido as AB068_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB068') as temp66 ON t67.AB068 = temp66.opciones
																																																																	) as t66
																																																																	INNER JOIN (SELECT opciones, contenido as AB030_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB030') as temp65 ON t66.AB030 = temp65.opciones
																																																																) as t65
																																																																INNER JOIN (SELECT opciones, contenido as AB020_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB020') as temp64 ON t65.AB020 = temp64.opciones
																																																															) as t64
																																																															INNER JOIN (SELECT opciones, contenido as AB061_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB061') as temp63 ON t64.AB061 = temp63.opciones
																																																														) as t63
																																																														INNER JOIN (SELECT opciones, contenido as AB019_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB019') as temp62 ON t63.AB019 = temp62.opciones
																																																													) as t62
																																																													INNER JOIN (SELECT opciones, contenido as MATNVL3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVL3') as temp61 ON t62.MATNVL3 = temp61.opciones
																																																												) as t61
																																																												INNER JOIN (SELECT opciones, contenido as MATNVLII5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLII5') as temp60 ON t61.MATNVLII5 = temp60.opciones
																																																											) as t60
																																																											INNER JOIN (SELECT opciones, contenido as AB048_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB048') as temp59 ON t60.AB048 = temp59.opciones
																																																										) as t59
																																																										INNER JOIN (SELECT opciones, contenido as LYCNVL5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVL5') as temp58 ON t59.LYCNVL5 = temp58.opciones
																																																									) as t58
																																																									INNER JOIN (SELECT opciones, contenido as AB035_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB035') as temp57 ON t58.AB035 = temp57.opciones
																																																								) as t57
																																																								INNER JOIN (SELECT opciones, contenido as AB047_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB047') as temp56 ON t57.AB047 = temp56.opciones
																																																							) as t56
																																																							INNER JOIN (SELECT opciones, contenido as AB066_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB066') as temp55 ON t56.AB066 = temp55.opciones
																																																						) as t55
																																																						INNER JOIN (SELECT opciones, contenido as AB006_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB006') as temp54 ON t55.AB006 = temp54.opciones
																																																					) as t54
																																																					INNER JOIN (SELECT opciones, contenido as SEXO_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='SEXO') as temp53 ON t54.SEXO = temp53.opciones
																																																				) as t53
																																																				INNER JOIN (SELECT opciones, contenido as MES_NAC_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MES_NAC') as temp52 ON t53.MES_NAC = temp52.opciones
																																																			) as t52
																																																			INNER JOIN (SELECT opciones, contenido as AB008_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB008') as temp51 ON t52.AB008 = temp51.opciones
																																																		) as t51
																																																		INNER JOIN (SELECT opciones, contenido as AB042_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB042') as temp50 ON t51.AB042 = temp50.opciones
																																																	) as t50
																																																	INNER JOIN (SELECT opciones, contenido as AB054_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB054') as temp49 ON t50.AB054 = temp49.opciones
																																																) as t49
																																																INNER JOIN (SELECT opciones, contenido as LYCNVLII1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLII1') as temp48 ON t49.LYCNVLII1 = temp48.opciones
																																															) as t48
																																															INNER JOIN (SELECT opciones, contenido as AB072_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB072') as temp47 ON t48.AB072 = temp47.opciones
																																														) as t47
																																														INNER JOIN (SELECT opciones, contenido as AB080_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB080') as temp46 ON t47.AB080 = temp46.opciones
																																													) as t46
																																													INNER JOIN (SELECT opciones, contenido as LYCNVLIII5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLIII5') as temp45 ON t46.LYCNVLIII5 = temp45.opciones
																																												) as t45
																																												INNER JOIN (SELECT opciones, contenido as AB077_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB077') as temp44 ON t45.AB077 = temp44.opciones
																																											) as t44
																																											INNER JOIN (SELECT opciones, contenido as AB082_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB082') as temp43 ON t44.AB082 = temp43.opciones
																																										) as t43
																																										INNER JOIN (SELECT opciones, contenido as I_RFAB_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='I_RFAB') as temp42 ON t43.I_RFAB = temp42.opciones
																																									) as t42
																																									INNER JOIN (SELECT opciones, contenido as AB079_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB079') as temp41 ON t42.AB079 = temp41.opciones
																																								) as t41
																																								INNER JOIN (SELECT opciones, contenido as AB022_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB022') as temp40 ON t41.AB022 = temp40.opciones
																																							) as t40
																																							INNER JOIN (SELECT opciones, contenido as AB023_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB023') as temp39 ON t40.AB023 = temp39.opciones
																																						) as t39
																																						INNER JOIN (SELECT opciones, contenido as MARGINC_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MARGINC') as temp38 ON t39.MARGINC = temp38.opciones
																																					) as t38
																																					INNER JOIN (SELECT opciones, contenido as AB040_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB040') as temp37 ON t38.AB040 = temp37.opciones
																																				) as t37
																																				INNER JOIN (SELECT opciones, contenido as AB001_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB001') as temp36 ON t37.AB001 = temp36.opciones
																																			) as t36
																																			INNER JOIN (SELECT opciones, contenido as LYCNVL1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVL1') as temp35 ON t36.LYCNVL1 = temp35.opciones
																																		) as t35
																																		INNER JOIN (SELECT opciones, contenido as AB017_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB017') as temp34 ON t35.AB017 = temp34.opciones
																																	) as t34
																																	INNER JOIN (SELECT opciones, contenido as AB026_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB026') as temp33 ON t34.AB026 = temp33.opciones
																																) as t33
																																INNER JOIN (SELECT opciones, contenido as AB050_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB050') as temp32 ON t33.AB050 = temp32.opciones
																															) as t32
																															INNER JOIN (SELECT opciones, contenido as LYCNVLII2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLII2') as temp31 ON t32.LYCNVLII2 = temp31.opciones
																														) as t31
																														INNER JOIN (SELECT opciones, contenido as AB064_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB064') as temp30 ON t31.AB064 = temp30.opciones
																													) as t30
																													INNER JOIN (SELECT opciones, contenido as LYCNVLIII1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVLIII1') as temp29 ON t30.LYCNVLIII1 = temp29.opciones
																												) as t29
																												INNER JOIN (SELECT opciones, contenido as AB007_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB007') as temp28 ON t29.AB007 = temp28.opciones
																											) as t28
																											INNER JOIN (SELECT opciones, contenido as AB018_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB018') as temp27 ON t28.AB018 = temp27.opciones
																										) as t27
																										INNER JOIN (SELECT opciones, contenido as AB045_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB045') as temp26 ON t27.AB045 = temp26.opciones
																									) as t26
																									INNER JOIN (SELECT opciones, contenido as AB011_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB011') as temp25 ON t26.AB011 = temp25.opciones
																								) as t25
																								INNER JOIN (SELECT opciones, contenido as AB027_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB027') as temp24 ON t25.AB027 = temp24.opciones
																							) as t24
																							INNER JOIN (SELECT opciones, contenido as AB049_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB049') as temp23 ON t24.AB049 = temp23.opciones
																						) as t23
																						INNER JOIN (SELECT opciones, contenido as LYCNVL3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVL3') as temp22 ON t23.LYCNVL3 = temp22.opciones
																					) as t22
																					INNER JOIN (SELECT opciones, contenido as AB041_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB041') as temp21 ON t22.AB041 = temp21.opciones
																				) as t21
																				INNER JOIN (SELECT opciones, contenido as AB055_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB055') as temp20 ON t21.AB055 = temp20.opciones
																			) as t20
																			INNER JOIN (SELECT opciones, contenido as MATNVL1_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVL1') as temp19 ON t20.MATNVL1 = temp19.opciones
																		) as t19
																		INNER JOIN (SELECT opciones, contenido as AB056_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB056') as temp18 ON t19.AB056 = temp18.opciones
																	) as t18
																	INNER JOIN (SELECT opciones, contenido as AB012_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB012') as temp17 ON t18.AB012 = temp17.opciones
																) as t17
																INNER JOIN (SELECT opciones, contenido as AB033_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB033') as temp16 ON t17.AB033 = temp16.opciones
															) as t16
															INNER JOIN (SELECT opciones, contenido as ID_ENT_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='ID_ENT') as temp15 ON t16.ID_ENT = temp15.opciones
														) as t15
														INNER JOIN (SELECT opciones, contenido as AB032_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB032') as temp14 ON t15.AB032 = temp14.opciones
													) as t14
													INNER JOIN (SELECT opciones, contenido as MATNVLIII3_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLIII3') as temp13 ON t14.MATNVLIII3 = temp13.opciones
												) as t13
												INNER JOIN (SELECT opciones, contenido as LYCNVL4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVL4') as temp12 ON t13.LYCNVL4 = temp12.opciones
											) as t12
											INNER JOIN (SELECT opciones, contenido as AB024_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB024') as temp11 ON t12.AB024 = temp11.opciones
										) as t11
										INNER JOIN (SELECT opciones, contenido as LYCNVL2_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='LYCNVL2') as temp10 ON t11.LYCNVL2 = temp10.opciones
									) as t10
									INNER JOIN (SELECT opciones, contenido as ID_SERV_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='ID_SERV') as temp9 ON t10.ID_SERV = temp9.opciones
								) as t9
								INNER JOIN (SELECT opciones, contenido as MATNVL5_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVL5') as temp8 ON t9.MATNVL5 = temp8.opciones
							) as t8
							INNER JOIN (SELECT opciones, contenido as EDAD_ANT_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='EDAD_ANT') as temp7 ON t8.EDAD_ANT = temp7.opciones
						) as t7
						INNER JOIN (SELECT opciones, contenido as MATNVLIII4_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='MATNVLIII4') as temp6 ON t7.MATNVLIII4 = temp6.opciones
					) as t6
					INNER JOIN (SELECT opciones, contenido as AB075_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB075') as temp5 ON t6.AB075 = temp5.opciones
				) as t5
				INNER JOIN (SELECT opciones, contenido as AB071_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB071') as temp4 ON t5.AB071 = temp4.opciones
			) as t4
			INNER JOIN (SELECT opciones, contenido as AB036_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB036') as temp3 ON t4.AB036 = temp3.opciones
		) as t3
		INNER JOIN (SELECT opciones, contenido as AB043_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB043') as temp2 ON t3.AB043 = temp2.opciones
	) as t2
	INNER JOIN (SELECT opciones, contenido as AB078_ FROM planea_schma.alumnosetiquetasmin WHERE id_etiqueta='AB078') as temp1 ON t2.AB078 = temp1.opciones
);
