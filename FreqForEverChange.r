#include "Types.r"include "Sounds.rsrc";#define AllItems	0b1111111111111111111111111111111	/* 31 flags */#define MenuItem2	0b00010resource 'DLOG' (128, "About�") {	{66, 102, 224, 400},	dBoxProc, visible, noGoAway, 0x0, 128, ""};resource 'DITL' (128) {	 {/* 1 */ {130, 205, 150, 284},		button {			enabled,			"Continue"		};/* 2 */ {104, 144, 120, 296},				/* SourceLanguage Item */		staticText {			disabled,			""		};/* 3 */ {88, 144, 105, 218},				/* Author Item */		staticText {			disabled,			""		};/* 4 */ {8, 32, 26, 273},		staticText {			disabled,			"Macintosh Programmer's Workshop"		};/* 5 */ {32, 103, 50, 202},		staticText {			disabled,			""		};/* 6 */ {88, 16, 104, 144},		staticText {			enabled, "Source Language:"		};/* 7 */ {104, 16, 120, 144},		staticText {			enabled, "Brought to you by:"		}	}};resource 'MENU' (128, "Apple", preload) {	128, textMenuProc,	AllItems & ~MenuItem2,	/* Disable item #2 */	enabled, apple,	{		"About�",			noicon, nokey, nomark, plain;		"-",			noicon, nokey, nomark, plain	}};