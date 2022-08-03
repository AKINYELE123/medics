class Fact {
  static const String title = 'What is Tuberculosis?';
  static const List<String> body = [
    'Tuberculosis (TB) is caused by a bacterium called Mycobacterium tuberculosis. '
        'The bacteria usually attack the lungs, but TB bacteria can attack any part of '
        'the body such as the kidney, spine, and brain. Not everyone infected with TB '
        'bacteria becomes sick. As a result, two TB-related conditions exist: latent '
        'TB infection (LTBI) and TB disease. If not treated properly, TB disease can be fatal.',
    'TB bacteria are spread through the air from one person to another. The TB '
        'bacteria are put into the air when a person with TB disease of the lungs or '
        'throat coughs, speaks, or sings. People nearby may breathe in these bacteria '
        'and become infected.',
    'Tuberculosis (TB) is a global health problem and a leading cause of deaths resulting '
        'in approximately 1.3 million deaths among HIV-negative individuals as well as 300,000 '
        'additional deaths in people living with HIV and AIDS. According to the 2018 World Health '
        'Organization Global Tuberculosis Report, Nigeria has a TB incidence rate of 219 per 100,000 '
        'populations while the estimated incidence of Multi-Drug Resistant, rifampicin-resistant '
        'TB (MDR/RR-TB) was 12 per 100,000. Nigeria was listed as one of the top 20 countries '
        'with the highest incident TB cases among people living with HIV and in the general '
        'populations. The national government through the Federal Ministry of Health responded '
        'to this challenge by setting three major targets for TB control in the country which '
        'are “to detect at least 70% of all TB cases by 2020, achieve a treatment success rate '
        'of at least 90% for all new bacteriologically confirmed TB cases by 2020 and eliminate '
        'TB as a public health problem (<= 1/1,000,000 population) by 2050” Globally, the WHO '
        'proposed the End TB Strategy which details interventions, objectives and targets for '
        'tuberculosis prevention and control. The DOTS Strategy has been implemented with '
        'varying success in different parts of the world though most of the countries in '
        'sub-Saharan Africa including Nigeria have not recorded significant progress in '
        'the achievement of the global targets. Factors attributed to this include the low '
        'priority and inadequate funding for TB prevention and control by national governments. '
        'This is reflected in the weak health systems characterized by poor infrastructure '
        'for TB care, insufficient human resources, poor diagnostic, and laboratory services. '
        'Tuberculosis (TB) remains one of the major global health threats leading to morbidity '
        'and mortality. One in three persons across the world representing 2–3 billion '
        'individuals are known to be infected with Mycobacterium Tuberculosis '
        '(M. Tuberculosis) of which 5–15% are likely to develop active TB disease during '
        'their lifetime. In 2014, an estimated 9.6 million people fell ill due to TB, around '
        '1.5 million people died from the disease including 1.1 million HIV-negative persons '
        'and 400,000 HIV patients. While TB is present in every country majority of TB '
        'sufferers live in low income and middle income countries especially in regions '
        'such as Sub-Saharan Africa and South East Asia). Over the past decade, '
        'significant progress has been made towards TB control with most of the TB '
        'targets set as part of the Millennium Development Goals (MDGs) having been '
        'achieved. TB mortality for instance has declined by 47% since 1990, with '
        'nearly all of that happening in the era of the MDGs. In all, effective diagnosis '
        'and treatment of TB has been estimated to have saved over 40 million lives between '
        '2000 and 2014. The incidence of TB is influenced by risk factors such as exposure '
        'to, and susceptibility to, TB and levels of deprivation (poverty, housing, '
        'nutrition and access to healthcare), and differs in different parts of England and Wales.'
  ];
  static const List<String> list = [
    'TB is NOT spread by:',
    'Shaking someone’s hand',
    'Sharing food or drink',
    'Touching bed linens or toilet seats',
    'Sharing toothbrushes',
    'Kissing',
  ];
  static const String image = 'assets/images/patient.png';
}

class Symptom {
  static const String title = 'The following are likely symptoms';
  static const List<String> list = [
    'Cough (lasting longer than 3 weeks)',
    'Chest pain',
    'Sweating at night',
    'Coughing up blood or sputum (phlegm from inside the lungs)',
    'Chills',
    'Fever',
  ];
  static const List<String> images = [
    'assets/images/cough.png',
    'assets/images/chest_pain.png',
    'assets/images/night_sweat.jpg',
    'assets/images/Coughing_up_blood.jpg',
    'assets/images/chills.png',
    'assets/images/fever.jpg',
  ];
}

class Diet {
  static const String title =
      'A person with TB should aim to have a healthy balanced diet which include the following';
  static const List<String> list = [
    'Fruits',
    'Vegetables',
    'Milk products',
  ];
  static const List<String> otherList = [
    'Others include:',
    'Whole grain cereals',
    'Millets',
    'Vegetable oils, ghee, butter.',
    'Nuts and oil seeds',
    'Pulses, nuts.',
  ];
  static const List<String> donotEatList = [
    'What a TB patient should not eat',
    'As a TB patient, you must avoid the following: ',
    'Caffeine.',
    'Refined sugar and flour.',
    'Sodium.',
    'Bottled sauces.',
    'White bread',
    'Sugary drinks',
    'Fried, grilled or boiled food',
    'Pastries, cookies and cakes.',
    'French fries and potato chips',
  ];
  static const List<String> images = [
    'assets/images/vegetables_and_fruit.png',
    'assets/images/vegetable.png',
    'assets/images/milk_product.jpg',
  ];
  static const String note =
      'Foods containing saturated and trans fats worsen the TB symptoms of diarrhoea and abdominal '
      'cramping and fatigue. Additionally, alcohol and tobacco are a definite no-no during '
      'the disease treatment and cure phase.';
}

class Drug {
  static const String title =
      'Of the approved drugs, the first-line anti-TB agents that form the core of treatment regimens are:';
  static const List<String> list = [
    'Isoniazid (INH)',
    'Rifampin (RIF)',
    'Ethambutol (EMB)',
    'Pyrazinamide (PZA)',
  ];
  static const List<String> images = [
    'assets/images/isoniazid.png',
    'assets/images/rifampin.png',
    'assets/images/ethambutol.jpg',
    'assets/images/pyrazinamide.jpg',
  ];
}

class Exercise {
  static const String title =
      'Doing the following excercises could help resuscitate from TB';
  static const List<String> list = [
    'Stationary cycling',
    'Yoga',
  ];
  static const List<String> images = [
    'assets/images/stationary_recycling.png',
    'assets/images/yoga.png',
  ];
}

class Precaution {
  static const String title =
      'The following are the basic precautions to adhere to';
  static const List<String> list = [
    'Wash your hands after coughing or sneezing.',
    'Always make use of your mask whereever you go.',
    'Establish cough etiquette.',
    'There is a three-fold risk increase of active TB associated with consumption of more than 40 g alcohol per day, therefore avoid alcohol.',
    'Higher blood glucose level increases the risk of tuberculosis.',
  ];
}

class FAQ {
  static const String title =
      'The following are the Frequently asked questions (FAQs).';
  static const List<String> questions = [
    'What is TB?',
    'How is TB spread?',
    'What is the Difference Between Latent TB Infection and TB Disease?',
    'Who is at risk for getting TB?',
    'Who is at risk for developing TB Disease?',
    'What are the symptoms of TB Disease?',
    'What if I have HIV infection?',
    'If I was exposed to someone with TB disease, can I give TB to others?'
  ];
  static const List<String> answers = [
    'Tuberculosis (TB) is caused by bacteria called Mycobacterium tuberculosis '
        '(M. tuberculosis). The bacteria, or germs, usually attack the lungs. TB '
        'germs can attack any part of the body, such as the kidney, spine, or brain. '
        'There is good news. People with TB can be treated if they seek medical help.',
    'TB is spread through the air from one person to another. The TB germs are '
        'spread into the air when a person with infectious TB disease of the lungs '
        'or throat coughs, speaks, or sings. People nearby may breathe in these TB '
        'germs and become infected. When a person breathes in TB germs, the TB germs '
        'can settle in the lungs and begin to grow. From there, the TB germs can move '
        'through the blood to other parts of the body, such as the kidney, spine, or brain.',
    'People with latent TB infection have TB germs in their bodies, but they are not '
        'sick because the germs are not active. These people do not have symptoms of TB '
        'disease, and they cannot spread the germs to others. However, they may develop '
        'TB disease in the future. They are often prescribed treatment to prevent them '
        'from developing TB disease. \nPeople with TB disease are sick from TB germs '
        'that are active, meaning that they are multiplying and destroying tissue in '
        'their body. They usually have symptoms of TB disease. People with TB disease '
        'of the lungs or throat are capable of spreading germs to others. They are '
        'prescribed drugs that can treat TB disease.',
    'Anyone can get TB. Some people have a higher risk of getting infected with TB:',
    'Many people who have latent TB infection never develop TB disease. While not '
        'everyone with LTBI will develop TB disease, about 5–10% will develop TB disease '
        'over their lifetimes if not treated. Progression from untreated LTBI to TB disease '
        'is estimated to account for approximately 80% of U.S. TB cases. Some people who have '
        'LTBI are more likely to develop TB disease than others. People at high risk for '
        'developing TB disease generally fall into two categories:',
    'If you have HIV infection and latent TB infection (LTBI), you need treatment as soon '
        'as possible to prevent TB disease. A person with HIV infection who also has untreated '
        'LTBI is much more likely to develop TB disease during his or her lifetime than someone '
        'without HIV infection. Among people with LTBI, HIV infection is the strongest known '
        'risk factor for progressing to TB disease. All people with HIV infection should be '
        'tested to find out if they have LTBI and promptly seek treatment if necessary. There '
        'are several effective LTBI treatment regimens available for people with HIV.',
    'If you were exposed to someone with TB disease, you may become infected with TB '
        'bacteria, but you would not be able to spread the bacteria to others right away. '
        'Only people with infectious TB disease can spread TB germs to others. Before you '
        'would be able to spread TB germs to others, you would have to breathe in TB germs '
        'and become infected. Then the germs would have to multiply in your body and cause '
        'infectious TB disease. At this point, you could possibly spread TB germs to others. '
        '\nIn most people who breathe in TB germs and become infected, the body can fight the '
        'germs to stop them from growing. The germs become inactive, but they remain alive in '
        'the body and can become active later. This is called latent TB infection (LTBI). '
        'People with LTBI cannot spread TB germs to others. People who have LTBI can be '
        'treated to prevent TB disease.'
  ];

  static const List<String> ans4 = [
    'People who have contact with someone who has infectious TB disease',
    'People who were born in or who frequently travel to countries where TB disease '
        'is common, including Mexico, the Philippines, Vietnam, India, China, Haiti, '
        'Guatemala, and other countries with high rates of TB',
    'Health care workers and others who work or live in places at high risk for '
        'TB transmission, such as homeless shelters, jails, and nursing homes.'
  ];

  static const List<String> ans5 = [
    'Those who have been recently infected with TB germs',
    'Those with medical conditions that weaken the immune system including:',
  ];
  static const List<String> ans5b = [
    'HIV infection',
    'Substance use (such as injection drug use)',
    'pecialized treatment for rheumatoid arthritis or Crohn’s disease',
    'Organ transplants',
    'Sever kidney disease',
    'Head and neck cancer',
    'Diabetes',
    'Medical treatments such as corticosteroids',
    'Silicosis',
    'Low body weight',
  ];
  static const String ans5bNote =
      'Children, especially those under age 5, have a higher risk of developing TB disease once infected.';
  static const List<String> ans6a = [
    'Symptoms of TB disease depend on where in the body the TB germs are growing. TB disease in the lungs may cause the following symptoms:',
    'Cough (lasting longer than 3 weeks)',
    'Coughing up sputum (phlegm from inside the lungs) or blood',
    'Chest pain',
    'Fever',
    'Night Sweats',
    'Chills',
    'Loss of appetite',
    'Weakness or fatigue',
    'Weight loss',
  ];
  static const List<String> ans6b = [
    'Symptoms of TB disease in other parts of the body may include the following:',
    'TB of the kidney may cause blood in the urine.',
    'TB meningitis may cause headache or confusion.',
    'TB of the spine may cause back pain.',
    'TB of the larynx may cause hoarseness.',
  ];

  static const String image = 'assets/images/tb_spread.jpg';
}
