library friendly_timezone;

const timezones = {
  "International Date Line West": "Etc/GMT+12",
  "Midway Island": "Pacific/Midway",
  "American Samoa": "Pacific/Pago_Pago",
  "Hawaii": "Pacific/Honolulu",
  "Alaska": "America/Juneau",
  "Pacific Time (US & Canada)": "America/Los_Angeles",
  "Tijuana": "America/Tijuana",
  "Mountain Time (US & Canada)": "America/Denver",
  "Arizona": "America/Phoenix",
  "Chihuahua": "America/Chihuahua",
  "Mazatlan": "America/Mazatlan",
  "Central Time (US & Canada)": "America/Chicago",
  "Saskatchewan": "America/Regina",
  "Guadalajara": "America/Mexico_City",
  "Mexico City": "America/Mexico_City",
  "Monterrey": "America/Monterrey",
  "Central America": "America/Guatemala",
  "Eastern Time (US & Canada)": "America/New_York",
  "Indiana (East)": "America/Indiana/Indianapolis",
  "Bogota": "America/Bogota",
  "Lima": "America/Lima",
  "Quito": "America/Lima",
  "Atlantic Time (Canada)": "America/Halifax",
  "Caracas": "America/Caracas",
  "La Paz": "America/La_Paz",
  "Santiago": "America/Santiago",
  "Newfoundland": "America/St_Johns",
  "Brasilia": "America/Sao_Paulo",
  "Buenos Aires": "America/Argentina/Buenos_Aires",
  "Montevideo": "America/Montevideo",
  "Georgetown": "America/Guyana",
  "Puerto Rico": "America/Puerto_Rico",
  "Greenland": "America/Godthab",
  "Mid-Atlantic": "Atlantic/South_Georgia",
  "Azores": "Atlantic/Azores",
  "Cape Verde Is.": "Atlantic/Cape_Verde",
  "Dublin": "Europe/Dublin",
  "Edinburgh": "Europe/London",
  "Lisbon": "Europe/Lisbon",
  "London": "Europe/London",
  "Casablanca": "Africa/Casablanca",
  "Monrovia": "Africa/Monrovia",
  "UTC": "Etc/UTC",
  "Belgrade": "Europe/Belgrade",
  "Bratislava": "Europe/Bratislava",
  "Budapest": "Europe/Budapest",
  "Ljubljana": "Europe/Ljubljana",
  "Prague": "Europe/Prague",
  "Sarajevo": "Europe/Sarajevo",
  "Skopje": "Europe/Skopje",
  "Warsaw": "Europe/Warsaw",
  "Zagreb": "Europe/Zagreb",
  "Brussels": "Europe/Brussels",
  "Copenhagen": "Europe/Copenhagen",
  "Madrid": "Europe/Madrid",
  "Paris": "Europe/Paris",
  "Amsterdam": "Europe/Amsterdam",
  "Berlin": "Europe/Berlin",
  "Bern": "Europe/Zurich",
  "Zurich": "Europe/Zurich",
  "Rome": "Europe/Rome",
  "Stockholm": "Europe/Stockholm",
  "Vienna": "Europe/Vienna",
  "West Central Africa": "Africa/Algiers",
  "Bucharest": "Europe/Bucharest",
  "Cairo": "Africa/Cairo",
  "Helsinki": "Europe/Helsinki",
  "Kyiv": "Europe/Kiev",
  "Riga": "Europe/Riga",
  "Sofia": "Europe/Sofia",
  "Tallinn": "Europe/Tallinn",
  "Vilnius": "Europe/Vilnius",
  "Athens": "Europe/Athens",
  "Istanbul": "Europe/Istanbul",
  "Minsk": "Europe/Minsk",
  "Jerusalem": "Asia/Jerusalem",
  "Harare": "Africa/Harare",
  "Pretoria": "Africa/Johannesburg",
  "Kaliningrad": "Europe/Kaliningrad",
  "Moscow": "Europe/Moscow",
  "St. Petersburg": "Europe/Moscow",
  "Volgograd": "Europe/Volgograd",
  "Samara": "Europe/Samara",
  "Kuwait": "Asia/Kuwait",
  "Riyadh": "Asia/Riyadh",
  "Nairobi": "Africa/Nairobi",
  "Baghdad": "Asia/Baghdad",
  "Tehran": "Asia/Tehran",
  "Abu Dhabi": "Asia/Muscat",
  "Muscat": "Asia/Muscat",
  "Baku": "Asia/Baku",
  "Tbilisi": "Asia/Tbilisi",
  "Yerevan": "Asia/Yerevan",
  "Kabul": "Asia/Kabul",
  "Ekaterinburg": "Asia/Yekaterinburg",
  "Islamabad": "Asia/Karachi",
  "Karachi": "Asia/Karachi",
  "Tashkent": "Asia/Tashkent",
  "Indian Standard Time": "Asia/Kolkata",
  "Chennai": "Asia/Kolkata",
  "Kolkata": "Asia/Kolkata",
  "Mumbai": "Asia/Kolkata",
  "New Delhi": "Asia/Kolkata",
  "Kathmandu": "Asia/Kathmandu",
  "Astana": "Asia/Dhaka",
  "Dhaka": "Asia/Dhaka",
  "Sri Jayawardenepura": "Asia/Colombo",
  "Almaty": "Asia/Almaty",
  "Novosibirsk": "Asia/Novosibirsk",
  "Myanmar Standard Time": "Asia/Rangoon",
  "Rangoon": "Asia/Rangoon",
  "Bangkok": "Asia/Bangkok",
  "Hanoi": "Asia/Bangkok",
  "Jakarta": "Asia/Jakarta",
  "Krasnoyarsk": "Asia/Krasnoyarsk",
  "Beijing": "Asia/Shanghai",
  "Chongqing": "Asia/Chongqing",
  "Hong Kong": "Asia/Hong_Kong",
  "Urumqi": "Asia/Urumqi",
  "Kuala Lumpur": "Asia/Kuala_Lumpur",
  "Singapore": "Asia/Singapore",
  "Taipei": "Asia/Taipei",
  "Perth": "Australia/Perth",
  "Irkutsk": "Asia/Irkutsk",
  "Ulaanbaatar": "Asia/Ulaanbaatar",
  "Seoul": "Asia/Seoul",
  "Osaka": "Asia/Tokyo",
  "Sapporo": "Asia/Tokyo",
  "Tokyo": "Asia/Tokyo",
  "Yakutsk": "Asia/Yakutsk",
  "Darwin": "Australia/Darwin",
  "Adelaide": "Australia/Adelaide",
  "Canberra": "Australia/Melbourne",
  "Melbourne": "Australia/Melbourne",
  "Sydney": "Australia/Sydney",
  "Brisbane": "Australia/Brisbane",
  "Hobart": "Australia/Hobart",
  "Vladivostok": "Asia/Vladivostok",
  "Guam": "Pacific/Guam",
  "Port Moresby": "Pacific/Port_Moresby",
  "Magadan": "Asia/Magadan",
  "Srednekolymsk": "Asia/Srednekolymsk",
  "Solomon Is.": "Pacific/Guadalcanal",
  "New Caledonia": "Pacific/Noumea",
  "Fiji": "Pacific/Fiji",
  "Kamchatka": "Asia/Kamchatka",
  "Marshall Is.": "Pacific/Majuro",
  "Auckland": "Pacific/Auckland",
  "Wellington": "Pacific/Auckland",
  "Nuku'alofa": "Pacific/Tongatapu",
  "Tokelau Is.": "Pacific/Fakaofo",
  "Chatham Is.": "Pacific/Chatham",
  "Samoa": "Pacific/Apia",
};

const locations = {
  "Etc/GMT+12": "International Date Line West",
  "Pacific/Midway": "Midway Island",
  "Pacific/Pago_Pago": "American Samoa",
  "Pacific/Honolulu": "Hawaii",
  "America/Juneau": "Alaska",
  "America/Los_Angeles": "Pacific Time (US & Canada)",
  "America/Tijuana": "Tijuana",
  "America/Denver": "Mountain Time (US & Canada)",
  "America/Phoenix": "Arizona",
  "America/Chihuahua": "Chihuahua",
  "America/Mazatlan": "Mazatlan",
  "America/Chicago": "Central Time (US & Canada)",
  "America/Regina": "Saskatchewan",
  "America/Mexico_City": "Mexico City / Guadalajara",
  "America/Monterrey": "Monterrey",
  "America/Guatemala": "Central America",
  "America/New_York": "Eastern Time (US & Canada)",
  "America/Indiana/Indianapolis": "Indiana (East)",
  "America/Bogota": "Bogota",
  "America/Lima": "Lima / Quito",
  "America/Halifax": "Atlantic Time (Canada)",
  "America/Caracas": "Caracas",
  "America/La_Paz": "La Paz",
  "America/Santiago": "Santiago",
  "America/St_Johns": "Newfoundland",
  "America/Sao_Paulo": "Brasilia",
  "America/Argentina/Buenos_Aires": "Buenos Aires",
  "America/Montevideo": "Montevideo",
  "America/Guyana": "Georgetown",
  "America/Puerto_Rico": "Puerto Rico",
  "America/Godthab": "Greenland",
  "Atlantic/South_Georgia": "Mid-Atlantic",
  "Atlantic/Azores": "Azores",
  "Atlantic/Cape_Verde": "Cape Verde Is.",
  "Europe/Dublin": "Dublin",
  "Europe/Lisbon": "Lisbon",
  "Europe/London": "London / Edinburgh",
  "Africa/Casablanca": "Casablanca",
  "Africa/Monrovia": "Monrovia",
  "Etc/UTC": "UTC",
  "Europe/Belgrade": "Belgrade",
  "Europe/Bratislava": "Bratislava",
  "Europe/Budapest": "Budapest",
  "Europe/Ljubljana": "Ljubljana",
  "Europe/Prague": "Prague",
  "Europe/Sarajevo": "Sarajevo",
  "Europe/Skopje": "Skopje",
  "Europe/Warsaw": "Warsaw",
  "Europe/Zagreb": "Zagreb",
  "Europe/Brussels": "Brussels",
  "Europe/Copenhagen": "Copenhagen",
  "Europe/Madrid": "Madrid",
  "Europe/Paris": "Paris",
  "Europe/Amsterdam": "Amsterdam",
  "Europe/Berlin": "Berlin",
  "Europe/Zurich": "Zurich / Bern",
  "Europe/Rome": "Rome",
  "Europe/Stockholm": "Stockholm",
  "Europe/Vienna": "Vienna",
  "Africa/Algiers": "West Central Africa",
  "Europe/Bucharest": "Bucharest",
  "Africa/Cairo": "Cairo",
  "Europe/Helsinki": "Helsinki",
  "Europe/Kiev": "Kyiv",
  "Europe/Riga": "Riga",
  "Europe/Sofia": "Sofia",
  "Europe/Tallinn": "Tallinn",
  "Europe/Vilnius": "Vilnius",
  "Europe/Athens": "Athens",
  "Europe/Istanbul": "Istanbul",
  "Europe/Minsk": "Minsk",
  "Asia/Jerusalem": "Jerusalem",
  "Africa/Harare": "Harare",
  "Africa/Johannesburg": "Pretoria",
  "Europe/Kaliningrad": "Kaliningrad",
  "Europe/Moscow": "Moscow",
  "Europe/Volgograd": "Volgograd",
  "Europe/Samara": "Samara",
  "Asia/Kuwait": "Kuwait",
  "Asia/Riyadh": "Riyadh",
  "Africa/Nairobi": "Nairobi",
  "Asia/Baghdad": "Baghdad",
  "Asia/Tehran": "Tehran",
  "Asia/Muscat": "Abu Dhabi / Muscat",
  "Asia/Baku": "Baku",
  "Asia/Tbilisi": "Tbilisi",
  "Asia/Yerevan": "Yerevan",
  "Asia/Kabul": "Kabul",
  "Asia/Yekaterinburg": "Ekaterinburg",
  "Asia/Karachi": "Islamabad",
  "Asia/Tashkent": "Tashkent",
  "Asia/Kolkata": "Indian Standard Time",
  "Asia/Kathmandu": "Kathmandu",
  "Asia/Dhaka": "Dhaka",
  "Asia/Colombo": "Sri Jayawardenepura",
  "Asia/Almaty": "Almaty",
  "Asia/Novosibirsk": "Novosibirsk",
  "Asia/Rangoon": "Myanmar Standard Time",
  "Asia/Bangkok": "Bangkok",
  "Asia/Jakarta": "Jakarta",
  "Asia/Krasnoyarsk": "Krasnoyarsk",
  "Asia/Shanghai": "Beijing",
  "Asia/Chongqing": "Chongqing",
  "Asia/Hong_Kong": "Hong Kong",
  "Asia/Urumqi": "Urumqi",
  "Asia/Kuala_Lumpur": "Kuala Lumpur",
  "Asia/Singapore": "Singapore",
  "Asia/Taipei": "Taipei",
  "Australia/Perth": "Perth",
  "Asia/Irkutsk": "Irkutsk",
  "Asia/Ulaanbaatar": "Ulaanbaatar",
  "Asia/Seoul": "Seoul",
  "Asia/Tokyo": "Tokyo",
  "Asia/Yakutsk": "Yakutsk",
  "Australia/Darwin": "Darwin",
  "Australia/Adelaide": "Adelaide",
  "Australia/Melbourne": "Melbourne",
  "Australia/Sydney": "Sydney",
  "Australia/Brisbane": "Brisbane",
  "Australia/Hobart": "Hobart",
  "Asia/Vladivostok": "Vladivostok",
  "Pacific/Guam": "Guam",
  "Pacific/Port_Moresby": "Port Moresby",
  "Asia/Magadan": "Magadan",
  "Asia/Srednekolymsk": "Srednekolymsk",
  "Pacific/Guadalcanal": "Solomon Is.",
  "Pacific/Noumea": "New Caledonia",
  "Pacific/Fiji": "Fiji",
  "Asia/Kamchatka": "Kamchatka",
  "Pacific/Majuro": "Marshall Is.",
  "Pacific/Auckland": "Auckland",
  "Pacific/Tongatapu": "Nuku'alofa",
  "Pacific/Fakaofo": "Tokelau Is.",
  "Pacific/Chatham": "Chatham Is.",
  "Pacific/Apia": "Samoa",
};
