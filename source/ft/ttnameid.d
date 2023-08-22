/+
+                Copyright 2023 Aya Partridge
+          Copyright 2019 - 2022 Michael D. Parker
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module ft.ttnameid;

import bindbc.freetype.codegen;

enum{
	TT_PLATFORM_APPLE_UNICODE  = 0,
	TT_PLATFORM_MACINTOSH      = 1,
	TT_PLATFORM_MICROSOFT      = 3,
	TT_PLATFORM_CUSTOM         = 4,
	TT_PLATFORM_ADOBE          = 7,
}

enum{
	TT_APPLE_ID_DEFAULT           = 0,
	TT_APPLE_ID_UNICODE_1_1       = 1,
	TT_APPLE_ID_UNICODE_2_0       = 3,
	TT_APPLE_ID_UNICODE_32        = 4,
	TT_APPLE_ID_VARIANT_SELECTOR  = 5,
	
	// Added in Freetype 2.8
	TT_APPLE_ID_FULL_UNICODE      = 6,
}

enum{
	TT_MAC_ID_ROMAN                = 0,
	TT_MAC_ID_JAPANESE             = 1,
	TT_MAC_ID_TRADITIONAL_CHINESE  = 2,
	TT_MAC_ID_KOREAN               = 3,
	TT_MAC_ID_ARABIC               = 4,
	TT_MAC_ID_HEBREW               = 5,
	TT_MAC_ID_GREEK                = 6,
	TT_MAC_ID_RUSSIAN              = 7,
	TT_MAC_ID_RSYMBOL              = 8,
	TT_MAC_ID_DEVANAGARI           = 9,
	TT_MAC_ID_GURMUKHI             = 10,
	TT_MAC_ID_GUJARATI             = 11,
	TT_MAC_ID_ORIYA                = 12,
	TT_MAC_ID_BENGALI              = 13,
	TT_MAC_ID_TAMIL                = 14,
	TT_MAC_ID_TELUGU               = 15,
	TT_MAC_ID_KANNADA              = 16,
	TT_MAC_ID_MALAYALAM            = 17,
	TT_MAC_ID_SINHALESE            = 18,
	TT_MAC_ID_BURMESE              = 19,
	TT_MAC_ID_KHMER                = 20,
	TT_MAC_ID_THAI                 = 21,
	TT_MAC_ID_LAOTIAN              = 22,
	TT_MAC_ID_GEORGIAN             = 23,
	TT_MAC_ID_ARMENIAN             = 24,
	TT_MAC_ID_MALDIVIAN            = 25,
	TT_MAC_ID_SIMPLIFIED_CHINESE   = 25,
	TT_MAC_ID_TIBETAN              = 26,
	TT_MAC_ID_MONGOLIAN            = 27,
	TT_MAC_ID_GEEZ                 = 28,
	TT_MAC_ID_SLAVIC               = 29,
	TT_MAC_ID_VIETNAMESE           = 30,
	TT_MAC_ID_SINDHI               = 31,
	TT_MAC_ID_UNINTERP             = 32,
}

enum{
	TT_ISO_ID_7BIT_ASCII  = 0,
	TT_ISO_ID_10646       = 1,
	TT_ISO_ID_8859_1      = 2,
}

enum{
	TT_MS_ID_SYMBOL_CS   = 0,
	TT_MS_ID_UNICODE_CS  = 1,
	TT_MS_ID_SJIS        = 2,
	TT_MS_ID_PRC         = 3,
	TT_MS_ID_GB2313      = TT_MS_ID_PRC,
	TT_MS_ID_BIG_5       = 4,
	TT_MS_ID_WANSUNG     = 5,
	TT_MS_ID_JOHAB       = 6,
	TT_MS_ID_UCS_4       = 10,
}

enum{
	TT_ADOBE_ID_STANDARD  = 0,
	TT_ADOBE_ID_EXPERT    = 1,
	TT_ADOBE_ID_CUSTOM    = 2,
	TT_ADOBE_ID_LATIN_1   = 3,
}

enum{
	TT_MAC_LANGID_ENGLISH              = 0,
	TT_MAC_LANGID_FRENCH               = 1,
	TT_MAC_LANGID_GERMAN               = 2,
	TT_MAC_LANGID_ITALIAN              = 3,
	TT_MAC_LANGID_DUTCH                = 4,
	TT_MAC_LANGID_SWEDISH              = 5,
	TT_MAC_LANGID_SPANISH              = 6,
	TT_MAC_LANGID_DANISH               = 7,
	TT_MAC_LANGID_PORTUGUESE           = 8,
	TT_MAC_LANGID_NORWEGIAN            = 9,
	TT_MAC_LANGID_HEBREW               = 10,
	TT_MAC_LANGID_JAPANESE             = 11,
	TT_MAC_LANGID_ARABIC               = 12,
	TT_MAC_LANGID_FINNISH              = 13,
	TT_MAC_LANGID_GREEK                = 14,
	TT_MAC_LANGID_ICELANDIC            = 15,
	TT_MAC_LANGID_MALTESE              = 16,
	TT_MAC_LANGID_TURKISH              = 17,
	TT_MAC_LANGID_CROATIAN             = 18,
	TT_MAC_LANGID_CHINESE_TRADITIONAL  = 19,
	TT_MAC_LANGID_URDU                 = 20,
	TT_MAC_LANGID_HINDI                = 21,
	TT_MAC_LANGID_THAI                 = 22,
	TT_MAC_LANGID_KOREAN               = 23,
	TT_MAC_LANGID_LITHUANIAN           = 24,
	TT_MAC_LANGID_POLISH               = 25,
	TT_MAC_LANGID_HUNGARIAN            = 26,
	TT_MAC_LANGID_ESTONIAN             = 27,
	TT_MAC_LANGID_LETTISH              = 28,
	TT_MAC_LANGID_SAAMISK              = 29,
	TT_MAC_LANGID_FAEROESE             = 30,
	TT_MAC_LANGID_FARSI                = 31,
	TT_MAC_LANGID_RUSSIAN              = 32,
	TT_MAC_LANGID_CHINESE_SIMPLIFIED   = 33,
	TT_MAC_LANGID_FLEMISH              = 34,
	TT_MAC_LANGID_IRISH                = 35,
	TT_MAC_LANGID_ALBANIAN             = 36,
	TT_MAC_LANGID_ROMANIAN             = 37,
	TT_MAC_LANGID_CZECH                = 38,
	TT_MAC_LANGID_SLOVAK               = 39,
	TT_MAC_LANGID_SLOVENIAN            = 40,
	TT_MAC_LANGID_YIDDISH              = 41,
	TT_MAC_LANGID_SERBIAN              = 42,
	TT_MAC_LANGID_MACEDONIAN           = 43,
	TT_MAC_LANGID_BULGARIAN            = 44,
	TT_MAC_LANGID_UKRAINIAN            = 45,
	TT_MAC_LANGID_BYELORUSSIAN         = 46,
	TT_MAC_LANGID_UZBEK                = 47,
	TT_MAC_LANGID_KAZAKH               = 48,
	TT_MAC_LANGID_AZERBAIJANI          = 49,
	TT_MAC_LANGID_AZERBAIJANI_CYRILLIC_SCRIPT = 49,
	TT_MAC_LANGID_AZERBAIJANI_ARABIC_SCRIPT = 50,
	TT_MAC_LANGID_ARMENIAN             = 51,
	TT_MAC_LANGID_GEORGIAN             = 52,
	TT_MAC_LANGID_MOLDAVIAN            = 53,
	TT_MAC_LANGID_KIRGHIZ              = 54,
	TT_MAC_LANGID_TAJIKI               = 55,
	TT_MAC_LANGID_TURKMEN              = 56,
	TT_MAC_LANGID_MONGOLIAN            = 57,
	TT_MAC_LANGID_MONGOLIAN_MONGOLIAN_SCRIPT = 57,
	TT_MAC_LANGID_MONGOLIAN_CYRILLIC_SCRIPT = 58,
	TT_MAC_LANGID_PASHTO               = 59,
	TT_MAC_LANGID_KURDISH              = 60,
	TT_MAC_LANGID_KASHMIRI             = 61,
	TT_MAC_LANGID_SINDHI               = 62,
	TT_MAC_LANGID_TIBETAN              = 63,
	TT_MAC_LANGID_NEPALI               = 64,
	TT_MAC_LANGID_SANSKRIT             = 65,
	TT_MAC_LANGID_MARATHI              = 66,
	TT_MAC_LANGID_BENGALI              = 67,
	TT_MAC_LANGID_ASSAMESE             = 68,
	TT_MAC_LANGID_GUJARATI             = 69,
	TT_MAC_LANGID_PUNJABI              = 70,
	TT_MAC_LANGID_ORIYA                = 71,
	TT_MAC_LANGID_MALAYALAM            = 72,
	TT_MAC_LANGID_KANNADA              = 73,
	TT_MAC_LANGID_TAMIL                = 74,
	TT_MAC_LANGID_TELUGU               = 75,
	TT_MAC_LANGID_SINHALESE            = 76,
	TT_MAC_LANGID_BURMESE              = 77,
	TT_MAC_LANGID_KHMER                = 78,
	TT_MAC_LANGID_LAO                  = 79,
	TT_MAC_LANGID_VIETNAMESE           = 80,
	TT_MAC_LANGID_INDONESIAN           = 81,
	TT_MAC_LANGID_TAGALOG              = 82,
	TT_MAC_LANGID_MALAY_ROMAN_SCRIPT   = 83,
	TT_MAC_LANGID_MALAY_ARABIC_SCRIPT  = 84,
	TT_MAC_LANGID_AMHARIC              = 85,
	TT_MAC_LANGID_TIGRINYA             = 86,
	TT_MAC_LANGID_GALLA                = 87,
	TT_MAC_LANGID_SOMALI               = 88,
	TT_MAC_LANGID_SWAHILI              = 89,
	TT_MAC_LANGID_RUANDA               = 90,
	TT_MAC_LANGID_RUNDI                = 91,
	TT_MAC_LANGID_CHEWA                = 92,
	TT_MAC_LANGID_MALAGASY             = 93,
	TT_MAC_LANGID_ESPERANTO            = 94,
	TT_MAC_LANGID_WELSH                = 128,
	TT_MAC_LANGID_BASQUE               = 129,
	TT_MAC_LANGID_CATALAN              = 130,
	TT_MAC_LANGID_LATIN                = 131,
	TT_MAC_LANGID_QUECHUA              = 132,
	TT_MAC_LANGID_GUARANI              = 133,
	TT_MAC_LANGID_AYMARA               = 134,
	TT_MAC_LANGID_TATAR                = 135,
	TT_MAC_LANGID_UIGHUR               = 136,
	TT_MAC_LANGID_DZONGKHA             = 137,
	TT_MAC_LANGID_JAVANESE             = 138,
	TT_MAC_LANGID_SUNDANESE            = 139,
	TT_MAC_LANGID_GALICIAN             = 140,
	TT_MAC_LANGID_AFRIKAANS            = 141,
	TT_MAC_LANGID_BRETON               = 142,
	TT_MAC_LANGID_INUKTITUT            = 143,
	TT_MAC_LANGID_SCOTTISH_GAELIC      = 144,
	TT_MAC_LANGID_MANX_GAELIC          = 145,
	TT_MAC_LANGID_IRISH_GAELIC         = 146,
	TT_MAC_LANGID_TONGAN               = 147,
	TT_MAC_LANGID_GREEK_POLYTONIC      = 148,
	TT_MAC_LANGID_GREELANDIC           = 149,
	TT_MAC_LANGID_AZERBAIJANI_ROMAN_SCRIPT = 150,
}

enum{
	TT_MS_LANGID_ARABIC_SAUDI_ARABIA = 0x0401,
	TT_MS_LANGID_ARABIC_IRAQ = 0x0801,
	TT_MS_LANGID_ARABIC_EGYPT = 0x0c01,
	TT_MS_LANGID_ARABIC_LIBYA = 0x1001,
	TT_MS_LANGID_ARABIC_ALGERIA = 0x1401,
	TT_MS_LANGID_ARABIC_MOROCCO = 0x1801,
	TT_MS_LANGID_ARABIC_TUNISIA = 0x1c01,
	TT_MS_LANGID_ARABIC_OMAN = 0x2001,
	TT_MS_LANGID_ARABIC_YEMEN = 0x2401,
	TT_MS_LANGID_ARABIC_SYRIA = 0x2801,
	TT_MS_LANGID_ARABIC_JORDAN = 0x2c01,
	TT_MS_LANGID_ARABIC_LEBANON = 0x3001,
	TT_MS_LANGID_ARABIC_KUWAIT = 0x3401,
	TT_MS_LANGID_ARABIC_UAE = 0x3801,
	TT_MS_LANGID_ARABIC_BAHRAIN = 0x3c01,
	TT_MS_LANGID_ARABIC_QATAR = 0x4001,
	TT_MS_LANGID_BULGARIAN_BULGARIA = 0x0402,
	TT_MS_LANGID_CATALAN_CATALAN = 0x0403,
	TT_MS_LANGID_CHINESE_TAIWAN = 0x0404,
	TT_MS_LANGID_CHINESE_PRC = 0x0804,
	TT_MS_LANGID_CHINESE_HONG_KONG = 0x0c04,
	TT_MS_LANGID_CHINESE_SINGAPORE = 0x1004,
	TT_MS_LANGID_CHINESE_MACAO = 0x1404,
	TT_MS_LANGID_CZECH_CZECH_REPUBLIC = 0x0405,
	TT_MS_LANGID_DANISH_DENMARK = 0x0406,
	TT_MS_LANGID_GERMAN_GERMANY = 0x0407,
	TT_MS_LANGID_GERMAN_SWITZERLAND = 0x0807,
	TT_MS_LANGID_GERMAN_AUSTRIA = 0x0c07,
	TT_MS_LANGID_GERMAN_LUXEMBOURG = 0x1007,
	TT_MS_LANGID_GERMAN_LIECHTENSTEIN = 0x1407,
	TT_MS_LANGID_GREEK_GREECE = 0x0408,
	TT_MS_LANGID_ENGLISH_UNITED_STATES = 0x0409,
	TT_MS_LANGID_ENGLISH_UNITED_KINGDOM = 0x0809,
	TT_MS_LANGID_ENGLISH_AUSTRALIA = 0x0c09,
	TT_MS_LANGID_ENGLISH_CANADA = 0x1009,
	TT_MS_LANGID_ENGLISH_NEW_ZEALAND = 0x1409,
	TT_MS_LANGID_ENGLISH_IRELAND = 0x1809,
	TT_MS_LANGID_ENGLISH_SOUTH_AFRICA = 0x1c09,
	TT_MS_LANGID_ENGLISH_JAMAICA = 0x2009,
	TT_MS_LANGID_ENGLISH_CARIBBEAN = 0x2409,
	TT_MS_LANGID_ENGLISH_BELIZE = 0x2809,
	TT_MS_LANGID_ENGLISH_TRINIDAD = 0x2c09,
	TT_MS_LANGID_ENGLISH_ZIMBABWE = 0x3009,
	TT_MS_LANGID_ENGLISH_PHILIPPINES = 0x3409,
	TT_MS_LANGID_ENGLISH_INDIA = 0x4009,
	TT_MS_LANGID_ENGLISH_MALAYSIA = 0x4409,
	TT_MS_LANGID_ENGLISH_SINGAPORE = 0x4809,
	TT_MS_LANGID_SPANISH_SPAIN_TRADITIONAL_SORT = 0x040a,
	TT_MS_LANGID_SPANISH_MEXICO = 0x080a,
	TT_MS_LANGID_SPANISH_SPAIN_MODERN_SORT = 0x0c0a,
	TT_MS_LANGID_SPANISH_GUATEMALA = 0x100a,
	TT_MS_LANGID_SPANISH_COSTA_RICA = 0x140a,
	TT_MS_LANGID_SPANISH_PANAMA = 0x180a,
	TT_MS_LANGID_SPANISH_DOMINICAN_REPUBLIC = 0x1c0a,
	TT_MS_LANGID_SPANISH_VENEZUELA = 0x200a,
	TT_MS_LANGID_SPANISH_COLOMBIA = 0x240a,
	TT_MS_LANGID_SPANISH_PERU = 0x280a,
	TT_MS_LANGID_SPANISH_ARGENTINA = 0x2c0a,
	TT_MS_LANGID_SPANISH_ECUADOR = 0x300a,
	TT_MS_LANGID_SPANISH_CHILE = 0x340a,
	TT_MS_LANGID_SPANISH_URUGUAY = 0x380a,
	TT_MS_LANGID_SPANISH_PARAGUAY = 0x3c0a,
	TT_MS_LANGID_SPANISH_BOLIVIA = 0x400a,
	TT_MS_LANGID_SPANISH_EL_SALVADOR = 0x440a,
	TT_MS_LANGID_SPANISH_HONDURAS = 0x480a,
	TT_MS_LANGID_SPANISH_NICARAGUA = 0x4c0a,
	TT_MS_LANGID_SPANISH_PUERTO_RICO = 0x500a,
	TT_MS_LANGID_SPANISH_UNITED_STATES = 0x540a,
	TT_MS_LANGID_FINNISH_FINLAND = 0x040b,
	TT_MS_LANGID_FRENCH_FRANCE = 0x040c,
	TT_MS_LANGID_FRENCH_BELGIUM = 0x080c,
	TT_MS_LANGID_FRENCH_CANADA = 0x0c0c,
	TT_MS_LANGID_FRENCH_SWITZERLAND = 0x100c,
	TT_MS_LANGID_FRENCH_LUXEMBOURG = 0x140c,
	TT_MS_LANGID_FRENCH_MONACO = 0x180c,
	TT_MS_LANGID_HEBREW_ISRAEL = 0x040d,
	TT_MS_LANGID_HUNGARIAN_HUNGARY = 0x040e,
	TT_MS_LANGID_ICELANDIC_ICELAND = 0x040f,
	TT_MS_LANGID_ITALIAN_ITALY = 0x0410,
	TT_MS_LANGID_ITALIAN_SWITZERLAND = 0x0810,
	TT_MS_LANGID_JAPANESE_JAPAN = 0x0411,
	TT_MS_LANGID_KOREAN_KOREA = 0x0412,
	TT_MS_LANGID_DUTCH_NETHERLANDS = 0x0413,
	TT_MS_LANGID_DUTCH_BELGIUM = 0x0813,
	TT_MS_LANGID_NORWEGIAN_NORWAY_BOKMAL = 0x0414,
	TT_MS_LANGID_NORWEGIAN_NORWAY_NYNORSK = 0x0814,
	TT_MS_LANGID_POLISH_POLAND = 0x0415,
	TT_MS_LANGID_PORTUGUESE_BRAZIL = 0x0416,
	TT_MS_LANGID_PORTUGUESE_PORTUGAL = 0x0816,
	TT_MS_LANGID_ROMANSH_SWITZERLAND = 0x0417,
	TT_MS_LANGID_ROMANIAN_ROMANIA = 0x0418,
	TT_MS_LANGID_RUSSIAN_RUSSIA = 0x0419,
	TT_MS_LANGID_CROATIAN_CROATIA = 0x041a,
	TT_MS_LANGID_SERBIAN_SERBIA_LATIN = 0x081a,
	TT_MS_LANGID_SERBIAN_SERBIA_CYRILLIC = 0x0c1a,
	TT_MS_LANGID_CROATIAN_BOSNIA_HERZEGOVINA = 0x101a,
	TT_MS_LANGID_BOSNIAN_BOSNIA_HERZEGOVINA = 0x141a,
	TT_MS_LANGID_SERBIAN_BOSNIA_HERZ_LATIN = 0x1c1a,
	TT_MS_LANGID_SERBIAN_BOSNIA_HERZ_CYRILLIC = 0x201a,
	TT_MS_LANGID_SLOVAK_SLOVAKIA = 0x041b,
	TT_MS_LANGID_ALBANIAN_ALBANIA = 0x041c,
	TT_MS_LANGID_SWEDISH_SWEDEN = 0x041d,
	TT_MS_LANGID_SWEDISH_FINLAND = 0x081d,
	TT_MS_LANGID_THAI_THAILAND = 0x041e,
	TT_MS_LANGID_TURKISH_TURKEY = 0x041f,
	TT_MS_LANGID_URDU_PAKISTAN = 0x0420,
	TT_MS_LANGID_INDONESIAN_INDONESIA = 0x0421,
	TT_MS_LANGID_UKRAINIAN_UKRAINE = 0x0422,
	TT_MS_LANGID_BELARUSIAN_BELARUS = 0x0423,
	TT_MS_LANGID_SLOVENIAN_SLOVENIA = 0x0424,
	TT_MS_LANGID_ESTONIAN_ESTONIA = 0x0425,
	TT_MS_LANGID_LATVIAN_LATVIA = 0x0426,
	TT_MS_LANGID_LITHUANIAN_LITHUANIA = 0x0427,
	TT_MS_LANGID_TAJIK_TAJIKISTAN = 0x0428,
	TT_MS_LANGID_VIETNAMESE_VIET_NAM = 0x042a,
	TT_MS_LANGID_ARMENIAN_ARMENIA = 0x042b,
	TT_MS_LANGID_AZERI_AZERBAIJAN_LATIN = 0x042c,
	TT_MS_LANGID_AZERI_AZERBAIJAN_CYRILLIC = 0x082c,
	TT_MS_LANGID_BASQUE_BASQUE = 0x042d,
	TT_MS_LANGID_UPPER_SORBIAN_GERMANY = 0x042e,
	TT_MS_LANGID_LOWER_SORBIAN_GERMANY = 0x082e,
	TT_MS_LANGID_MACEDONIAN_MACEDONIA = 0x042f,
	TT_MS_LANGID_SETSWANA_SOUTH_AFRICA = 0x0432,
	TT_MS_LANGID_ISIXHOSA_SOUTH_AFRICA = 0x0434,
	TT_MS_LANGID_ISIZULU_SOUTH_AFRICA = 0x0435,
	TT_MS_LANGID_AFRIKAANS_SOUTH_AFRICA = 0x0436,
	TT_MS_LANGID_GEORGIAN_GEORGIA = 0x0437,
	TT_MS_LANGID_FAEROESE_FAEROE_ISLANDS = 0x0438,
	TT_MS_LANGID_HINDI_INDIA = 0x0439,
	TT_MS_LANGID_MALTESE_MALTA = 0x043a,
	TT_MS_LANGID_SAMI_NORTHERN_NORWAY = 0x043b,
	TT_MS_LANGID_SAMI_NORTHERN_SWEDEN = 0x083b,
	TT_MS_LANGID_SAMI_NORTHERN_FINLAND = 0x0C3b,
	TT_MS_LANGID_SAMI_LULE_NORWAY = 0x103b,
	TT_MS_LANGID_SAMI_LULE_SWEDEN = 0x143b,
	TT_MS_LANGID_SAMI_SOUTHERN_NORWAY = 0x183b,
	TT_MS_LANGID_SAMI_SOUTHERN_SWEDEN = 0x1C3b,
	TT_MS_LANGID_SAMI_SKOLT_FINLAND = 0x203b,
	TT_MS_LANGID_SAMI_INARI_FINLAND = 0x243b,
	TT_MS_LANGID_IRISH_IRELAND = 0x083c,
	TT_MS_LANGID_MALAY_MALAYSIA = 0x043e,
	TT_MS_LANGID_MALAY_BRUNEI_DARUSSALAM = 0x083e,
	TT_MS_LANGID_KAZAKH_KAZAKHSTAN = 0x043f,
	TT_MS_LANGID_KYRGYZ_KYRGYZSTAN  = 0x0440,
	TT_MS_LANGID_KISWAHILI_KENYA = 0x0441,
	TT_MS_LANGID_TURKMEN_TURKMENISTAN = 0x0442,
	TT_MS_LANGID_UZBEK_UZBEKISTAN_LATIN = 0x0443,
	TT_MS_LANGID_UZBEK_UZBEKISTAN_CYRILLIC = 0x0843,
	TT_MS_LANGID_TATAR_RUSSIA = 0x0444,
	TT_MS_LANGID_BENGALI_INDIA = 0x0445,
	TT_MS_LANGID_BENGALI_BANGLADESH = 0x0845,
	TT_MS_LANGID_PUNJABI_INDIA = 0x0446,
	TT_MS_LANGID_GUJARATI_INDIA = 0x0447,
	TT_MS_LANGID_ODIA_INDIA = 0x0448,
	TT_MS_LANGID_TAMIL_INDIA = 0x0449,
	TT_MS_LANGID_TELUGU_INDIA = 0x044a,
	TT_MS_LANGID_KANNADA_INDIA = 0x044b,
	TT_MS_LANGID_MALAYALAM_INDIA = 0x044c,
	TT_MS_LANGID_ASSAMESE_INDIA = 0x044d,
	TT_MS_LANGID_MARATHI_INDIA = 0x044e,
	TT_MS_LANGID_SANSKRIT_INDIA = 0x044f,
	TT_MS_LANGID_MONGOLIAN_MONGOLIA = 0x0450,
	TT_MS_LANGID_MONGOLIAN_PRC = 0x0850,
	TT_MS_LANGID_TIBETAN_PRC = 0x0451,
	TT_MS_LANGID_WELSH_UNITED_KINGDOM = 0x0452,
	TT_MS_LANGID_KHMER_CAMBODIA = 0x0453,
	TT_MS_LANGID_LAO_LAOS = 0x0454,
	TT_MS_LANGID_GALICIAN_GALICIAN = 0x0456,
	TT_MS_LANGID_GALICIAN_SPAIN = TT_MS_LANGID_GALICIAN_GALICIAN,
	TT_MS_LANGID_KONKANI_INDIA = 0x0457,
	TT_MS_LANGID_SYRIAC_SYRIA = 0x045a,
	TT_MS_LANGID_SINHALA_SRI_LANKA = 0x045b,
	TT_MS_LANGID_INUKTITUT_CANADA = 0x045d,
	TT_MS_LANGID_INUKTITUT_CANADA_LATIN = 0x085d,
	TT_MS_LANGID_AMHARIC_ETHIOPIA = 0x045e,
	TT_MS_LANGID_TAMAZIGHT_ALGERIA = 0x085f,
	TT_MS_LANGID_NEPALI_NEPAL = 0x0461,
	TT_MS_LANGID_FRISIAN_NETHERLANDS = 0x0462,
	TT_MS_LANGID_PASHTO_AFGHANISTAN = 0x0463,
	TT_MS_LANGID_FILIPINO_PHILIPPINES = 0x0464,
	TT_MS_LANGID_HAUSA_NIGERIA = 0x0468,
	TT_MS_LANGID_YORUBA_NIGERIA = 0x046a,
	TT_MS_LANGID_QUECHUA_BOLIVIA = 0x046b,
	TT_MS_LANGID_QUECHUA_ECUADOR = 0x086b,
	TT_MS_LANGID_QUECHUA_PERU = 0x0c6b,
	TT_MS_LANGID_SESOTHO_SA_LEBOA_SOUTH_AFRICA = 0x046c,
	TT_MS_LANGID_LUXEMBOURGISH_LUXEMBOURG = 0x046e,
	TT_MS_LANGID_GREENLANDIC_GREENLAND = 0x046f,
	TT_MS_LANGID_IGBO_NIGERIA = 0x0470,
	TT_MS_LANGID_YI_PRC = 0x0478,
	TT_MS_LANGID_MAPUDUNGUN_CHILE = 0x047A,
	TT_MS_LANGID_MOHAWK_MOHAWK = 0x047C,
	TT_MS_LANGID_BRETON_FRANCE = 0x047E,
	TT_MS_LANGID_UIGHUR_PRC = 0x0480,
	TT_MS_LANGID_MAORI_NEW_ZEALAND = 0x0481,
	TT_MS_LANGID_OCCITAN_FRANCE = 0x0482,
	TT_MS_LANGID_CORSICAN_FRANCE = 0x0483,
	TT_MS_LANGID_ALSATIAN_FRANCE = 0x0484,
	TT_MS_LANGID_YAKUT_RUSSIA = 0x0485,
	TT_MS_LANGID_KICHE_GUATEMALA = 0x0486,
	TT_MS_LANGID_KINYARWANDA_RWANDA = 0x0487,
	TT_MS_LANGID_WOLOF_SENEGAL = 0x0488,
	TT_MS_LANGID_DARI_AFGHANISTAN = 0x048C,
	
	TT_MS_LANGID_ARABIC_GENERAL = 0x0001,
	TT_MS_LANGID_CATALAN_SPAIN = TT_MS_LANGID_CATALAN_CATALAN,
	TT_MS_LANGID_CHINESE_GENERAL = 0x0004,
	TT_MS_LANGID_CHINESE_MACAU = TT_MS_LANGID_CHINESE_MACAO,
	TT_MS_LANGID_GERMAN_LIECHTENSTEI = TT_MS_LANGID_GERMAN_LIECHTENSTEIN,
	TT_MS_LANGID_ENGLISH_GENERAL = 0x0009,
	TT_MS_LANGID_ENGLISH_INDONESIA = 0x3809,
	TT_MS_LANGID_ENGLISH_HONG_KONG = 0x3c09,
	TT_MS_LANGID_SPANISH_SPAIN_INTERNATIONAL_SORT = TT_MS_LANGID_SPANISH_SPAIN_MODERN_SORT,
	TT_MS_LANGID_SPANISH_LATIN_AMERICA = 0xE40aU,
	TT_MS_LANGID_FRENCH_WEST_INDIES = 0x1c0c,
	TT_MS_LANGID_FRENCH_REUNION = 0x200c,
	TT_MS_LANGID_FRENCH_CONGO = 0x240c,
	TT_MS_LANGID_FRENCH_ZAIRE = TT_MS_LANGID_FRENCH_CONGO,
	TT_MS_LANGID_FRENCH_SENEGAL = 0x280c,
	TT_MS_LANGID_FRENCH_CAMEROON = 0x2c0c,
	TT_MS_LANGID_FRENCH_COTE_D_IVOIRE = 0x300c,
	TT_MS_LANGID_FRENCH_MALI = 0x340c,
	TT_MS_LANGID_FRENCH_MOROCCO = 0x380c,
	TT_MS_LANGID_FRENCH_HAITI = 0x3c0c,
	TT_MS_LANGID_FRENCH_NORTH_AFRICA = 0xE40cU,
	TT_MS_LANGID_KOREAN_EXTENDED_WANSUNG_KOREA = TT_MS_LANGID_KOREAN_KOREA,
	TT_MS_LANGID_KOREAN_JOHAB_KOREA = 0x812,
	TT_MS_LANGID_RHAETO_ROMANIC_SWITZERLAND = TT_MS_LANGID_ROMANSH_SWITZERLAND,
	TT_MS_LANGID_MOLDAVIAN_MOLDAVIA = 0x0818,
	TT_MS_LANGID_RUSSIAN_MOLDAVIA = 0x0819,
	TT_MS_LANGID_URDU_INDIA = 0x0820,
	TT_MS_LANGID_CLASSIC_LITHUANIAN_LITHUANIA = 0x0827,
	TT_MS_LANGID_SLOVENE_SLOVENIA = TT_MS_LANGID_SLOVENIAN_SLOVENIA,
	TT_MS_LANGID_FARSI_IRAN = 0x0429,
	TT_MS_LANGID_BASQUE_SPAIN = TT_MS_LANGID_BASQUE_BASQUE,
	TT_MS_LANGID_SORBIAN_GERMANY = TT_MS_LANGID_UPPER_SORBIAN_GERMANY,
	TT_MS_LANGID_SUTU_SOUTH_AFRICA = 0x0430,
	TT_MS_LANGID_TSONGA_SOUTH_AFRICA = 0x0431,
	TT_MS_LANGID_TSWANA_SOUTH_AFRICA = TT_MS_LANGID_SETSWANA_SOUTH_AFRICA,
	TT_MS_LANGID_VENDA_SOUTH_AFRICA = 0x0433,
	TT_MS_LANGID_XHOSA_SOUTH_AFRICA = TT_MS_LANGID_ISIXHOSA_SOUTH_AFRICA,
	TT_MS_LANGID_ZULU_SOUTH_AFRICA = TT_MS_LANGID_ISIZULU_SOUTH_AFRICA,
	TT_MS_LANGID_SAAMI_LAPONIA = 0x043b,
	TT_MS_LANGID_IRISH_GAELIC_IRELAND = 0x043c,
	TT_MS_LANGID_SCOTTISH_GAELIC_UNITED_KINGDOM = 0x083c,
	TT_MS_LANGID_YIDDISH_GERMANY = 0x043d,
	TT_MS_LANGID_KAZAK_KAZAKSTAN = TT_MS_LANGID_KAZAKH_KAZAKHSTAN,
	TT_MS_LANGID_KIRGHIZ_KIRGHIZ_REPUBLIC = TT_MS_LANGID_KIRGHIZ_KIRGHIZSTAN,
	TT_MS_LANGID_KIRGHIZ_KIRGHIZSTAN  = TT_MS_LANGID_KYRGYZ_KYRGYZSTAN,
	TT_MS_LANGID_SWAHILI_KENYA = TT_MS_LANGID_KISWAHILI_KENYA,
	TT_MS_LANGID_TATAR_TATARSTAN = TT_MS_LANGID_TATAR_RUSSIA,
	TT_MS_LANGID_PUNJABI_ARABIC_PAKISTAN = 0x0846,
	TT_MS_LANGID_ORIYA_INDIA = TT_MS_LANGID_ODIA_INDIA,
	TT_MS_LANGID_MONGOLIAN_MONGOLIA_MONGOLIAN = TT_MS_LANGID_MONGOLIAN_PRC,
	TT_MS_LANGID_TIBETAN_CHINA = TT_MS_LANGID_TIBETAN_PRC,
	TT_MS_LANGID_DZONGHKA_BHUTAN = 0x0851,
	TT_MS_LANGID_TIBETAN_BHUTAN = TT_MS_LANGID_DZONGHKA_BHUTAN,
	TT_MS_LANGID_WELSH_WALES = TT_MS_LANGID_WELSH_UNITED_KINGDOM,
	TT_MS_LANGID_BURMESE_MYANMAR = 0x0455,
	TT_MS_LANGID_MANIPURI_INDIA = 0x0458,
	TT_MS_LANGID_SINDHI_INDIA = 0x0459,
	TT_MS_LANGID_SINDHI_PAKISTAN = 0x0859,
	TT_MS_LANGID_SINHALESE_SRI_LANKA = TT_MS_LANGID_SINHALA_SRI_LANKA,
	TT_MS_LANGID_CHEROKEE_UNITED_STATES = 0x045c,
	TT_MS_LANGID_TAMAZIGHT_MOROCCO = 0x045f,
	TT_MS_LANGID_TAMAZIGHT_MOROCCO_LATIN = TT_MS_LANGID_TAMAZIGHT_ALGERIA,
	TT_MS_LANGID_KASHMIRI_PAKISTAN = 0x0460,
	TT_MS_LANGID_KASHMIRI_SASIA = 0x0860,
	TT_MS_LANGID_KASHMIRI_INDIA = TT_MS_LANGID_KASHMIRI_SASIA,
	TT_MS_LANGID_NEPALI_INDIA = 0x0861,
	TT_MS_LANGID_DHIVEHI_MALDIVES = 0x0465,
	TT_MS_LANGID_DIVEHI_MALDIVES = TT_MS_LANGID_DHIVEHI_MALDIVES,
	TT_MS_LANGID_EDO_NIGERIA = 0x0466,
	TT_MS_LANGID_FULFULDE_NIGERIA = 0x0467,
	TT_MS_LANGID_IBIBIO_NIGERIA = 0x0469,
	TT_MS_LANGID_SEPEDI_SOUTH_AFRICA = TT_MS_LANGID_SESOTHO_SA_LEBOA_SOUTH_AFRICA,
	TT_MS_LANGID_SOTHO_SOUTHERN_SOUTH_AFRICA = TT_MS_LANGID_SESOTHO_SA_LEBOA_SOUTH_AFRICA,
	TT_MS_LANGID_KANURI_NIGERIA = 0x0471,
	TT_MS_LANGID_OROMO_ETHIOPIA = 0x0472,
	TT_MS_LANGID_TIGRIGNA_ETHIOPIA = 0x0473,
	TT_MS_LANGID_TIGRIGNA_ERYTHREA = 0x0873,
	TT_MS_LANGID_TIGRIGNA_ERYTREA = TT_MS_LANGID_TIGRIGNA_ERYTHREA,
	TT_MS_LANGID_GUARANI_PARAGUAY = 0x0474,
	TT_MS_LANGID_HAWAIIAN_UNITED_STATES = 0x0475,
	TT_MS_LANGID_LATIN = 0x0476,
	TT_MS_LANGID_SOMALI_SOMALIA = 0x0477,
	TT_MS_LANGID_YI_CHINA = TT_MS_LANGID_YI_PRC,
	TT_MS_LANGID_PAPIAMENTU_NETHERLANDS_ANTILLES = 0x0479,
	TT_MS_LANGID_UIGHUR_CHINA = TT_MS_LANGID_UIGHUR_PRC,
}

enum{
	TT_NAME_ID_COPYRIGHT              = 0,
	TT_NAME_ID_FONT_FAMILY            = 1,
	TT_NAME_ID_FONT_SUBFAMILY         = 2,
	TT_NAME_ID_UNIQUE_ID              = 3,
	TT_NAME_ID_FULL_NAME              = 4,
	TT_NAME_ID_VERSION_STRING         = 5,
	TT_NAME_ID_PS_NAME                = 6,
	TT_NAME_ID_TRADEMARK              = 7,
	TT_NAME_ID_MANUFACTURER           = 8,
	TT_NAME_ID_DESIGNER               = 9,
	TT_NAME_ID_DESCRIPTION            = 10,
	TT_NAME_ID_VENDOR_URL             = 11,
	TT_NAME_ID_DESIGNER_URL           = 12,
	TT_NAME_ID_LICENSE                = 13,
	TT_NAME_ID_LICENSE_URL            = 14,
	TT_NAME_ID_TYPOGRAPHIC_FAMILY     = 16,
	TT_NAME_ID_TYPOGRAPHIC_SUBFAMILY  = 17,
	TT_NAME_ID_MAC_FULL_NAME          = 18,
	TT_NAME_ID_SAMPLE_TEXT            = 19,
	TT_NAME_ID_CID_FINDFONT_NAME      = 20,
	TT_NAME_ID_WWS_FAMILY             = 21,
	TT_NAME_ID_WWS_SUBFAMILY          = 22,
	
	// Added in Freetype 2.8
	TT_NAME_ID_LIGHT_BACKGROUND       = 23,
	TT_NAME_ID_DARK_BACKGROUND        = 24,
	TT_NAME_ID_VARIATIONS_PREFIX      = 25,
	TT_NAME_ID_PREFERRED_FAMILY       = TT_NAME_ID_TYPOGRAPHIC_FAMILY,
	TT_NAME_ID_PREFERRED_SUBFAMILY    = TT_NAME_ID_TYPOGRAPHIC_SUBFAMILY,
}

enum{
	TT_UCR_BASIC_LATIN                       = 1 <<  0,
	TT_UCR_LATIN1_SUPPLEMENT                 = 1 <<  1,
	TT_UCR_LATIN_EXTENDED_A                  = 1 <<  2,
	TT_UCR_LATIN_EXTENDED_B                  = 1 <<  3,
	TT_UCR_IPA_EXTENSIONS                    = 1 <<  4,
	TT_UCR_SPACING_MODIFIER                  = 1 <<  5,
	TT_UCR_COMBINING_DIACRITICAL_MARKS       = 1 <<  6,
	TT_UCR_GREEK                             = 1 <<  7,
	TT_UCR_COPTIC                            = 1 <<  8,
	TT_UCR_CYRILLIC                          = 1 <<  9,
	TT_UCR_ARMENIAN                          = 1 << 10,
	TT_UCR_HEBREW                            = 1 << 11,
	TT_UCR_VAI                               = 1 << 12,
	TT_UCR_ARABIC                            = 1 << 13,
	TT_UCR_NKO                               = 1 << 14,
	TT_UCR_DEVANAGARI                        = 1 << 15,
	TT_UCR_BENGALI                           = 1 << 16,
	TT_UCR_GURMUKHI                          = 1 << 17,
	TT_UCR_GUJARATI                          = 1 << 18,
	TT_UCR_ORIYA                             = 1 << 19,
	TT_UCR_TAMIL                             = 1 << 20,
	TT_UCR_TELUGU                            = 1 << 21,
	TT_UCR_KANNADA                           = 1 << 22,
	TT_UCR_MALAYALAM                         = 1 << 23,
	TT_UCR_THAI                              = 1 << 24,
	TT_UCR_LAO                               = 1 << 25,
	TT_UCR_GEORGIAN                          = 1 << 26,
	TT_UCR_BALINESE                          = 1 << 27,
	TT_UCR_HANGUL_JAMO                       = 1 << 28,
	TT_UCR_LATIN_EXTENDED_ADDITIONAL         = 1 << 29,
	TT_UCR_GREEK_EXTENDED                    = 1 << 30,
	TT_UCR_SUPERSCRIPTS_SUBSCRIPTS           = 1 <<  0,
	TT_UCR_CURRENCY_SYMBOLS                  = 1 <<  1,
	TT_UCR_COMBINING_DIACRITICAL_MARKS_SYMB  = 1 <<  2,
	TT_UCR_LETTERLIKE_SYMBOLS                = 1 <<  3,
	TT_UCR_NUMBER_FORMS                      = 1 <<  4,
	TT_UCR_ARROWS                            = 1 <<  5,
	TT_UCR_MATHEMATICAL_OPERATORS            = 1 <<  6,
	TT_UCR_MISCELLANEOUS_TECHNICAL           = 1 <<  7,
	TT_UCR_CONTROL_PICTURES                  = 1 <<  8,
	TT_UCR_OCR                               = 1 <<  9,
	TT_UCR_ENCLOSED_ALPHANUMERICS            = 1 << 10,
	TT_UCR_BOX_DRAWING                       = 1 << 11,
	TT_UCR_BLOCK_ELEMENTS                    = 1 << 12,
	TT_UCR_GEOMETRIC_SHAPES                  = 1 << 13,
	TT_UCR_MISCELLANEOUS_SYMBOLS             = 1 << 14,
	TT_UCR_DINGBATS                          = 1 << 15,
	TT_UCR_CJK_SYMBOLS                       = 1 << 16,
	TT_UCR_HIRAGANA                          = 1 << 17,
	TT_UCR_KATAKANA                          = 1 << 18,
	TT_UCR_BOPOMOFO                          = 1 << 19,
	TT_UCR_HANGUL_COMPATIBILITY_JAMO         = 1 << 20,
	TT_UCR_CJK_MISC                          = 1 << 21,
	TT_UCR_ENCLOSED_CJK_LETTERS_MONTHS       = 1 << 22,
	TT_UCR_CJK_COMPATIBILITY                 = 1 << 23,
	TT_UCR_HANGUL                            = 1 << 24,
	TT_UCR_SURROGATES                        = 1 << 25,
	TT_UCR_NON_PLANE_0                       = TT_UCR_SURROGATES,
	TT_UCR_PHOENICIAN                        = 1 << 26,
	TT_UCR_CJK_UNIFIED_IDEOGRAPHS            = 1 << 27,
	TT_UCR_PRIVATE_USE                       = 1 << 28,
	TT_UCR_CJK_COMPATIBILITY_IDEOGRAPHS      = 1 << 29,
	TT_UCR_ALPHABETIC_PRESENTATION_FORMS     = 1 << 30,
	TT_UCR_ARABIC_PRESENTATION_FORMS_A       = 1 << 31,
	TT_UCR_COMBINING_HALF_MARKS              = 1 <<  0,
	TT_UCR_CJK_COMPATIBILITY_FORMS           = 1 <<  1,
	TT_UCR_SMALL_FORM_VARIANTS               = 1 <<  2,
	TT_UCR_ARABIC_PRESENTATION_FORMS_B       = 1 <<  3,
	TT_UCR_HALFWIDTH_FULLWIDTH_FORMS         = 1 <<  4,
	TT_UCR_SPECIALS                          = 1 <<  5,
	TT_UCR_TIBETAN                           = 1 <<  6,
	TT_UCR_SYRIAC                            = 1 <<  7,
	TT_UCR_THAANA                            = 1 <<  8,
	TT_UCR_SINHALA                           = 1 <<  9,
	TT_UCR_MYANMAR                           = 1 << 10,
	TT_UCR_ETHIOPIC                          = 1 << 11,
	TT_UCR_CHEROKEE                          = 1 << 12,
	TT_UCR_CANADIAN_ABORIGINAL_SYLLABICS     = 1 << 13,
	TT_UCR_OGHAM                             = 1 << 14,
	TT_UCR_RUNIC                             = 1 << 15,
	TT_UCR_KHMER                             = 1 << 16,
	TT_UCR_MONGOLIAN                         = 1 << 17,
	TT_UCR_BRAILLE                           = 1 << 18,
	TT_UCR_YI                                = 1 << 19,
	TT_UCR_PHILIPPINE                        = 1 << 20,
	TT_UCR_OLD_ITALIC                        = 1 << 21,
	TT_UCR_GOTHIC                            = 1 << 22,
	TT_UCR_DESERET                           = 1 << 23,
	TT_UCR_MUSICAL_SYMBOLS                   = 1 << 24,
	TT_UCR_MATH_ALPHANUMERIC_SYMBOLS         = 1 << 25,
	TT_UCR_PRIVATE_USE_SUPPLEMENTARY         = 1 << 26,
	TT_UCR_VARIATION_SELECTORS               = 1 << 27,
	TT_UCR_TAGS                              = 1 << 28,
	TT_UCR_LIMBU                             = 1 << 29,
	TT_UCR_TAI_LE                            = 1 << 30,
	TT_UCR_NEW_TAI_LUE                       = 1 << 31,
	TT_UCR_BUGINESE                          = 1 <<  0,
	TT_UCR_GLAGOLITIC                        = 1 <<  1,
	TT_UCR_TIFINAGH                          = 1 <<  2,
	TT_UCR_YIJING                            = 1 <<  3,
	TT_UCR_SYLOTI_NAGRI                      = 1 <<  4,
	TT_UCR_LINEAR_B                          = 1 <<  5,
	TT_UCR_ANCIENT_GREEK_NUMBERS             = 1 <<  6,
	TT_UCR_UGARITIC                          = 1 <<  7,
	TT_UCR_OLD_PERSIAN                       = 1 <<  8,
	TT_UCR_SHAVIAN                           = 1 <<  9,
	TT_UCR_OSMANYA                           = 1 << 10,
	TT_UCR_CYPRIOT_SYLLABARY                 = 1 << 11,
	TT_UCR_KHAROSHTHI                        = 1 << 12,
	TT_UCR_TAI_XUAN_JING                     = 1 << 13,
	TT_UCR_CUNEIFORM                         = 1 << 14,
	TT_UCR_COUNTING_ROD_NUMERALS             = 1 << 15,
	TT_UCR_SUNDANESE                         = 1 << 16,
	TT_UCR_LEPCHA                            = 1 << 17,
	TT_UCR_OL_CHIKI                          = 1 << 18,
	TT_UCR_SAURASHTRA                        = 1 << 19,
	TT_UCR_KAYAH_LI                          = 1 << 20,
	TT_UCR_REJANG                            = 1 << 21,
	TT_UCR_CHAM                              = 1 << 22,
	TT_UCR_ANCIENT_SYMBOLS                   = 1 << 23,
	TT_UCR_PHAISTOS_DISC                     = 1 << 24,
	TT_UCR_OLD_ANATOLIAN                     = 1 << 25,
	TT_UCR_GAME_TILES                        = 1 << 26,
	   
	TT_UCR_COMBINING_DIACRITICS              = TT_UCR_COMBINING_DIACRITICAL_MARKS,
	TT_UCR_COMBINING_DIACRITICS_SYMB         = TT_UCR_COMBINING_DIACRITICAL_MARKS_SYMB,
	TT_UCR_ARABIC_PRESENTATIONS_A            = TT_UCR_ARABIC_PRESENTATION_FORMS_A,
	TT_UCR_ARABIC_PRESENTATIONS_B            = TT_UCR_ARABIC_PRESENTATION_FORMS_B,
}

mixin(joinFnBinds((){
	FnBind[] ret;
	return ret;
}()));
