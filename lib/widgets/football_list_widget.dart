import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart';
import '../data/football_data.dart';

class FootballListWidget extends StatelessWidget {
  final Map<String, String> countryCodes = {
    "Turkey": "tr",
    "Croatia": "hr",
    "Serbia": "rs",
    "Bosnia": "ba",
    "Morocco": "ma",
    "Brazil": "br",
    "Ghana": "gh",
    "Netherlands": "nl",
    "France": "fr",
    "Poland": "pl",
  };

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: kadromuz.length,
      itemBuilder: (context, index) {
        var playerData = kadromuz[index];
        var countryCode = countryCodes[playerData['nationality']] ?? "unknown";

        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color.fromARGB(255, 0, 45, 114),
                width: 2,
              ),
            ),
            child: ClipOval(
              child: CountryFlag.fromCountryCode(
                countryCode,
                height: 32,
                width: 32,
              ),
            ),
          ),
          title: Text(
            playerData['name'],
            style: TextStyle(
              color: Color.fromARGB(255, 0, 45, 114),
              fontFamily: 'LilitaOne',
            ),
          ),
          subtitle: Text(
            "Position: ${playerData['position']}, Age: ${playerData['age']}",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 45, 114),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
        thickness: 1,
        indent: 16,
        endIndent: 16,
      ),
    );
  }
}
