# Supported ADIF Fields and Types

All current ADIF fields can be specified in your comment.

In the table below the `ADIF Field` column shows the keyword you should specify in your comment if you want to add
additional information in the ADIF output file. 

Each value is checked against the corresponding `ADIF Type`. The types, including any restrictions, as shown in the 
second table.

**NOTE:** For list types, such as POTA_REF, ensure that references are listed as comma-separated without any spaces, 
for example: `<POTA_REF: EA-2120,EA-0825,EA-0050>`.

## ADIF Fields

| ADIF Field                 | ADIF Type                                        |
|:---------------------------|:-------------------------------------------------|
| ADDRESS                    | Multiline String                                 |
| ADDRESS_INTL               | Intl Multiline String                            |
| AGE                        | AGE                                              |
| ALTITUDE                   | Number                                           |
| ANT_AZ                     | ANT AZ                                           |
| ANT_EL                     | ANT EL                                           |
| ANT_PATH                   | Ant Path Enumeration                             |
| ARRL_SECT                  | ARRL Section Enumeration                         |
| AWARD_GRANTED              | Sponsored Award List                             |
| AWARD_SUBMITTED            | Sponsored Award List                             |
| A_INDEX                    | A INDEX                                          |
| BAND                       | Band Enumeration                                 |
| BAND_RX                    | Band Enumeration                                 |
| CALL                       | String                                           |
| CHECK                      | String                                           |
| CLASS                      | String                                           |
| CLUBLOG_QSO_UPLOAD_DATE    | Date                                             |
| CLUBLOG_QSO_UPLOAD_STATUS  | QSO Upload Status Enumeration                    |
| CNTY                       | Secondary Administrative Subdivision Enumeration |
| COMMENT                    | String                                           |
| COMMENT_INTL               | Intl String                                      |
| CONT                       | Continent Enumeration                            |
| CONTACTED_OP               | String                                           |
| CONTEST_ID                 | String                                           |
| COUNTRY                    | String                                           |
| COUNTRY_INTL               | Intl String                                      |
| CQZ                        | CQZ                                              |
| CREDIT_GRANTED             | Credit List                                      |
| CREDIT_SUBMITTED           | Credit List                                      |
| DARC_DOK                   | DARCDOK                                          |
| DISTANCE                   | Number GE0                                       |
| DXCC                       | DXCC Entity Code Enumeration                     |
| EMAIL                      | String                                           |
| EQSL_QSLRDATE              | Date                                             |
| EQSL_QSLSDATE              | Date                                             |
| EQSL_QSL_RCVD              | QSL Rcvd Enumeration                             |
| EQSL_QSL_SENT              | QSL Sent Enumeration                             |
| EQ_CALL                    | String                                           |
| FISTS                      | Positive Integer                                 |
| FISTS_CC                   | Positive Integer                                 |
| FORCE_INIT                 | Boolean                                          |
| FREQ                       | Number                                           |
| FREQ_RX                    | Number                                           |
| GRIDSQUARE                 | Grid Square                                      |
| GRIDSQUARE_EXT             | Grid Square Ext                                  |
| HAMLOGEU_QSO_UPLOAD_DATE   | Date                                             |
| HAMLOGEU_QSO_UPLOAD_STATUS | QSO Upload Status Enumeration                    |
| HAMQTH_QSO_UPLOAD_DATE     | Date                                             |
| HAMQTH_QSO_UPLOAD_STATUS   | QSO Upload Status Enumeration                    |
| HRDLOG_QSO_UPLOAD_DATE     | Date                                             |
| HRDLOG_QSO_UPLOAD_STATUS   | QSO Upload Status Enumeration                    |
| IOTA                       | IOTARef No                                       |
| IOTA_ISLAND_ID             | IOTAIsland Id                                    |
| ITUZ                       | ITUZ                                             |
| K_INDEX                    | K INDEX                                          |
| LAT                        | Location                                         |
| LON                        | Location                                         |
| LOTW_QSLRDATE              | Date                                             |
| LOTW_QSLSDATE              | Date                                             |
| LOTW_QSL_RCVD              | QSL Rcvd Enumeration                             |
| LOTW_QSL_SENT              | QSL Sent Enumeration                             |
| MAX_BURSTS                 | Number GE0                                       |
| MODE                       | Mode Enumeration                                 |
| MS_SHOWER                  | String                                           |
| MY_ALTITUDE                | Number                                           |
| MY_ANTENNA                 | String                                           |
| MY_ANTENNA_INTL            | Intl String                                      |
| MY_ARRL_SECT               | ARRL Section Enumeration                         |
| MY_CITY                    | String                                           |
| MY_CITY_INTL               | Intl String                                      |
| MY_CNTY                    | Secondary Administrative Subdivision Enumeration |
| MY_COUNTRY                 | String                                           |
| MY_COUNTRY_INTL            | Intl String                                      |
| MY_CQ_ZONE                 | MY CQ ZONE                                       |
| MY_DXCC                    | DXCC Entity Code Enumeration                     |
| MY_FISTS                   | Positive Integer                                 |
| MY_GRIDSQUARE              | Grid Square                                      |
| MY_GRIDSQUARE_EXT          | Grid Square Ext                                  |
| MY_IOTA                    | IOTARef No                                       |
| MY_IOTA_ISLAND_ID          | IOTAIsland Id                                    |
| MY_ITU_ZONE                | MY ITU ZONE                                      |
| MY_LAT                     | Location                                         |
| MY_LON                     | Location                                         |
| MY_NAME                    | String                                           |
| MY_NAME_INTL               | Intl String                                      |
| MY_POSTAL_CODE             | String                                           |
| MY_POSTAL_CODE_INTL        | Intl String                                      |
| MY_POTA_REF                | POTARef List                                     |
| MY_RIG                     | String                                           |
| MY_RIG_INTL                | Intl String                                      |
| MY_SIG                     | String                                           |
| MY_SIG_INFO                | String                                           |
| MY_SIG_INFO_INTL           | Intl String                                      |
| MY_SIG_INTL                | Intl String                                      |
| MY_SOTA_REF                | SOTARef                                          |
| MY_STATE                   | Primary Administrative Subdivision Enumeration   |
| MY_STREET                  | String                                           |
| MY_STREET_INTL             | Intl String                                      |
| MY_USACA_COUNTIES          | Secondary Subdivision List US                    |
| MY_VUCC_GRIDS              | Grid Square List4                                |
| MY_WWFF_REF                | WWFFRef                                          |
| NAME                       | String                                           |
| NAME_INTL                  | Intl String                                      |
| NOTES                      | Multiline String                                 |
| NOTES_INTL                 | Intl Multiline String                            |
| NR_BURSTS                  | Integer GE0                                      |
| NR_PINGS                   | Integer GE0                                      |
| OPERATOR                   | String                                           |
| OWNER_CALLSIGN             | String                                           |
| PFX                        | String                                           |
| POTA_REF                   | POTARef List                                     |
| PRECEDENCE                 | String                                           |
| PROP_MODE                  | Propagation Mode Enumeration                     |
| PUBLIC_KEY                 | String                                           |
| QRZCOM_QSO_UPLOAD_DATE     | Date                                             |
| QRZCOM_QSO_UPLOAD_STATUS   | QSO Upload Status Enumeration                    |
| QSLMSG                     | Multiline String                                 |
| QSLMSG_INTL                | Intl Multiline String                            |
| QSLRDATE                   | Date                                             |
| QSLSDATE                   | Date                                             |
| QSL_RCVD                   | QSL Rcvd Enumeration                             |
| QSL_RCVD_VIA               | QSL Via Enumeration                              |
| QSL_SENT                   | QSL Sent Enumeration                             |
| QSL_SENT_VIA               | QSL Via Enumeration                              |
| QSL_VIA                    | String                                           |
| QSO_COMPLETE               | QSO COMPLETE                                     |
| QSO_DATE                   | Date                                             |
| QSO_DATE_OFF               | Date                                             |
| QSO_RANDOM                 | Boolean                                          |
| QTH                        | String                                           |
| QTH_INTL                   | Intl String                                      |
| REGION                     | Region                                           |
| RIG                        | Multiline String                                 |
| RIG_INTL                   | Intl Multiline String                            |
| RST_RCVD                   | String                                           |
| RST_SENT                   | String                                           |
| RX_PWR                     | Number GE0                                       |
| SAT_MODE                   | String                                           |
| SAT_NAME                   | String                                           |
| SFI                        | SFI                                              |
| SIG                        | String                                           |
| SIG_INFO                   | String                                           |
| SIG_INFO_INTL              | Intl String                                      |
| SIG_INTL                   | Intl String                                      |
| SILENT_KEY                 | Boolean                                          |
| SKCC                       | String                                           |
| SOTA_REF                   | SOTARef                                          |
| SRX                        | Integer GE0                                      |
| SRX_STRING                 | String                                           |
| STATE                      | Primary Administrative Subdivision Enumeration   |
| STATION_CALLSIGN           | String                                           |
| STX                        | Integer GE0                                      |
| STX_STRING                 | String                                           |
| SUBMODE                    | Submode Enumeration                              |
| SWL                        | Boolean                                          |
| TEN_TEN                    | Positive Integer                                 |
| TIME_OFF                   | Time                                             |
| TIME_ON                    | Time                                             |
| TX_PWR                     | Number GE0                                       |
| UKSMG                      | Positive Integer                                 |
| USACA_COUNTIES             | Secondary Subdivision List US                    |
| USERDEF                    |                                                  |
| VUCC_GRIDS                 | Grid Square List4                                |
| WEB                        | String                                           |
| WWFF_REF                   | WWFFRef                                          |


## ADIF Types

| ADIF Type                                        | Base Type        | Min | Max      |
|--------------------------------------------------|------------------|-----|----------|
| AGE                                              | Number GE0       |     | 120      |
| ANT AZ                                           | Number           | 0   | 360      |
| ANT EL                                           | Number           | -90 | 90       |
| ARRL Section Enumeration                         | String           |     |          |
| A INDEX                                          | Number GE0       |     | 400      |
| Ant Path Enumeration                             | String           |     |          |
| Band Enumeration                                 | String           |     |          |
| Boolean                                          | String           |     |          |
| CQZ                                              | Positive Integer |     | 40       |
| Continent Enumeration                            | String           |     |          |
| Credit List                                      | String           |     |          |
| DARCDOK                                          | String           |     |          |
| DXCC Entity Code Enumeration                     | Unsigned Int     | 0   | 522      |
| Data Type Indicator                              | String           |     |          |
| Date                                             | String           |     |          |
| Enumeration                                      | String           |     |          |
| Grid Square                                      | String           |     |          |
| Grid Square Ext                                  | String           |     |          |
| Grid Square List4                                | String           |     |          |
| IOTAIsland Id                                    | Positive Integer |     | 99999999 |
| IOTARef No                                       | String           |     |          |
| ITUZ                                             | Positive Integer |     | 90       |
| Integer                                          | Decimal          |     |          |
| Integer GE0                                      | Integer          | 0   |          |
| Intl Multiline String                            | String           |     |          |
| Intl String                                      | String           |     |          |
| K INDEX                                          | Integer GE0      |     | 9        |
| Location                                         | String           |     |          |
| MY CQ ZONE                                       | Positive Integer |     | 40       |
| MY ITU ZONE                                      | Positive Integer |     | 90       |
| Mode Enumeration                                 | String           |     |          |
| Mode Enumeration Deprecated                      | String           |     |          |
| Multiline String                                 | String           |     |          |
| Number                                           | Decimal          |     |          |
| Number GE0                                       | Number           | 0   |          |
| POTARef List                                     | String           |     |          |
| Positive Integer                                 | Decimal          | 1   |          |
| Primary Administrative Subdivision Enumeration   | Enumeration      |     |          |
| Propagation Mode Enumeration                     | String           |     |          |
| QSL Rcvd Enumeration                             | String           |     |          |
| QSL Sent Enumeration                             | String           |     |          |
| QSL Via Enumeration                              | String           |     |          |
| QSO COMPLETE                                     | String           |     |          |
| QSO Upload Status Enumeration                    | String           |     |          |
| Region                                           | String           |     |          |
| SFI                                              | Integer GE0      |     | 300      |
| SOTARef                                          | String           |     |          |
| Secondary Subdivision List US                    | String           |     |          |
| Secondary Administrative Subdivision Enumeration | Enumeration      |     |          |
| Sponsored Award List                             | String           |     |          |
| String                                           | String           |     |          |
| Submode Enumeration                              | String           |     |          |
| Time                                             | String           |     |          |
| USERDEF Enum                                     | String           |     |          |
| USERDEF Name                                     | String           |     |          |
| USERDEF Range                                    | String           |     |          |
| WWFFRef                                          | String           |     |          |
