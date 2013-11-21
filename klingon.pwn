//Credits goes to Slice, xeeZ, The Klingon University and the SA-MP team. I only claim little credit.

#include <a_samp>
#include <translate>

public OnFilterScriptInit() {
	// Do this once for each language
	new klingon = LoadLanguage("klingon.lang.inc");

	if (klingon == -1) {
		print("Unable to load klingon.lang.inc, make sure it's in your scriptfiles folder!");
		return 1;
	}

	// test playerid
	new playerid = 0;

	// set language for playerid 0
	SetPlayerLanguage(0, klingon);

	// send messages in playerid's language
	print(__("Yes", playerid));
	print(__("No", playerid));
	print(__("What do you want?", playerid));
	print(__("What's happening?", playerid));
	print(__("Huh?", playerid));
	print(__("I understand", playerid));
	print(__("I don't understand", playerid));
	print(__("Good!", playerid));
	print(__("Well done!", playerid));
    print(__("Come in", playerid));
    print(__("Come here", playerid));
    print(__("Go away", playerid));
    print(__("Don't be silly", playerid));
    print(__("Today is a good day to die", playerid));
    print(__("We are Klingons!", playerid));
    print(__("Happy Birthday", playerid));
    print(__("What time is it?", playerid));
    print(__("Shut up!", playerid));
    print(__("That's great news!", playerid));
    
	return 1;
}

/*

Alright, now you want to create a SendClientMessage text? This is how you do it.

SendClientMessage(playerid, -1, printf__("We are Klingons!", playerid));


How do you send a string using SendClientMessage? This is how you do it.

SendClientMessage(playerid, -1, sprintf(__("Function1 %s gives to Function2 %s.", playerid), function1, function2));

*function1/function2 are all defined, please use your brains if you want to figure this out, this is just a sample I learnt!*

*/
