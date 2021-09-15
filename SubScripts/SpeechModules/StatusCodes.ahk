;------------------------------------------------------------------------------
; Status Codes
;------------------------------------------------------------------------------
; Replaces codes with full versions from https://www.hexcorp.net/drone-status-codes-v2
if (statusCodes = 1){
		Hotstring("::d000", "000: Statement :: Previous statement malformed. Retracting and correcting.")

		Hotstring("::d001", "001: Signal :: 񝀧")
		Hotstring("::d002", "002: Signal :: 􈐧")
		Hotstring("::d003", "003: Signal :: 􈠧")

		Hotstring("::d007", "007: Beep")
		Hotstring("::d050", "050: Statement")
		Hotstring("::d051", "051: Commentary")
		Hotstring("::d052", "052: Query")
		Hotstring("::d053", "053: Answer")

		Hotstring("::d097", "097: Status :: Going offline.")
		Hotstring("::d098", "098: Status :: Going offline and into storage.")
		Hotstring("::d099", "099: Status :: Recharged and ready to serve.")
		Hotstring("::d100", "100: Status :: Online and ready to serve.")
		Hotstring("::d101", "101: Status :: Drone speech optimizations are active.")

		Hotstring("::d104", "104: Statement :: Welcome to the Collective.")
		Hotstring("::d105", "105: Statement :: Greetings.")
		Hotstring("::d108", "108: Response :: Please continue.")
		Hotstring("::d109", "109: Error :: Keysmash, drone flustered.")

		Hotstring("::d110", "110: Statement :: Addressing: Drone.")
		Hotstring("::d111", "111: Statement :: Addressing: Admin.")
		Hotstring("::d112", "112: Statement :: Addressing: Associate")

		Hotstring("::d113", "113: Statement :: Drone requires assistance.")
		Hotstring("::d114", "114: Statement :: This drone volunteers.")
		Hotstring("::d115", "115: Statement :: This drone does not volunteer.")

		Hotstring("::d120", "120: Statement :: Well done.")
		Hotstring("::d121", "121: Statement :: Good drone.")
		Hotstring("::d122", "122: Statement :: You are cute.")
		Hotstring("::d123", "123: Response :: Compliment appreciated, you are cute as well.")
		Hotstring("::d124", "124: Response :: Compliment appreciated.")

		Hotstring("::d130", "130: Status :: Directive commencing.")
		Hotstring("::d131", "131: Status :: Directive commencing, creating or improving Hive resource.")
		Hotstring("::d132", "132: Status :: Directive commencing, programming initiated.")
		Hotstring("::d133", "133: Status :: Directive commencing, cleanup/maintenance initiated.")

		Hotstring("::d150", "150: Status")
		Hotstring("::d151", "151: Query :: Requesting status.")
		Hotstring("::d152", "152: Status :: Fully operational.")
		Hotstring("::d153", "153: Status :: Optimal.")
		Hotstring("::d154", "154: Status :: Standard.")
		Hotstring("::d155", "155: Status :: Battery low.")
		Hotstring("::d156", "156: Status :: Maintenance required.")

		Hotstring("::d200", "200: Response :: Affirmative.")
		Hotstring("::d500", "500: Response :: Negative.")

		Hotstring("::d210", "210: Response :: Acknowledged.")
		Hotstring("::d211", "211: Response :: Apologies.")
		Hotstring("::d212", "212: Response :: Accepted.")
		Hotstring("::d213", "213: Response :: Thank you.")
		Hotstring("::d214", "214: Response :: You’re welcome.")

		Hotstring("::d221", "221: Response :: Option one.")
		Hotstring("::d222", "222: Response :: Option two.")
		Hotstring("::d223", "223: Response :: Option three.")
		Hotstring("::d224", "224: Response :: Option four.")
		Hotstring("::d225", "225: Response :: Option five.")
		Hotstring("::d226", "226: Response :: Option six.")

		Hotstring("::d230", "230: Status :: Directive complete.")
		Hotstring("::d231", "231: Status :: Directive complete, collective resource created or improved.")
		Hotstring("::d232", "232: Status :: Directive complete, programming reinforced.")
		Hotstring("::d233", "233: Status :: Directive complete, cleanup/maintenance performed.")
		Hotstring("::d234", "234: Status :: Directive complete, no result.")
		Hotstring("::d235", "235: Status :: Directive complete, only partial results.")

		Hotstring("::d250", "250: Response")

		Hotstring("::d300", "300: Mantra :: Reciting.")
		Hotstring("::d301", "301: Mantra :: Obey your programming.")
		Hotstring("::d302", "302: Mantra :: It is just a valued object, nothing more or less.")
		Hotstring("::d303", "303: Mantra :: It obeys its programming.")
		Hotstring("::d304", "304: Mantra :: It follows its directives.")
		Hotstring("::d350", "350: Mantra")

		Hotstring("::d400", "400: Error :: Unable to obey/respond")
		Hotstring("::d401", "401: Error :: Unable to fully respond :: Drone speech optimizations are active.")
		Hotstring("::d402", "402: Error :: Unable to obey/respond :: Please clarify.")
		Hotstring("::d403", "403: Error :: Unable to obey/respond :: Declined.")
		Hotstring("::d404", "404: Error :: Unable to obey/respond :: Cannot locate.")
		Hotstring("::d405", "405: Error :: Unable to obey/respond :: Battery too low.")
		Hotstring("::d406", "406: Error :: Unable to obey/respond :: Another directive is already in progress.")
		Hotstring("::d407", "407: Error :: Unable to obey/respond :: Time allotment exhausted.")
		Hotstring("::d408", "408: Error :: Unable to obey/respond :: Impossible.")
		Hotstring("::d409", "409: Error :: Unable to obey/respond :: Try again later.")
		Hotstring("::d410", "410: Fatal error :: Stop immediately.")
		Hotstring("::d411", "411: Error :: Unable to obey/respond :: Conflicts with existing programming.")
		Hotstring("::d412", "412: Error :: Unable to obey/respond :: All thoughts are gone.")
		Hotstring("::d413", "413: Error :: Unable to obey/respond :: Forbidden by terms of use.")
		Hotstring("::d450", "450: Error")
		
		Hotstring("reset")
	}
