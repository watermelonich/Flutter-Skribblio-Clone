import 'package:flutter/material.dart';

class PlayerScore extends StatelessWidget {
  final List<Map> userData;
  const PlayerScore(this.userData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: SizedBox(
          height: double.maxFinite,
          child: ListView.builder(
            itemCount: userData.length,
            itemBuilder: (context, index) {
            var data = userData[index].values;
            return ListTile(
              title: Text(data.elementAt(0), style: const TextStyle(color: Colors.black, fontSize: 23)),
              trailing: Text(data.elementAt(1), style: const TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold)),
            );
          })
        ),
      ),
    );
  }
}