//+------------------------------------------------------------------+
//|                                                     _SYMBOLS.mq4 |
//|        Copyright 2016,Marco vd Heijden, MetaQuotes Software Corp.|
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016,Marco vd Heijden, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Symbols (Forex ISO 4217)                                         |
//+------------------------------------------------------------------+
enum symbol
  {
   AED,   //	AED - United Arab Emirates dirham
   AFN,   //	AFN - Afghan afghani
   ALL,   //	ALL - Albanian lek
   AMD,   //	AMD - Armenian dram
   ANG,   //	ANG - Netherlands Antillean guilder
   AOA,   //	AOA - Angolan kwanza
   ARS,   //	ARS - Argentine peso
   AUD,   //	AUD - Australian dollar
   AWG,   //	AWG - Aruban florin
   AZN,   //	AZN - Azerbaijani manat
   BAM,   //	BAM - Bosnia and Herzegovina convertible mark
   BBD,   //	BBD - Barbados dollar
   BDT,   //	BDT - Bangladeshi taka
   BGN,   //	BGN - Bulgarian lev
   BHD,   //	BHD - Bahraini dinar
   BIF,   //	BIF - Burundian franc
   BMD,   //	BMD - Bermudian dollar
   BND,   //	BND - Brunei dollar
   BOB,   //	BOB - Boliviano
   BOV,   //	BOV - Bolivian Mvdol (funds code)
   BRL,   //	BRL - Brazilian real
   BSD,   //	BSD - Bahamian dollar
   BTN,   //	BTN - Bhutanese ngultrum
   BWP,   //	BWP - Botswana pula
   BYN,   //	BYN - Belarusian ruble
   BYR,   //	BYR - Belarusian ruble
   BZD,   //	BZD - Belize dollar
   CAD,   //	CAD - Canadian dollar
   CDF,   //	CDF - Congolese franc
   CHE,   //	CHE - WIR Euro (complementary currency)
   CHF,   //	CHF - Swiss franc
   CHW,   //	CHW - WIR Franc (complementary currency)
   CLF,   //	CLF - Unidad de Fomento (funds code)
   CLP,   //	CLP - Chilean peso
   CNY,   //	CNY - Chinese yuan
   COP,   //	COP - Colombian peso
   COU,   // 	COU - Unidad de Valor Real (UVR) (funds code)
   CRC,   //	CRC - Costa Rican colon
   CUC,   //	CUC - Cuban convertible peso
   CUP,   //	CUP - Cuban peso
   CVE,   //	CVE - Cape Verde escudo
   CZK,   //	CZK - Czech koruna
   DJF,   //	DJF - Djiboutian franc
   DKK,   //	DKK - Danish krone
   DOP,   //	DOP - Dominican peso
   DZD,   //	DZD - Algerian dinar
   EGP,   //	EGP - Egyptian pound
   ERN,   //	ERN - Eritrean nakfa
   ETB,   //	ETB - Ethiopian birr
   EUR,   //	EUR - Euro
   FJD,   //	FJD - Fiji dollar
   FKP,   //	FKP - Falkland Islands pound
   GBP,   //	GBP - Pound sterling
   GEL,   //	GEL - Georgian lari
   GHS,   //	GHS - Ghanaian cedi
   GIP,   //	GIP - Gibraltar pound
   GMD,   //	GMD - Gambian dalasi
   GNF,   //	GNF - Guinean franc
   GTQ,   //	GTQ - Guatemalan quetzal
   GYD,   //	GYD - Guyanese dollar
   HKD,   //	HKD - Hong Kong dollar
   HNL,   //	HNL - Honduran lempira
   HRK,   //	HRK - Croatian kuna
   HTG,   //	HTG - Haitian gourde
   HUF,   //	HUF - Hungarian forint
   IDR,   //	IDR - Indonesian rupiah
   ILS,   //	ILS - Israeli new shekel
   INR,   //	INR - Indian rupee
   IQD,   //	IQD - Iraqi dinar
   IRR,   //	IRR - Iranian rial
   ISK,   //	ISK - Icelandic króna
   JMD,   //	JMD - Jamaican dollar
   JOD,   //	JOD - Jordanian dinar
   JPY,   //	JPY - Japanese yen
   KES,   //	KES - Kenyan shilling
   KGS,   //	KGS - Kyrgyzstani som
   KHR,   //	KHR - Cambodian riel
   KMF,   //	KMF - Comoro franc
   KPW,   //	KPW - North Korean won
   KRW,   //	KRW - South Korean won
   KWD,   //	KWD - Kuwaiti dinar
   KYD,   //	KYD - Cayman Islands dollar
   KZT,   //	KZT - Kazakhstani tenge
   LAK,   //	LAK - Lao kip
   LBP,   //	LBP - Lebanese pound
   LKR,   //	LKR - Sri Lankan rupee
   LRD,   //	LRD - Liberian dollar
   LSL,   //	LSL - Lesotho loti
   LYD,   //	LYD - Libyan dinar
   MAD,   //	MAD - Moroccan dirham
   MDL,   //	MDL - Moldovan leu
   MGA,   //  MGA - Malagasy ariary
   MKD,   //	MKD - Macedonian denar
   MMK,   //	MMK - Myanmar kyat
   MNT,   //	MNT - Mongolian tögrög
   MOP,   //	MOP - Macanese pataca
   MRO,   //  MRO - Mauritanian ouguiya
   MUR,   //	MUR - Mauritian rupee
   MVR,   //	MVR - Maldivian rufiyaa
   MWK,   //	MWK - Malawian kwacha
   MXN,   //	MXN - Mexican peso
   MXV,   //	MXV - Mexican Unidad de Inversion (UDI) (funds code)
   MYR,   //	MYR - Malaysian ringgit
   MZN,   //	MZN - Mozambican metical
   NAD,   //	NAD - Namibian dollar
   NGN,   //	NGN - Nigerian naira
   NIO,   //	NIO - Nicaraguan córdoba
   NOK,   //	NOK - Norwegian krone
   NPR,   //	NPR - Nepalese rupee
   NZD,   //	NZD - New Zealand dollar
   OMR,   //	OMR - Omani rial
   PAB,   //	PAB - Panamanian balboa
   PEN,   //	PEN - Peruvian Sol
   PGK,   //	PGK - Papua New Guinean kina
   PHP,   //	PHP - Philippine peso
   PKR,   //	PKR - Pakistani rupee
   PLN,   //	PLN - Polish złoty
   PYG,   //	PYG - Paraguayan guaraní
   QAR,   //	QAR - Qatari riyal
   RON,   //	RON - Romanian leu
   RSD,   //	RSD - Serbian dinar
   RUB,   //	RUB - Russian ruble
   RWF,   //	RWF - Rwandan franc
   SAR,   //	SAR - Saudi riyal
   SBD,   //	SBD - Solomon Islands dollar
   SCR,   //	SCR - Seychelles rupee
   SDG,   //	SDG - Sudanese pound
   SEK,   //	SEK - Swedish krona/kronor
   SGD,   //	SGD - Singapore dollar
   SHP,   //	SHP - Saint Helena pound
   SLL,   //	SLL - Sierra Leonean leone
   SOS,   //	SOS - Somali shilling
   SRD,   //	SRD - Surinamese dollar
   SSP,   //	SSP - South Sudanese pound
   STD,   //	STD - São Tomé and Príncipe dobra
   SYP,   //	SYP - Syrian pound
   SZL,   //	SZL - Swazi lilangeni
   THB,   //	THB - Thai baht
   TJS,   //	TJS - Tajikistani somoni
   TMT,   //	TMT - Turkmenistani manat
   TND,   //	TND - Tunisian dinar
   TOP,   //	TOP - Tongan paʻanga
   TRY,   //	TRY - Turkish lira
   TTD,   //	TTD - Trinidad and Tobago dollar
   TWD,   //	TWD - New Taiwan dollar
   TZS,   //	TZS - Tanzanian shilling
   UAH,   //	UAH - Ukrainian hryvnia
   UGX,   //	UGX - Ugandan shilling
   USD,   //	USD - United States dollar
   USN,   //	USN - United States dollar (next day) (funds code)
   UYI,   //	UYI - Uruguay Peso en Unidades Indexadas (URUIURUI) (funds code)
   UYU,   //	UYU - Uruguayan peso
   UZS,   //	UZS - Uzbekistan som
   VEF,   //	VEF - Venezuelan bolívar
   VND,   //	VND - Vietnamese dong
   VUV,   //	VUV - Vanuatu vatu
   WST,   //	WST - Samoan tala
   XAF,   //	XAF - CFA franc BEAC
   XAG,   //	XAG - Silver (one troy ounce)
   XAU,   //	XAU - Gold (one troy ounce)
   XBA,   //	XBA - European Composite Unit (EURCO) (bond market unit)
   XBB,   //	XBB - European Monetary Unit (E.M.U.-6) (bond market unit)
   XBC,   //	XBC - European Unit of Account 9 (E.U.A.-9) (bond market unit)
   XBD,   //	XBD - European Unit of Account 17 (E.U.A.-17) (bond market unit)
   XCD,   //	XCD - East Caribbean dollar
   XDR,   //	XDR - Special drawing rights
   XFU,   //	XFU - UIC franc (special settlement currency)
   XOF,   //	XOF - CFA franc BCEAO
   XPD,   //	XPD - Palladium (one troy ounce)
   XPF,   //	XPF - CFP franc (franc Pacifique)
   XPT,   //	XPT - Platinum (one troy ounce)
   XSU,   //	XSU - SUCRE
   XTS,   //	XTS - Code reserved for testing purposes
   XUA,   //	XUA - ADB Unit of Account
   XXX,   //	XXX - No currency
   YER,   //	YER - Yemeni rial
   ZAR,   //	ZAR - South African rand
   ZMW,   //	ZMW - Zambian kwacha
  };
