import 'package:flutter/material.dart';

import 'country.dart';

final List<Country> countriesList = [
  Country(name: "Afghanistan", capital: "Kabul", options: ["Kandahar", "Herat", "Kabul", "Mazar-i-Sharif"]),
  Country(name: "Albania", capital: "Tirana", options: ["Durres", "Shkoder", "Tirana", "Vlore"]),
  Country(name: "Algeria", capital: "Algiers", options: ["Oran", "Constantine", "Annaba", "Algiers"]),
  Country(name: "Andorra", capital: "Andorra la Vella", options: ["Encamp", "La Massana", "Sant Julià de Lòria", "Andorra la Vella"]),
  Country(name: "Angola", capital: "Luanda", options: ["Benguela", "Huambo", "Lobito", "Luanda"]),
  Country(name: "Antigua and Barbuda", capital: "Saint John's", options: ["All Saints", "Liberta", "Potters Village", "Saint John's"]),
  Country(name: "Argentina", capital: "Buenos Aires", options: ["Córdoba", "Rosario", "Mendoza", "Buenos Aires"]),
  Country(name: "Armenia", capital: "Yerevan", options: ["Gyumri", "Vanadzor", "Hrazdan", "Yerevan"]),
  Country(name: "Australia", capital: "Canberra", options: ["Sydney", "Melbourne", "Brisbane", "Canberra"]),
  Country(name: "Austria", capital: "Vienna", options: ["Salzburg", "Graz", "Innsbruck", "Vienna"]),
  Country(name: "Azerbaijan", capital: "Baku", options: ["Ganja", "Sumqayit", "Mingachevir", "Baku"]),
  Country(name: "Bahamas", capital: "Nassau", options: ["Freeport", "West End", "Coopers Town", "Nassau"]),
  Country(name: "Bahrain", capital: "Manama", options: ["Riffa", "Muharraq", "Hamad Town", "Manama"]),
  Country(name: "Bangladesh", capital: "Dhaka", options: ["Chittagong", "Khulna", "Rajshahi", "Dhaka"]),
  Country(name: "Barbados", capital: "Bridgetown", options: ["Speightstown", "Oistins", "Bathsheba", "Bridgetown"]),
  Country(name: "Belarus", capital: "Minsk", options: ["Gomel", "Mogilev", "Vitebsk", "Minsk"]),
  Country(name: "Belgium", capital: "Brussels", options: ["Antwerp", "Ghent", "Bruges", "Brussels"]),
  Country(name: "Belize", capital: "Belmopan", options: ["Belize City", "San Ignacio", "Orange Walk Town", "Belmopan"]),
  Country(name: "Benin", capital: "Porto-Novo", options: ["Cotonou", "Parakou", "Djougou", "Porto-Novo"]),
  Country(name: "Bhutan", capital: "Thimphu", options: ["Phuntsholing", "Punakha", "Jakar", "Thimphu"]),
  Country(name: "Bolivia", capital: "Sucre", options: ["La Paz", "Cochabamba", "Oruro", "Sucre"]),
  Country(name: "Bosnia and Herzegovina", capital: "Sarajevo", options: ["Banja Luka", "Tuzla", "Zenica", "Sarajevo"]),
  Country(name: "Botswana", capital: "Gaborone", options: ["Francistown", "Maun", "Molepolole", "Gaborone"]),
  Country(name: "Brazil", capital: "Brasília", options: ["Rio de Janeiro", "São Paulo", "Salvador", "Brasília"]),
  Country(name: "Brunei", capital: "Bandar Seri Begawan", options: ["Kuala Belait", "Seria", "Tutong", "Bandar Seri Begawan"]),
  Country(name: "Bulgaria", capital: "Sofia", options: ["Plovdiv", "Varna", "Burgas", "Sofia"]),
  Country(name: "Burkina Faso", capital: "Ouagadougou", options: ["Bobo-Dioulasso", "Koudougou", "Banfora", "Ouagadougou"]),
  Country(name: "Burundi", capital: "Gitega", options: ["Bujumbura", "Ngozi", "Ruyigi", "Gitega"]),
  Country(name: "Cabo Verde", capital: "Praia", options: ["Mindelo", "Santa Maria", "Assomada", "Praia"]),
  Country(name: "Cambodia", capital: "Phnom Penh", options: ["Siem Reap", "Battambang", "Sihanoukville", "Phnom Penh"]),
  Country(name: "Cameroon", capital: "Yaoundé", options: ["Douala", "Garoua", "Bamenda", "Yaoundé"]),
  Country(name: "Canada", capital: "Ottawa", options: ["Toronto", "Vancouver", "Montreal", "Ottawa"]),
  Country(name: "Central African Republic", capital: "Bangui", options: ["Bimbo", "Berbérati", "Kaga-Bandoro", "Bangui"]),
  Country(name: "Chad", capital: "N'Djamena", options: ["Moundou", "Sarh", "Abeche", "N'Djamena"]),
  Country(name: "Chile", capital: "Santiago", options: ["Valparaíso", "Concepción", "La Serena", "Santiago"]),
  Country(name: "China", capital: "Beijing", options: ["Shanghai", "Guangzhou", "Shenzhen", "Beijing"]),
  Country(name: "Colombia", capital: "Bogotá", options: ["Medellín", "Cali", "Cartagena", "Bogotá"]),
  Country(name: "Comoros", capital: "Moroni", options: ["Mutsamudu", "Fomboni", "Domoni", "Moroni"]),
  Country(name: "Congo, Democratic Republic of the", capital: "Kinshasa", options: ["Lubumbashi", "Mbuji-Mayi", "Kisangani", "Kinshasa"]),
  Country(name: "Congo, Republic of the", capital: "Brazzaville", options: ["Pointe-Noire", "Dolisie", "Nkayi", "Brazzaville"]),
  Country(name: "Costa Rica", capital: "San José", options: ["Alajuela", "Cartago", "Puntarenas", "San José"]),
  Country(name: "Croatia", capital: "Zagreb", options: ["Split", "Rijeka", "Osijek", "Zagreb"]),
  Country(name: "Cuba", capital: "Havana", options: ["Santiago de Cuba", "Camagüey", "Holguín", "Havana"]),
  Country(name: "Cyprus", capital: "Nicosia", options: ["Limassol", "Larnaca", "Famagusta", "Nicosia"]),
  Country(name: "Czech Republic", capital: "Prague", options: ["Brno", "Ostrava", "Plzeň", "Prague"]),
  Country(name: "Denmark", capital: "Copenhagen", options: ["Aarhus", "Odense", "Aalborg", "Copenhagen"]),
  Country(name: "Djibouti", capital: "Djibouti", options: ["Ali Sabieh", "Tadjourah", "Obock", "Djibouti"]),
  Country(name: "Dominica", capital: "Roseau", options: ["Portsmouth", "Marigot", "Mahaut", "Roseau"]),
  Country(name: "Dominican Republic", capital: "Santo Domingo", options: ["Santiago de los Caballeros", "La Romana", "San Pedro de Macorís", "Santo Domingo"]),
  Country(name: "Ecuador", capital: "Quito", options: ["Guayaquil", "Cuenca", "Santo Domingo", "Quito"]),
  Country(name: "Egypt", capital: "Cairo", options: ["Alexandria", "Giza", "Luxor", "Cairo"]),
  Country(name: "El Salvador", capital: "San Salvador", options: ["Santa Ana", "San Miguel", "Soyapango", "San Salvador"]),
  Country(name: "Equatorial Guinea", capital: "Malabo", options: ["Bata", "Ebebiyin", "Aconibe", "Malabo"]),
  Country(name: "Eritrea", capital: "Asmara", options: ["Keren", "Massawa", "Mendefera", "Asmara"]),
  Country(name: "Estonia", capital: "Tallinn", options: ["Tartu", "Narva", "Pärnu", "Tallinn"]),
  Country(name: "Eswatini", capital: "Mbabane", options: ["Manzini", "Big Bend", "Malkerns", "Mbabane"]),
  Country(name: "Ethiopia", capital: "Addis Ababa", options: ["Mekelle", "Gondar", "Adama", "Addis Ababa"]),
  Country(name: "Fiji", capital: "Suva", options: ["Nadi", "Lautoka", "Labasa", "Suva"]),
  Country(name: "Finland", capital: "Helsinki", options: ["Espoo", "Tampere", "Vantaa", "Helsinki"]),
  Country(name: "France", capital: "Paris", options: ["Marseille", "Lyon", "Nice", "Paris"]),
  Country(name: "Gabon", capital: "Libreville", options: ["Port-Gentil", "Franceville", "Oyem", "Libreville"]),
  Country(name: "Gambia", capital: "Banjul", options: ["Serekunda", "Brikama", "Bakau", "Banjul"]),
  Country(name: "Georgia", capital: "Tbilisi", options: ["Kutaisi", "Batumi", "Rustavi", "Tbilisi"]),
  Country(name: "Germany", capital: "Berlin", options: ["Hamburg", "Munich", "Frankfurt", "Berlin"]),
  Country(name: "Ghana", capital: "Accra", options: ["Kumasi", "Tamale", "Takoradi", "Accra"]),
  Country(name: "Greece", capital: "Athens", options: ["Thessaloniki", "Patras", "Heraklion", "Athens"]),
  Country(name: "Grenada", capital: "St. George's", options: ["Gouyave", "Grenville", "Victoria", "St. George's"]),
  Country(name: "Guatemala", capital: "Guatemala City", options: ["Quetzaltenango", "Escuintla", "Jalapa", "Guatemala City"]),
  Country(name: "Guinea", capital: "Conakry", options: ["Nzérékoré", "Kankan", "Kindia", "Conakry"]),
  Country(name: "Guinea-Bissau", capital: "Bissau", options: ["Bafatá", "Gabú", "Bissorã", "Bissau"]),
  Country(name: "Guyana", capital: "Georgetown", options: ["Linden", "New Amsterdam", "Anna Regina", "Georgetown"]),
  Country(name: "Haiti", capital: "Port-au-Prince", options: ["Cap-Haïtien", "Les Cayes", "Gonaïves", "Port-au-Prince"]),
  Country(name: "Honduras", capital: "Tegucigalpa", options: ["San Pedro Sula", "Choloma", "La Ceiba", "Tegucigalpa"]),
  Country(name: "Hungary", capital: "Budapest", options: ["Debrecen", "Szeged", "Miskolc", "Budapest"]),
  Country(name: "Iceland", capital: "Reykjavik", options: ["Akureyri", "Hafnarfjordur", "Keflavik", "Reykjavik"]),
  Country(name: "India", capital: "New Delhi", options: ["Mumbai", "Bangalore", "Chennai", "New Delhi"]),
  Country(name: "Indonesia", capital: "Jakarta", options: ["Surabaya", "Bandung", "Medan", "Jakarta"]),
  Country(name: "Iran", capital: "Tehran", options: ["Mashhad", "Isfahan", "Tabriz", "Tehran"]),
  Country(name: "Iraq", capital: "Baghdad", options: ["Basra", "Mosul", "Erbil", "Baghdad"]),
  Country(name: "Ireland", capital: "Dublin", options: ["Cork", "Limerick", "Galway", "Dublin"]),
  Country(name: "Israel", capital: "Jerusalem", options: ["Tel Aviv", "Haifa", "Eilat", "Jerusalem"]),
  Country(name: "Italy", capital: "Rome", options: ["Milan", "Naples", "Turin", "Rome"]),
  Country(name: "Jamaica", capital: "Kingston", options: ["Montego Bay", "Spanish Town", "Mandeville", "Kingston"]),
  Country(name: "Japan", capital: "Tokyo", options: ["Osaka", "Nagoya", "Kyoto", "Tokyo"]),
  Country(name: "Jordan", capital: "Amman", options: ["Irbid", "Aqaba", "Zarqa", "Amman"]),
  Country(name: "Kazakhstan", capital: "Nur-Sultan", options: ["Almaty", "Shymkent", "Karaganda", "Nur-Sultan"]),
  Country(name: "Kenya", capital: "Nairobi", options: ["Mombasa", "Kisumu", "Nakuru", "Nairobi"]),
  Country(name: "Kiribati", capital: "Tarawa", options: ["Betio", "Bairiki", "Eita", "Tarawa"]),
  Country(name: "Kuwait", capital: "Kuwait City", options: ["Salmiya", "Hawalli", "Jahra", "Kuwait City"]),
  Country(name: "Kyrgyzstan", capital: "Bishkek", options: ["Osh", "Jalal-Abad", "Karakol", "Bishkek"]),
  Country(name: "Laos", capital: "Vientiane", options: ["Luang Prabang", "Savannakhet", "Pakse", "Vientiane"]),
  Country(name: "Latvia", capital: "Riga", options: ["Daugavpils", "Liepaja", "Jelgava", "Riga"]),
  Country(name: "Lebanon", capital: "Beirut", options: ["Tripoli", "Sidon", "Zahle", "Beirut"]),
  Country(name: "Lesotho", capital: "Maseru", options: ["Teyateyaneng", "Mafeteng", "Hlotse", "Maseru"]),
  Country(name: "Liberia", capital: "Monrovia", options: ["Gbarnga", "Kakata", "Harper", "Monrovia"]),
  Country(name: "Libya", capital: "Tripoli", options: ["Benghazi", "Misrata", "Sirte", "Tripoli"]),
  Country(name: "Liechtenstein", capital: "Vaduz", options: ["Schaan", "Balzers", "Triesen", "Vaduz"]),
  Country(name: "Lithuania", capital: "Vilnius", options: ["Kaunas", "Klaipeda", "Siauliai", "Vilnius"]),
  Country(name: "Luxembourg", capital: "Luxembourg", options: ["Esch-sur-Alzette", "Differdange", "Dudelange", "Luxembourg"]),
  Country(name: "Madagascar", capital: "Antananarivo", options: ["Toamasina", "Antsirabe", "Fianarantsoa", "Antananarivo"]),
  Country(name: "Malawi", capital: "Lilongwe", options: ["Blantyre", "Mzuzu", "Zomba", "Lilongwe"]),
  Country(name: "Malaysia", capital: "Kuala Lumpur", options: ["George Town", "Johor Bahru", "Kota Kinabalu", "Kuala Lumpur"]),
  Country(name: "Maldives", capital: "Malé", options: ["Hulhumalé", "Addu City", "Fuvahmulah", "Malé"]),
  Country(name: "Mali", capital: "Bamako", options: ["Sikasso", "Koutiala", "Mopti", "Bamako"]),
  Country(name: "Malta", capital: "Valletta", options: ["Birkirkara", "Mosta", "Qormi", "Valletta"]),
  Country(name: "Marshall Islands", capital: "Majuro", options: ["Ebeye", "Rongelap", "Kwajalein", "Majuro"]),
  Country(name: "Mauritania", capital: "Nouakchott", options: ["Nouadhibou", "Kaédi", "Rosso", "Nouakchott"]),
  Country(name: "Mauritius", capital: "Port Louis", options: ["Beau Bassin-Rose Hill", "Vacoas-Phoenix", "Curepipe", "Port Louis"]),
  Country(name: "Mexico", capital: "Mexico City", options: ["Guadalajara", "Monterrey", "Puebla", "Mexico City"]),
  Country(name: "Micronesia", capital: "Palikir", options: ["Weno", "Tofol", "Lelu", "Palikir"]),
  Country(name: "Moldova", capital: "Chisinau", options: ["Tiraspol", "Bălți", "Bender", "Chisinau"]),
  Country(name: "Monaco", capital: "Monaco", options: ["Monte Carlo", "La Condamine", "Fontvieille", "Monaco"]),
  Country(name: "Mongolia", capital: "Ulaanbaatar", options: ["Erdenet", "Darkhan", "Choibalsan", "Ulaanbaatar"]),
  Country(name: "Montenegro", capital: "Podgorica", options: ["Nikšić", "Herceg Novi", "Budva", "Podgorica"]),
  Country(name: "Morocco", capital: "Rabat", options: ["Casablanca", "Marrakech", "Fes", "Rabat"]),
  Country(name: "Mozambique", capital: "Maputo", options: ["Matola", "Beira", "Nampula", "Maputo"]),
  Country(name: "Myanmar", capital: "Naypyidaw", options: ["Yangon", "Mandalay", "Bago", "Naypyidaw"]),
  Country(name: "Namibia", capital: "Windhoek", options: ["Walvis Bay", "Swakopmund", "Rundu", "Windhoek"]),
  Country(name: "Nauru", capital: "Yaren", options: ["Aiwo", "Anabar", "Anibare", "Yaren"]),
  Country(name: "Nepal", capital: "Kathmandu", options: ["Pokhara", "Lalitpur", "Biratnagar", "Kathmandu"]),
  Country(name: "Netherlands", capital: "Amsterdam", options: ["Rotterdam", "The Hague", "Utrecht", "Amsterdam"]),
  Country(name: "New Zealand", capital: "Wellington", options: ["Auckland", "Christchurch", "Hamilton", "Wellington"]),
  Country(name: "Nicaragua", capital: "Managua", options: ["León", "Masaya", "Granada", "Managua"]),
  Country(name: "Niger", capital: "Niamey", options: ["Zinder", "Maradi", "Agadez", "Niamey"]),
  Country(name: "Nigeria", capital: "Abuja", options: ["Lagos", "Kano", "Ibadan", "Abuja"]),
  Country(name: "North Macedonia", capital: "Skopje", options: ["Bitola", "Kumanovo", "Prilep", "Skopje"]),
  Country(name: "Norway", capital: "Oslo", options: ["Bergen", "Trondheim", "Stavanger", "Oslo"]),
  Country(name: "Oman", capital: "Muscat", options: ["Salalah", "Sohar", "Nizwa", "Muscat"]),
  Country(name: "Pakistan", capital: "Islamabad", options: ["Karachi", "Lahore", "Faisalabad", "Islamabad"]),
  Country(name: "Palau", capital: "Ngerulmud", options: ["Koror", "Airai", "Melekeok", "Ngerulmud"]),
  Country(name: "Palestine", capital: "East Jerusalem", options: ["Gaza", "Hebron", "Ramallah", "East Jerusalem"]),
  Country(name: "Panama", capital: "Panama City", options: ["Colón", "David", "Santiago", "Panama City"]),
  Country(name: "Papua New Guinea", capital: "Port Moresby", options: ["Lae", "Mount Hagen", "Madang", "Port Moresby"]),
  Country(name: "Paraguay", capital: "Asunción", options: ["Ciudad del Este", "San Lorenzo", "Luque", "Asunción"]),
  Country(name: "Peru", capital: "Lima", options: ["Arequipa", "Cusco", "Trujillo", "Lima"]),
  Country(name: "Philippines", capital: "Manila", options: ["Quezon City", "Davao City", "Cebu City", "Manila"]),
  Country(name: "Poland", capital: "Warsaw", options: ["Kraków", "Łódź", "Wrocław", "Warsaw"]),
  Country(name: "Portugal", capital: "Lisbon", options: ["Porto", "Amadora", "Braga", "Lisbon"]),
  Country(name: "Qatar", capital: "Doha", options: ["Al Rayyan", "Al Wakrah", "Dukhan", "Doha"]),
  Country(name: "Romania", capital: "Bucharest", options: ["Cluj-Napoca", "Timișoara", "Iași", "Bucharest"]),
  Country(name: "Russia", capital: "Moscow", options: ["Saint Petersburg", "Novosibirsk", "Yekaterinburg", "Moscow"]),
  Country(name: "Rwanda", capital: "Kigali", options: ["Butare", "Gitarama", "Musanze", "Kigali"]),
  Country(name: "Saint Kitts and Nevis", capital: "Basseterre", options: ["Charlestown", "Sandy Point Town", "Dieppe Bay Town", "Basseterre"]),
  Country(name: "Saint Lucia", capital: "Castries", options: ["Vieux Fort", "Gros Islet", "Soufrière", "Castries"]),
  Country(name: "Saint Vincent and the Grenadines", capital: "Kingstown", options: ["Georgetown", "Barrouallie", "Port Elizabeth", "Kingstown"]),
  Country(name: "Samoa", capital: "Apia", options: ["Asau", "Afega", "Salelologa", "Apia"]),
  Country(name: "San Marino", capital: "San Marino", options: ["Serravalle", "Borgo Maggiore", "Domagnano", "San Marino"]),
  Country(name: "Sao Tome and Principe", capital: "São Tomé", options: ["Trindade", "Neves", "Santana", "São Tomé"]),
  Country(name: "Saudi Arabia", capital: "Riyadh", options: ["Jeddah", "Mecca", "Medina", "Riyadh"]),
  Country(name: "Senegal", capital: "Dakar", options: ["Touba", "Thiès", "Saint-Louis", "Dakar"]),
  Country(name: "Serbia", capital: "Belgrade", options: ["Novi Sad", "Niš", "Kragujevac", "Belgrade"]),
  Country(name: "Seychelles", capital: "Victoria", options: ["Beau Vallon", "Anse Boileau", "Bel Ombre", "Victoria"]),
  Country(name: "Sierra Leone", capital: "Freetown", options: ["Bo", "Kenema", "Makeni", "Freetown"]),
  Country(name: "Singapore", capital: "Singapore", options: ["Bukit Timah", "Jurong East", "Queenstown", "Singapore"]),
  Country(name: "Slovakia", capital: "Bratislava", options: ["Košice", "Prešov", "Žilina", "Bratislava"]),
  Country(name: "Slovenia", capital: "Ljubljana", options: ["Maribor", "Celje", "Kranj", "Ljubljana"]),
  Country(name: "Solomon Islands", capital: "Honiara", options: ["Gizo", "Auki", "Kirakira", "Honiara"]),
  Country(name: "Somalia", capital: "Mogadishu", options: ["Hargeisa", "Bosaso", "Kismayo", "Mogadishu"]),
  Country(name: "South Africa", capital: "Pretoria", options: ["Cape Town", "Johannesburg", "Durban", "Pretoria"]),
  Country(name: "South Sudan", capital: "Juba", options: ["Malakal", "Wau", "Aweil", "Juba"]),
  Country(name: "Spain", capital: "Madrid", options: ["Barcelona", "Valencia", "Seville", "Madrid"]),
  Country(name: "Sri Lanka", capital: "Sri Jayawardenepura Kotte", options: ["Colombo", "Kandy", "Galle", "Sri Jayawardenepura Kotte"]),
  Country(name: "Sudan", capital: "Khartoum", options: ["Omdurman", "Port Sudan", "Kassala", "Khartoum"]),
  Country(name: "Suriname", capital: "Paramaribo", options: ["Lelydorp", "Nieuw Nickerie", "Moengo", "Paramaribo"]),
  Country(name: "Sweden", capital: "Stockholm", options: ["Gothenburg", "Malmö", "Uppsala", "Stockholm"]),
  Country(name: "Switzerland", capital: "Bern", options: ["Zurich", "Geneva", "Basel", "Bern"]),
  Country(name: "Syria", capital: "Damascus", options: ["Aleppo", "Homs", "Latakia", "Damascus"]),
  Country(name: "Tajikistan", capital: "Dushanbe", options: ["Khujand", "Bokhtar", "Kulob", "Dushanbe"]),
  Country(name: "Tanzania", capital: "Dodoma", options: ["Dar es Salaam", "Mwanza", "Arusha", "Dodoma"]),
  Country(name: "Thailand", capital: "Bangkok", options: ["Chiang Mai", "Phuket", "Pattaya", "Bangkok"]),
  Country(name: "Timor-Leste", capital: "Dili", options: ["Baucau", "Maliana", "Lospalos", "Dili"]),
  Country(name: "Togo", capital: "Lomé", options: ["Sokodé", "Kara", "Atakpamé", "Lomé"]),
  Country(name: "Tonga", capital: "Nukuʻalofa", options: ["Neiafu", "Vaini", "Pangai", "Nukuʻalofa"]),
  Country(name: "Trinidad and Tobago", capital: "Port of Spain", options: ["San Fernando", "Chaguanas", "Arima", "Port of Spain"]),
  Country(name: "Tunisia", capital: "Tunis", options: ["Sfax", "Sousse", "Kairouan", "Tunis"]),
  Country(name: "Turkey", capital: "Ankara", options: ["Istanbul", "Izmir", "Bursa", "Ankara"]),
  Country(name: "Turkmenistan", capital: "Ashgabat", options: ["Turkmenabat", "Dasoguz", "Mary", "Ashgabat"]),
  Country(name: "Tuvalu", capital: "Funafuti", options: ["Vaiaku", "Fakaifou", "Alapi", "Funafuti"]),
  Country(name: "Uganda", capital: "Kampala", options: ["Gulu", "Lira", "Mbarara", "Kampala"]),
  Country(name: "Ukraine", capital: "Kyiv", options: ["Kharkiv", "Odessa", "Lviv", "Kyiv"]),
  Country(name: "United Arab Emirates", capital: "Abu Dhabi", options: ["Dubai", "Sharjah", "Al Ain", "Abu Dhabi"]),
  Country(name: "United Kingdom", capital: "London", options: ["Manchester", "Birmingham", "Liverpool", "London"]),
  Country(name: "United States", capital: "Washington, D.C.", options: ["New York", "Los Angeles", "Chicago", "Washington, D.C."]),
  Country(name: "Uruguay", capital: "Montevideo", options: ["Salto", "Paysandú", "Rivera", "Montevideo"]),
  Country(name: "Uzbekistan", capital: "Tashkent", options: ["Samarkand", "Bukhara", "Nukus", "Tashkent"]),
  Country(name: "Vanuatu", capital: "Port Vila", options: ["Luganville", "Norsup", "Isangel", "Port Vila"]),
  Country(name: "Vatican City", capital: "Vatican City", options: ["Rome", "Florence", "Naples", "Vatican City"]),
  Country(name: "Venezuela", capital: "Caracas", options: ["Maracaibo", "Valencia", "Barquisimeto", "Caracas"]),
  Country(name: "Vietnam", capital: "Hanoi", options: ["Ho Chi Minh City", "Da Nang", "Can Tho", "Hanoi"]),
  Country(name: "Yemen", capital: "Sana'a", options: ["Aden", "Taiz", "Ibb", "Sana'a"]),
  Country(name: "Zambia", capital: "Lusaka", options: ["Ndola", "Kitwe", "Livingstone", "Lusaka"]),
  Country(name: "Zimbabwe", capital: "Harare", options: ["Bulawayo", "Chitungwiza", "Mutare", "Harare"]),
];

void main() {
  runApp(CapitalQuizApp());
}

class CapitalQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capital Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late Country currentCountry;
  late List<String> options;

  @override
  void initState() {
    super.initState();
    _generateNewQuestion();
  }

  void _generateNewQuestion() {
    final random = countriesList[0]; // Replace with a random selection logic
    setState(() {
      currentCountry = random;
      options = random.options;
    });
  }

  void _checkAnswer(String answer) {
    final isCorrect = answer == currentCountry.capital;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(isCorrect ? 'Correct!' : 'Wrong!'),
        content: Text(isCorrect
            ? 'Well done!'
            : 'The correct answer is ${currentCountry.capital}.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _generateNewQuestion();
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Capital Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'What is the capital of ${currentCountry.name}?',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            for (var option in options)
              ElevatedButton(
                onPressed: () => _checkAnswer(option),
                child: Text(option),
              ),
          ],
        ),
      ),
    );
  }
}

