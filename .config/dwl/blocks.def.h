//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "sb-rmpc",	            0,		10},

	{"", "sb-forecast",	        3600,	0},

	{" ", "sb-wireplumber",    250000,	11},

	{"󰘚 ", "sb-cpu",	        5,		0},

	{"󰔏 ", "sb-cpu-temp",	    5,		0},

	{"󰍛 ", "sb-memory",	        5,		0},

	{"󰋊 ", "sb-disk",	        3600,	0},

	{"", "sb-battery",	        60,		0},

	{"󰥔 ", "sb-datetime",		10,		0},

	{"󰚰 ", "sb-updates",	    3600,	12},
	/* Updates whenever "pkill -SIGRTMIN+10 someblocks" is ran */
	/* {"", "date '+%b %d (%a) %I:%M%p'",					0,		10}, */
};



//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
