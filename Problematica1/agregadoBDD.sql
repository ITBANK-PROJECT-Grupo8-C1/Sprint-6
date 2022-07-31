
CREATE TABLE marca_tarjeta(
    brand_card_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    brand_card_name TEXT NOT NULL,
    card_id INTEGER NOT NULL,
    FOREIGN KEY (card_id) REFERENCES tarjeta(card_id)
);

CREATE TABLE tarjeta(
card_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
card_number INTEGER NOT NULL CHECK(length(card_number<=20)),
card_expire INTEGER NOT NULL,
card_expire_date INTEGER NOT NULL,
card_cvv INTEGER NOT NULL,
card_type TEXT NOT NULL CHECK(card_type='débito' OR card_type='crédito'),
customer_id INTEGER NOT NULL,
brand_id INTEGER NOT NULL
FOREIGN KEY (customer_id) REFERENCES cliente(customer_id)
);

CREATE TABLE cuenta(
account_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
customer_id INTEGER NOT NULL,
balance INTEGER NOT NULL, 
iban TEXT NOT NULL,
type_account_id INTEGER NOT NULL,
FOREIGN KEY (type_account_id) REFERENCES tipo_cuenta(type_account_id)
);

INSERT INTO cuenta (customer_id,balance,iban,type_account_id)
VALUES
  (320,"78180","AD3901882237388112180088",5),
  (435,"24280","CZ3734175141425212554331",1),
  (128,"53713","ME50714252730355221310",2),
  (183,"13736","RS77598457432128230489",5),
  (471,"46172","GR1979744584670118583782286",2),
  (174,"924","AL68429565832438906761701414",5),
  (230,"95963","CH3443874458367121853",5),
  (209,"33059","TR166768672353163600006701",5),
  (430,"90241","TN6122261857188878535083",1),
  (283,"85069","NO2330323412902",5),
  (304,"62621","KZ474165141585572146",3),
  (478,"18500","CR3031387236952945359",4),
  (26,"8689","HU04381615689211249814215582",3),
  (53,"64829","DO42181641521294648333822264",3),
  (272,"43332","LT837583732643806385",3),
  (166,"19623","KW7424318824516341425158181811",3),
  (490,"85386","GI07QWJY453333360947614",1),
  (349,"99505","GR4110872698858862504715760",4),
  (54,"58745","BA836725230113343407",4),
  (253,"99682","HU46533492077681671785723857",3),
  (258,"7611","NO8918479617915",2),
  (294,"45332","HU76451881286063971114268427",2),
  (418,"21965","RS42245316876720313184",4),
  (382,"14548","LV56HPJD3620286714831",3),
  (324,"36141","IS822731599498572518654002",4),
  (304,"92482","AE315841585622199821516",2),
  (115,"30453","BG33DLMG10825513328035",4),
  (271,"95903","SM1247625644438870545557614",4),
  (382,"38508","VG0371285588365347887450",1),
  (157,"85646","AT482131534231575453",3),
  (287,"1288","RO34XSVM6675765624321825",4),
  (147,"31662","MR2532594365894064705406053",4),
  (467,"90932","NO7448259377307",2),
  (238,"96473","DE80417963331522499518",5),
  (381,"44709","VG5004687763652233837125",5),
  (52,"13626","ME46884047513501264472",1),
  (71,"26455","TR350716113371198582448355",1),
  (222,"8327","NL08HFZO9712187407",5),
  (470,"40218","SK5152596580358138027427",3),
  (211,"5294","AD2320946758331807781373",5),
  (358,"60058","AT634551655655663467",2),
  (291,"44811","FI6713662537135263",4),
  (301,"81185","CZ2580766536458398126454",4),
  (3,"23817","MU5614718952426520085818865471",3),
  (274,"50258","FO0292364842318356",4),
  (188,"84111","CH8531083782357761573",4),
  (285,"99318","SI11143205545472884",2),
  (491,"89892","FR6813177140289566289967914",2),
  (184,"97497","BH96136283655444482419",3),
  (482,"69425","LV64YETS8453712192415",4),
  (423,"36547","VG2084216847323966662395",4),
  (196,"23487","SM4537044618625084545233187",2),
  (83,"55422","LI4523158159658431431",2),
  (12,"4222","BA855334826866681562",2),
  (21,"38057","PK5876547287272115232776",5),
  (436,"83597","GL2067618652089378",1),
  (359,"35329","EE068287638378949669",2),
  (184,"43982","CH6843445434274646538",4),
  (415,"37344","RS06531745068875543456",4),
  (418,"55212","GB57VUAY85328151377342",4),
  (6,"18866","CH3508236523459559665",2),
  (406,"66188","IS729162543358262630325451",4),
  (255,"79028","DK9397100660502491",4),
  (463,"53863","SI46493558136260765",5),
  (175,"98446","CY95474065168741073058131251",4),
  (311,"72359","CY36734156884877935416817205",2),
  (417,"59109","LV59EESN7794558623437",2),
  (126,"20295","DO32963721219222102114226767",4),
  (486,"23053","HR7874621120735867588",5),
  (385,"50713","NL18PRKY1483643666",3),
  (16,"20510","AL35855624331412659960774457",4),
  (302,"13716","LV41CDBX8870267204229",4),
  (298,"75210","LT576744164949519383",4),
  (481,"34561","MR4093622185671314145791061",4),
  (17,"69963","FI2052128174558361",1),
  (117,"63578","PT77034058416421452089636",5),
  (90,"18829","NL05HMXO2324713265",4),
  (340,"55407","MU5279519482224565933508060848",1),
  (29,"83848","AL30077221867078476760773784",3),
  (297,"36768","BE85337515198828",3),
  (417,"12185","MT36SBKG81211133417525844658082",2),
  (75,"19233","ES1442146164025788242666",2),
  (250,"80683","BA596865211224381533",2),
  (370,"6198","PL68301273905934151327141343",3),
  (473,"9092","HR7111612497598343221",2),
  (450,"82548","AE464464924995731238106",2),
  (484,"88020","RO65LJLI6201445728676786",2),
  (257,"60369","MC2809252353580365118124170",1),
  (476,"8819","AL34748301275376803984637899",3),
  (356,"14133","MK42654586388880081",4),
  (51,"20622","BE33541154863242",2),
  (459,"47793","CZ1218822288868954367856",1),
  (291,"72231","DK1495176732326243",2),
  (143,"95634","ME14323130473148768648",3),
  (135,"8462","SA2943389713535433004848",3),
  (209,"58477","AL07964547234628887361842358",1),
  (243,"57425","BG40USBQ65745707586515",2),
  (210,"54317","MT42UVYQ76617766248280756581133",1),
  (368,"14726","HU17224981425051212843150511",5),
  (404,"33271","ME18288592870065179111",4),
  (238,"34939","KZ343027188970134421",2),
  (30,"58299","DK6123695317511027",3),
  (109,"40406","RO50HUMI4946156266751614",3),
  (440,"15997","CR8684448326932734151",5),
  (372,"25602","GI81WCLL743062812622427",3),
  (9,"28002","EE533478211998253814",4),
  (99,"53761","CH3114125624763446481",1),
  (377,"76217","MT09FDKK16076266393064116385501",2),
  (11,"55593","CR9794373787181238717",4),
  (174,"32607","LT943686370596578211",2),
  (205,"23969","PL67162387587707157444125972",5),
  (372,"69739","HR6958105136858877407",3),
  (460,"74833","KW1855869186223475194838546885",3),
  (115,"64203","DO10975862341846477316675342",1),
  (262,"48482","EE291710140531081413",2),
  (291,"17778","AL93543387267924883487062928",2),
  (255,"17673","MT58YJOH65664473385278273944462",2),
  (427,"21992","BA181637664177182562",3),
  (189,"34092","PS439825316583398127409446416",4),
  (92,"71851","CR9117121492128487414",2),
  (45,"80601","SA1654342837390523701888",5),
  (366,"23719","LV23PREB3491445789087",2),
  (67,"62508","RO83OFCX1469931669517785",5),
  (474,"81035","MU4361460763736203966331231040",2),
  (479,"97807","CR7038884272796435037",4),
  (350,"30421","IL184416395445682213595",3),
  (473,"29602","HU85938542433635731775678389",1),
  (111,"69744","SK7084384553963784855371",5),
  (2,"3229","HU35792196660458156439725580",4),
  (174,"83047","AZ98397166996234881462714957",5),
  (442,"3510","SI75724171900486245",5),
  (290,"41222","VG2805876434866521645152",5),
  (2,"50523","CY92381558124635756424017847",4),
  (268,"53388","ES8796393484316578242552",4),
  (394,"82495","KW7604783262535929670604785377",2),
  (185,"41316","AE408876359684656684154",1),
  (331,"21518","TR346132772722303181928702",2),
  (468,"9162","IL846971411637265756210",4),
  (363,"65152","LV62EYLL4875875163180",5),
  (152,"86257","SE8434683758528267334832",3),
  (381,"42045","GR6383256677664567526711274",4),
  (137,"19027","AE024448156400251891753",4),
  (130,"51984","SM1952862438424169657427046",1),
  (177,"83437","GI20NPVJ887248638314044",4),
  (200,"63137","GT36835326266648615565317408",5),
  (69,"18245","LT865418118973416036",4),
  (384,"68804","SM0485932171206843687636745",2),
  (364,"84637","NO6296643224873",5),
  (191,"10529","DE56596671012257873308",2),
  (438,"53522","GT79347483680522953117556286",3),
  (324,"92154","MT38HPFL32066592271196332986338",4),
  (446,"56301","KZ265111281255136815",2),
  (71,"53576","PK6251482379593622422245",2),
  (264,"52502","CZ6691275255833836344468",3),
  (50,"54204","GB66HGZE71871377287388",2),
  (447,"47086","PL95182386465445844205656424",2),
  (123,"34912","HR4164713578730047835",4),
  (335,"87226","PL50556642089680488859863603",3),
  (143,"33706","AT127684086064487457",5),
  (113,"85695","NL61QUUG4413516122",1),
  (482,"88567","SI09694585943738118",2),
  (248,"93638","SE2733170329882332921046",2),
  (51,"90640","LT836293732676182555",5),
  (49,"97359","CH7517273734648222858",5),
  (4,"39162","VG0680830223372684722185",4),
  (74,"33129","DK4661705873342046",4),
  (57,"31900","MT91NEXD31668168131181880638787",4),
  (285,"14270","LU186919868781436009",2),
  (26,"10033","LT032908526356398280",4),
  (201,"18321","KW4142878353688727164237056454",5),
  (204,"42449","TR902283029298308253667541",2),
  (243,"1828","CY79707264958124527034648161",2),
  (88,"33888","MR3837673196813936497145693",2),
  (429,"28758","NL59EIQL8888221486",5),
  (17,"54218","BE12481964337256",4),
  (21,"66421","CZ7136433202628861441124",4),
  (301,"47841","MU0939552475735857814103601123",2),
  (279,"80098","MU5358372924866087305893065534",2),
  (235,"90403","RO67SNCI0681551096687281",3),
  (76,"61684","AL75027373439629786880173155",2),
  (284,"32782","RO27BWNV8359893923852843",2),
  (85,"68200","RO60YQQQ6494295574986606",4),
  (182,"44251","IL036906309807031526156",1),
  (397,"49900","CR7119346502580947435",3),
  (170,"29032","LT562350752103257436",5),
  (223,"62217","GT32349735572978125103575747",3),
  (119,"14695","CR4289627415737438268",5),
  (415,"66479","GR0519733378173275791297486",2),
  (109,"55890","LU183166136594336212",2),
  (479,"41731","PT49733266206202942202444",4),
  (252,"2262","ES6077900565800831834680",2),
  (387,"51186","EE139263878350177285",4),
  (319,"52049","GR7848685450238788389036015",2),
  (400,"55270","FR1845534149027460543524743",2),
  (483,"22439","GI24BOWQ824132775590213",3),
  (248,"65203","CH3145327216172891615",3),
  (181,"82965","LI1683695195042854117",2),
  (357,"4362","MR8317732135133404500137495",4),
  (452,"12578","IL239170864723752764257",2),
  (426,"91975","MT67OGLO15482532622488466513914",4),
  (36,"14304","LB06692269751996092407191661",4),
  (53,"99644","BH46741331444962670273",2),
  (351,"76079","BG90OSSO79725628192622",3),
  (22,"29706","CY37621973486375283060462441",4),
  (274,"38741","SA2477412837386169476157",4),
  (136,"39739","KZ388811226183372901",4),
  (290,"80675","KW0422299235220116768641255587",5),
  (307,"86467","DO93728442364731440707645133",3),
  (497,"60061","FR1253882122685981643020780",4),
  (344,"16749","MC9271538014504368887158455",4),
  (414,"72760","AZ45393344736446358357336512",2),
  (110,"15720","HU51421704655032214231685661",1),
  (317,"80723","GE87780475321862595325",2),
  (485,"95519","TN0664818861714143588280",5),
  (147,"13075","KW4335722683868806582454146580",2),
  (388,"37102","PS630432058651244788194152466",4),
  (306,"81635","AL43681463224666478545133422",1),
  (47,"6880","PK7051381412479356684180",1),
  (492,"98714","PT04923628854136545442684",3),
  (101,"23732","TN2536185173660303927572",1),
  (500,"5636","BG54UTGK07420526666517",4),
  (269,"69281","LI5871432472672422456",3),
  (373,"93062","DE89341518555129243811",4),
  (474,"37300","DK5888158217594458",4),
  (435,"11594","ES5153844217363611418013",1),
  (72,"83304","SK1042831018418061628134",3),
  (135,"12022","NO6563875182041",3),
  (363,"85233","NO0426418554763",2),
  (247,"10736","HR2268876357630301582",2),
  (256,"25184","SM2390542442793692236464361",2),
  (489,"33680","LT222503715871287471",4),
  (250,"71642","VG4483813719576437556864",2),
  (415,"99152","LI6065162246796166695",4),
  (68,"51937","SM7084114974371754518681702",5),
  (477,"7580","LB76357817476481513292130825",3),
  (156,"2456","MU1618847265083172754350647136",4),
  (346,"44785","BA435240524648292765",5),
  (427,"78343","KZ751654668169643752",2),
  (491,"58989","KZ394848681144163863",2),
  (193,"42784","BA762854723272274207",5),
  (219,"50554","BA192592281816871158",2),
  (125,"12140","AT973432577757547498",2),
  (215,"69891","HU07761071542058716103267871",3),
  (479,"93863","SE9155502806585202266231",4),
  (344,"31051","MR5363314487024568754593842",3),
  (392,"60523","VG9060708685247574447544",5),
  (267,"70293","GT42349963186522134614055214",4),
  (115,"80010","IS504841411627644715888995",2),
  (329,"79585","ES0571977241510525845527",4),
  (410,"65259","MD0241510866710344140127",3),
  (246,"96426","BH26856771898003647222",2),
  (123,"21652","CZ4464744434851881804362",1),
  (171,"35656","GR3134511825534251688775755",5),
  (332,"62393","CH1924475362676233685",5),
  (340,"58068","SM8642656348434670034423965",3),
  (392,"17234","EE516347444927868270",4),
  (273,"37313","GE10273033822695103943",5),
  (136,"62449","BH79138467567015177222",1),
  (468,"31843","SA9688131722643346644533",4),
  (89,"83687","SE9480665943701103431632",3),
  (107,"89033","AE324284887138425404048",1),
  (353,"60523","NL02ZQRL1538919415",1),
  (281,"10529","LU555825237581494587",1),
  (397,"60709","PS826667229833764342613351666",3),
  (442,"51414","RO61JKGY9180134658357927",1),
  (205,"20921","GL7741193274887786",1),
  (326,"91941","LT286519802710585368",2),
  (318,"61881","IE49TMGE11443592642103",2),
  (164,"8902","AE893228830388041137488",2),
  (252,"37056","TR588257324783715236465864",2),
  (43,"38142","RS55193023295129240036",4),
  (307,"11236","GI92WZBE626282391486673",3),
  (233,"57446","ES8367168978738333110474",3),
  (332,"32269","NL12YXMR1521613112",4),
  (44,"67782","BG29MQCW87754281294842",3),
  (103,"51779","MC5562056670978272817021813",5),
  (341,"77618","VG6784453635341847809682",1),
  (3,"45041","CY07013573416519883944164566",3),
  (319,"97811","GE05379671251839360115",1),
  (205,"62714","CR2470344405539558126",2),
  (114,"81551","GL5054432579764367",4),
  (10,"48211","EE386714614772988530",2),
  (414,"9134","RO91GBUB0458672403310311",1),
  (394,"90274","GL3419286882151118",4),
  (367,"2755","AE393586399983465224282",3),
  (192,"84729","KZ255542556781486327",3),
  (30,"45636","CH6666844168624958960",4),
  (378,"80696","MK31407273443156826",1),
  (313,"14960","GI66OOOU773883312567474",4),
  (123,"2766","MD1274072128164164323744",5),
  (294,"8479","AE822127321832601897865",5),
  (410,"48197","NO2205601528775",3),
  (496,"45338","NL81SBKQ7135518433",5),
  (138,"80254","HU50745136628483656608616226",1),
  (498,"19170","GL0271431515116534",4),
  (302,"6267","TN4517744536775385681788",3),
  (260,"4901","SM4967596255284306485891048",3),
  (193,"59654","TR817886899085183366932867",2),
  (118,"73621","DE84691068282427343649",3),
  (38,"90566","GT08123002647644850724379731",4),
  (358,"96758","CH1938478548620375242",5),
  (392,"49568","CH5715450093973271673",5),
  (84,"834","LT155629011115225212",3),
  (303,"38968","HR9024877671796833628",4),
  (97,"60447","MC5872725416477826971448457",3),
  (201,"64079","GR4368502768377208680363682",2),
  (426,"35804","CZ0745527333210388365528",3),
  (426,"25374","BE93212837016148",1),
  (463,"97560","HR2924116524633083283",2),
  (273,"66010","NO3289384545275",3),
  (62,"31353","BG75MEKH49105014712422",1),
  (364,"61085","RO98XFPN9216334254705755",2),
  (99,"53394","BG41TWOU12527042268378",3),
  (258,"60493","SK0819273724285769636861",3),
  (475,"47534","GR8590212418073779874543001",5),
  (422,"96879","SE0379995614617098860773",5),
  (19,"30088","AT674074248768890771",4),
  (292,"22587","ME78881902789540651321",4),
  (164,"63107","ES9793838676871651316236",2),
  (51,"20592","FI5985867512849035",1),
  (149,"84736","SI58815231883362662",4),
  (264,"43873","GE82406547336328249006",4),
  (45,"6259","IT568QOKJI46034941848755678",2),
  (130,"84307","AZ26127608556340229495127972",2),
  (87,"90083","RS59521727531762725937",5),
  (451,"65054","SE2052693761350535327651",3),
  (188,"85857","LT835515175407322249",5),
  (441,"60558","RS29672695080251652152",4),
  (226,"8353","PS950397346838372521724914842",2),
  (346,"49214","CZ7974551847656327072549",2),
  (485,"13831","MD5729358184165886768205",2),
  (8,"86186","HR1604537492164673183",4),
  (170,"23909","DE46539273030463445325",5),
  (474,"18758","CY68288885180136012897266233",4),
  (187,"87995","PS573863524404253201490133253",2),
  (147,"36205","GB63FHYW54647842015089",3),
  (390,"22975","DE71513328879473967253",5),
  (63,"42492","MD8783115181606478453067",3),
  (183,"57403","CR5344943864562164464",3),
  (491,"63007","PS042230246875237847726275563",2),
  (264,"79","CZ5971647868868220843561",2),
  (230,"77855","GT83561167379023369617467634",1),
  (430,"50382","IT464ODPWI69472221766226863",2),
  (313,"9906","GL9531423727864128",1),
  (82,"25460","LV46CXUS2478088084581",4),
  (494,"50440","SE4091327018742593532781",2),
  (91,"31000","LT276841811483841083",3),
  (313,"55772","IE64EVVH02154364886002",3),
  (469,"52742","MD9526834385188387336080",5),
  (196,"5172","GB26SHBU13854321869608",2),
  (386,"95188","NO8071056352313",1),
  (433,"61620","BA320172602653137534",2),
  (150,"38616","SM9641677035746634173336346",3),
  (487,"48428","NO7115954702128",5),
  (409,"87662","MK53640131634665341",4),
  (494,"48849","IT055KBZWI59164187885159878",5),
  (106,"50315","GT34346743876068983258815436",5),
  (339,"87741","NO7085102441373",5),
  (327,"77120","KZ751814856385633422",5),
  (166,"28266","IL418574548391853328756",4),
  (137,"66640","PS721194921756886548314634842",3),
  (258,"59855","DE97144107547549356298",4),
  (499,"76158","ES2538050841970551156232",4),
  (30,"64975","NO1336224636323",1),
  (413,"97454","TR171462692443851909868873",1),
  (330,"96810","HR2953140828018885745",3),
  (441,"69422","EE734764742259214818",4),
  (461,"54964","AL05335871178638319932228812",1),
  (210,"56361","NO3336148754415",5),
  (100,"62577","CZ1074371019726802372411",2),
  (232,"4390","CY47733312753878316639577276",3),
  (34,"94366","HU78757709567738315827198173",5),
  (30,"97874","AZ98891275427322375669210325",4),
  (373,"67647","PS148444662813701727486471576",3),
  (189,"94803","ME42397201238168485862",5),
  (456,"81125","AZ53672488751669659232481535",3),
  (103,"60618","AZ04156177764486605866867837",2),
  (45,"45350","MC7767346496249276726906029",2),
  (208,"17437","DO51711241766675584264362219",4),
  (334,"24180","MT09PGLJ48361333256403628994783",2),
  (337,"48029","SK5143553606879646969179",4),
  (354,"6154","TN8972956812567933136175",2),
  (277,"27351","BE16248226929475",3),
  (122,"4825","NO4311371899705",1),
  (358,"88658","BH15184177841114643445",3),
  (74,"34635","BH86261266316074206885",5),
  (344,"94016","GB17HODQ53443852317879",2),
  (433,"4177","GL2312878124173538",2),
  (495,"37906","FI8698353106682628",3),
  (100,"82560","PL56740293511321904054243181",2),
  (268,"26615","BE95784554107416",4),
  (383,"14109","GL7678121601716128",1),
  (152,"63217","LV55DJSU7347097595877",1),
  (111,"5351","SI86212625558280017",3),
  (476,"27700","IL334456728601076612363",5),
  (435,"49188","FI7071221103242538",4),
  (290,"38569","BH34253030136784786021",1),
  (406,"47542","TR382912157534422710331759",3),
  (244,"44545","LV79AJZP4484454484303",1),
  (131,"29700","FR2053751174637188346389861",5),
  (82,"49208","MT20BNVM77566503449898162087860",5),
  (360,"98860","SE8523325244739661248144",4),
  (170,"79992","SE4089076214244884675546",4),
  (63,"61376","MK96102384131279055",3),
  (282,"97312","LI4888610312782857761",3),
  (269,"8585","GE58250204038545108810",2),
  (347,"68452","SK6423656565512512403885",2),
  (28,"24581","ES9279514795065062873909",2),
  (146,"57964","EE563280024536615396",1),
  (41,"13734","SE7427283130455427868100",3),
  (65,"92832","NO4657033877822",2),
  (30,"76453","PS661783856652415730744574568",5),
  (229,"78517","BH10306571562646145830",3),
  (357,"28965","RS42611286543115747627",3),
  (77,"72064","LV84QVOC7281876400672",2),
  (157,"41477","TR168736495917227906654864",1),
  (473,"25492","DE93281785660839666734",5),
  (479,"30838","CZ8196542343777112552975",5),
  (396,"6428","BE83763513727828",3),
  (357,"29684","ME98549367430541021465",2),
  (396,"16545","PK0787682330237802888750",2),
  (400,"58917","PL87754732413838710727522224",2),
  (305,"9141","AD6528135775473724437282",4),
  (468,"97227","AE787647865727799335866",3),
  (447,"47963","PS757661253763502825507514858",4),
  (283,"24546","RO39JDPU5336410917892616",2),
  (63,"84237","GB80IURS89042522402838",3),
  (373,"85403","LV61OCET6328363805638",4),
  (292,"82918","SM8518773352257236276417233",2),
  (193,"81817","MK17109869950774636",3),
  (371,"12009","BH48896465400591340603",1),
  (152,"47746","SM8550237325349412737736563",3),
  (457,"98791","TR388465556614613578834843",5),
  (8,"6500","FI5675241322384795",5),
  (27,"59103","DO83108433941635437345283780",3),
  (487,"69714","AE537821566175466786161",1),
  (354,"1278","LT643789968865884148",4),
  (201,"16650","LI6187199188190316225",2),
  (320,"49999","BG11TKYN68164558423845",3),
  (331,"45476","SE2878175793963780918518",2),
  (327,"43178","PS275868783866326494585148642",5),
  (445,"29047","ME90673859284132853664",3),
  (433,"86549","DK3937752866446335",1),
  (422,"58580","EE208618282812468623",3),
  (6,"29632","LB44876651779512219049167929",2),
  (465,"335","TR968754776296910880184338",4),
  (124,"21809","MC5133720965588884931110537",1),
  (194,"63069","EE475321724255887235",3),
  (36,"50033","RO34HQKA0833617864802538",3),
  (20,"44139","TN3668273458662524259402",5),
  (299,"27533","LB79482223202774439942854137",3),
  (363,"72479","PT30746145674149991407738",4),
  (284,"73619","VG2626475925927891463051",3),
  (457,"14066","BG93MJGC45142437445450",2),
  (14,"40691","MD9041857205230448427801",4),
  (349,"23165","HU98357228740471634116640531",1),
  (172,"11783","IL857113396220074681520",4),
  (55,"76076","BG28JKMP48967744306768",2),
  (46,"98002","MD2273245659485347625185",4),
  (225,"224","MT30ZDEU40739558670172163358617",3),
  (117,"86844","AD9716757538982257420623",5),
  (460,"25159","RO34LDIU3129349115972358",3),
  (350,"73205","CY09953253206817053727171856",4),
  (318,"78036","SE4515426049087344781275",3),
  (158,"61973","MR3362244222374355114453463",5),
  (84,"1492","MU3911656444171429132585569695",1),
  (137,"70389","MU8930856887729271373372379944",4),
  (97,"2116","MU0222451156743007566277848489",2),
  (279,"16598","LU943945474853251122",4),
  (229,"90517","AD5447883214955885297797",2),
  (384,"95245","CZ1570016089656677636123",2),
  (267,"12916","BA286263068651189796",5),
  (197,"5556","KZ081484441605535526",3),
  (78,"70926","ME77242833347164362337",4),
  (431,"97296","PS244859786338185233991643770",2),
  (210,"68877","GB67WBJR85503825154625",1),
  (274,"85857","DE76844365358811472551",3),
  (22,"58087","MR3762677060477137062549776",3),
  (245,"329","CR6603685545232185345",4),
  (273,"34957","GR1337211463289145835229304",3),
  (125,"81665","FR4744471505716222116534435",4),
  (279,"11970","AD7126568626572728412628",4),
  (263,"27678","ES1116894124416854616659",4),
  (261,"89329","KW2993850253131640745832169774",5),
  (132,"21846","KZ311705793827711352",4),
  (355,"46356","VG4720921986176195816347",1),
  (447,"18868","ES3052181502728768432063",4),
  (75,"22779","MK82416531323318221",4),
  (400,"31791","SK8429440214633883873291",2),
  (142,"13446","FI9620480781932592",4),
  (373,"12873","EE844281492836826883",3),
  (4,"31058","TR207128673996788592463687",2),
  (363,"96903","DE22143524327165443349",3),
  (8,"50599","LV25RUUX6677992360956",2),
  (341,"42553","DK7748882881886282",2),
  (162,"69465","SK1914636728722212450131",4),
  (493,"34255","GE21622471419918454158",2),
  (385,"81657","IE89XCNT41582723211076",3),
  (377,"44176","LI7070843534112314837",4),
  (87,"51249","FO4515232661171242",4);
