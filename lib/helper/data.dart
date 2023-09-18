import 'lunar_model.dart';

final lunarList = [
  Lunar(
      enName: 'January',
      name: 'Ianuarius',
      image: '1-jan',
      detail:
          "Ianuarius, fully Mensis Ianuarius (Latin for the 'January Month', i.e., 'The Month of Janus'), was the first month of the ancient Roman calendar, from which the Julian and Gregorian month of January derived. It was followed by Februarius ('February'). In the calendars of the Roman Republic, Ianuarius had 29 days. Two days were added when the calendar was reformed under Julius Caesar in 45 BCE."),
  Lunar(
      enName: 'February',
      name: 'Februarius',
      image: '2-feb',
      detail:
          "Februarius or February, fully the 'February month' (Latin: mensis Februarius), was the shortest month of the Roman calendar. It was eventually placed second in order, preceded by Ianuarius ('January') and followed by Martius ('Mars month', March). In the oldest Roman calendar, which the Romans believed to have been instituted by their legendary founder Romulus, March was the first month, and the calendar year had only ten months in all. Ianuarius and Februarius were supposed to have been added by Numa Pompilius, the second king of Rome, originally at the end of the year. It is unclear when the Romans reset the course of the year so that January and February came first."),
  Lunar(
      enName: 'March',
      name: 'Martius',
      image: '3-mar',
      detail:
          "Martius or mensis Martius ('March') was the first month of the ancient Roman year until possibly as late as 153 BC. After that time, it was the third month, following Februarius (February) and preceding Aprilis (April). Martius was one of the few Roman months named for a deity, Mars, who was regarded as an ancestor of the Roman people through his sons Romulus and Remus."),
  Lunar(
      enName: 'April',
      name: 'Aprilis',
      image: '4-apr',
      detail:
          "Aprilis or mensis Aprilis (April) was the fourth month of the ancient Roman calendar, following Martius (March) and preceding Maius (May). On the oldest Roman calendar that had begun with March, Aprilis was the second of ten months in the year. April had 30 days on calendars of the Roman Republic, with a day added to the month during the reform in the mid-40s BC that produced the Julian calendar."),
  Lunar(
      enName: 'May',
      name: 'Maius',
      image: '5-may',
      detail:
          "Maius or mensis Maius (May) was the third month of the ancient Roman calendar, following Aprilis (April) and preceding Iunius (June). On the oldest Roman calendar that had begun with March, it was the third of ten months in the year. May had 31 days. The Romans considered May an infelicitous month. Although it began with one of the most notoriously licentious holidays of the Roman calendar, the Games of Flora (Ludi Florae), the middle of the month was devoted to propitiating the lemures, the restless shades of the dead."),
  Lunar(
      enName: 'June',
      name: 'Iunius',
      image: '6-jun',
      detail:
          "On the ancient Roman calendar, mensis Iunius or Iunius, also Junius (June), was the fourth month, following Maius (May). In the oldest calendar attributed by the Romans to Romulus, Iunius was the fourth month in a ten-month year that began with March (Martius, 'Mars' month'). The month following June was thus called Quinctilis or Quintilis, the 'fifth' month. Iunius had 29 days until a day was added during the Julian reform of the calendar in the mid-40s BC. The month that followed Iunius was renamed Iulius (July) in honour of Julius Caesar."),
  Lunar(
      enName: 'July',
      name: 'Quintilis',
      image: '7-jul',
      detail:
          "In the ancient Roman calendar, Quintilis or Quinctilis was the month following Junius (June) and preceding Sextilis (August). Quintilis is Latin for 'fifth': it was the fifth month (quintilis mensis) in the earliest calendar attributed to Romulus, which began with Martius ('Mars month', March) and had 10 months. After the calendar reform that produced a 12-month year, Quintilis became the seventh month, but retained its name. In 45 BC, Julius Caesar instituted a new calendar (the Julian calendar) that corrected astronomical discrepancies in the old. After his death in 44 BC, the month of Quintilis, his birth month, was renamed Julius in his honor, hence July"),
  Lunar(
      enName: 'August',
      name: 'Sextilis',
      image: '8-aug',
      detail:
          "Sextilis ('sixth') or mensis Sextilis was the Latin name for what was originally the sixth month in the Roman calendar, when March (Martius, 'Mars month') was the first of ten months in the year. After the calendar reform that produced a twelve-month year, Sextilis became the eighth month, but retained its name. It was renamed Augustus (August) in 8 BC in honor of the first Roman emperor, Augustus. Sextilis followed Quinctilis, which was renamed Julius (July) after Julius Caesar, and preceded September (from septem, 'seven'), which was originally the seventh month."),
  Lunar(
      enName: 'September',
      name: 'September',
      image: '9-sep',
      detail:
          "September (from Latin septem, 'seven') or mensis September was originally the seventh of ten months on the ancient Roman calendar that began with March (mensis Martius, 'Mars month'). It had 29 days. After the reforms that resulted in a 12-month year, September became the ninth month, but retained its name. September followed what was originally Sextilis, the 'sixth' month, renamed Augustus in honor of the first Roman emperor, and preceded October, the 'eighth' month that like September retained its numerical name contrary to its position on the calendar. A day was added to September in the mid-40s BC as part of the Julian calendar reform."),
  Lunar(
      enName: 'October',
      name: 'October',
      image: '10-oct',
      detail:
          "October (from Latin octo, 'eight') or mensis October was the eighth of ten months on the oldest Roman calendar. It had 31 days. October followed September (from septem, 'seven') and preceded November (novem, 'nine'). After the calendar reform that resulted in a 12-month year, October became the tenth month, but retained its numerical name, as did the other months from September to December. Some of the observances in October marked the close of the season for military campaigning and farming, which commenced in March (Martius, 'Mars month'). October was under the guardianship (tutela) of Mars."),
  Lunar(
      enName: 'November',
      name: 'November',
      image: '11-nov',
      detail:
          "November (from Latin novem, 'nine') or mensis November was originally the ninth of ten months on the Roman calendar, following October (octo, 'eight') and preceding December (decem, 'ten'). It had 29 days. In the reform that resulted in a 12-month year, November became the eleventh month, but retained its name, as did the other months from September through December. A day was added to November during the Julian calendar reform in the mid-40s BC. The outstanding event during November was the Plebeian Games from the 4th through the 17th. The month had few other festivals. It was under the guardianship (tutela) of Diana."),
  Lunar(
      enName: 'December',
      name: 'December',
      image: '12-dec',
      detail:
          "December (from Latin decem, 'ten') or mensis December was originally the tenth month of the Roman calendar, following November (novem, 'nine') and preceding Ianuarius. It had 29 days. When the calendar was reformed to create a 12-month year starting in Ianuarius, December became the twelfth month, but retained its name, as did the other numbered months from Quintilis (July) to December. Its length was increased to 31 days under the Julian calendar reform."),
];
