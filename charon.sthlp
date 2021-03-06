{smcl}
{* *! charon v11.3 A.Bigoni 8jul2019}{...}
{cmd: help charon}{right:Version 1.0.0}
{hline}

{title:Title}

{p 4 11 2}
{hi:charon} {hline 2}Redistributes deaths by ill-defined causes and garbage codes{p_end}


{marker syntax}{title:Syntax}

{p 8 15 2}
{cmd:charon} {help charon##inforeq:{it:icd10var}}
{cmdab:adj:ust(}{help charon##adjustop:{it:method_options}}{cmd:)}
{cmdab:a:ge(}{help charon##inforeq:{it:agevar}}{cmd:)} 
{cmdab:y:ear(}{help charon##inforeq:{it:yearvar}}{cmd:)} 
{cmdab:s:ex(}{help charon##inforeq:{it:sexvar}}{cmd:)} 
{cmdab:geo:level(}{help charon##inforeq:{it:geolevel}}{cmd:)}{break} 
[{cmd:,}{cmdab:can:cer(}{help charon##cancerop:{it:group_options}}{cmd:)}
{cmdab:new:group(}{help charon##icd10:{it:icd10list}}{cmd:)}
{cmd:{help charon##coef:{it:coefficient()}}} ] {break}


{synoptset 25 tabbed}{...}
{marker Options}{synopthdr:Options}{col 32}
{synoptline}
{marker adjustop}{syntab :{it:method_options}}

{synopt : {cmdab:NAD}}No redistribution of deaths by causes (Only redistributes deaths with unknown sex, age, and sex and age){p_end}
{synopt : {cmdab:WHO}}World Health Organisation method 
[{help charon##references:{it:ref 1}}]{p_end}
{synopt : {cmdab:EFB}}WHO method adjusted by Elisabeth Barboza França [{help charon##references:{it:ref 2}}] {p_end}
{synopt : {cmdab:GBD}}Method based on the coefficients published by the Global Burden of Disease Study 2010 [{help charon##references:{it:ref 3}}] {p_end}

{marker cancerop}{syntab :{it:group_options}}

{synopt : {cmdab:neopla}}All neoplasms{p_end}
{synopt : {cmdab:lipora}}Lip and oral cavity cancer{p_end}
{synopt : {cmdab:nasoph}}Nasopharynx cancer{p_end}
{synopt : {cmdab:otpha}}Other pharynx cancer{p_end}
{synopt : {cmdab:esopha}}Esophageal cancer{p_end}
{synopt : {cmdab:stomac}}Stomach cancer{p_end}
{synopt : {cmdab:colon}}Colon and rectum cancer{p_end}
{synopt : {cmdab:liver}}Liver cancer{p_end}
{synopt : {cmdab:gallbl}}Gallbladder and biliary tract cancer{p_end}
{synopt : {cmdab:pancre}}Pancreatic cancer{p_end}
{synopt : {cmdab:larynx}}Larynx cancer{p_end}
{synopt : {cmdab:trache}}Tracheal, bronchus, and lung cancer{p_end}
{synopt : {cmdab:malski}}Malignant skin melanoma{p_end}
{synopt : {cmdab:nonmel}}Non-melanoma skin cancer{p_end}
{synopt : {cmdab:sqacc}}Non-melanoma skin cancer (squamous-cell carcinoma){p_end}
{synopt : {cmdab:breast}}Breast cancer{p_end}
{synopt : {cmdab:cervic}}Cervical cancer{p_end}
{synopt : {cmdab:uterin}}Uterine cancer{p_end}
{synopt : {cmdab:ovaria}}Ovarian cancer{p_end}
{synopt : {cmdab:prosta}}Prostate cancer{p_end}
{synopt : {cmdab:testic}}Testicular cancer{p_end}
{synopt : {cmdab:kidney}}Kidney cancer{p_end}
{synopt : {cmdab:bladde}}Bladder cancer{p_end}
{synopt : {cmdab:brain}}Brain and nervous system cancer{p_end}
{synopt : {cmdab:thyroi}}Thyroid cancer{p_end}
{synopt : {cmdab:mesoth}}Mesothelioma{p_end}
{synopt : {cmdab:hodgki}}Hodgkin lymphoma{p_end}
{synopt : {cmdab:nonhod}}Non-Hodgkin lymphoma{p_end}
{synopt : {cmdab:multip}}Multiple myeloma{p_end}
{synopt : {cmdab:leukem}}Leukemia{p_end}
{synopt : {cmdab:aculym}}Acute lymphoid leukemia{p_end}
{synopt : {cmdab:chroly}}Chronic myeloid leukemia{p_end}
{synopt : {cmdab:acumye}}Acute myeloid leukemia{p_end}
{synopt : {cmdab:chromy}}Chronic myeloid leukemia{p_end}
{synopt : {cmdab:otleuk}}Other leukemia{p_end}
{synopt : {cmdab:otmali}}Other malignant cancers{p_end}
{synopt : {cmdab:otneop}}Other neoplasms{p_end}
{synopt : {cmdab:myelod}}Myelodysplastic, myeloproliferative and other hematopoietic neoplasms{p_end}
{synopt : {cmdab:beinte}}Beningn and in situ intestinal neoplasms{p_end}
{synopt : {cmdab:beceut}}Benign and in situ cervical and uterine neoplasms{p_end}
{synopt : {cmdab:otbeni}}Other benign and in situ neoplasms{p_end}
{synoptline}

{marker icd10}{syntab :{it:icd10list}}

{pstd} Any code from the 10th revision of the  International Statistical Classification of Diseases
is accepted

{synoptline}

{marker coef}{syntab :{it:coefficient()}}

{pstd} Studies in Brazil reported that cancer deaths had a lower chance of being misclassified
than other causes of deaths, finding that the per-rata distribution of
ill-defined causes of death overestimated the redistribution by 50%. The EBF method
applies this correction to the WHO method. Recognizing that this may change according
to cancer site or country, we provided an option to customize the coefficient of
correction of the WHO distribution. [This option can only be used when the WHO method
is chosen]

{synoptline}

{title: Description}

{pstd}{cmd:charon} redistributes deaths by ill-defined causes and garbage codes
according to different methodologies. The command allows applying
the previously mentioned methods, comparing their results,
and helping to choose the best option.The command terminates by generating a 
new dataset that will be saved in the working folder. The link {bf:CHARON FILE}, 
which will be displayed on the screen, allows opening the database generated by the command.

{marker inforeq}{title: Information required}

{pstd}The required {bf:icd10var} needs to be a string variable containing
valid ICD-10 codes. It is necessary to provide a numeric variable for 
age, sex, year, and level of aggregation (geolevel). Year needs to be provided 
in YYYY or YY format. Sex needs to be classified as 1 = Males; 2 = Females; 
and 3 = Unknow. All other types of classification will cause an error.


{marker references}{title: References}

{pstd} 1. World Health Organization, 2018. WHO methods and data sources for
 country-level causes of death 2000-2016. Global Health Estimates
 Technical Paper WHO/HIS/IER/GHE/2018.3; World Health Organization: Geneva,
 Switzerland.
 
{pstd} 2. França, E., Teixeira, R., Ishitani, L., Duncan, B.B., Cortez-Escalante, 
J.J., Morais Neto, O.L.D. and Szwarcwald, C.L., 2014. Ill-defined causes of
 death in Brazil: a redistribution method based on the investigation of such causes. Revista de saude publica, 48, pp.671-681.

{pstd} 3. Lozano, R., Naghavi, M., Foreman, K., Lim, S., Shibuya, K., Aboyans, V., 
Abraham, J., Adair, T., Aggarwal, R., Ahn, S.Y. and AlMazroa, M.A., 2012. 
Global and regional mortality from 235 causes of death for 20 age groups in 
1990 and 2010: a systematic analysis for the Global Burden of Disease Study 
2010. The lancet, 380(9859), pp.2095-2128.
 
{title:Author}

{phang} Alessandro Bigoni, USP - School of Public Health, Department of Epidemiology{break}
alebigoni@usp.br{p_end} 
 
 
