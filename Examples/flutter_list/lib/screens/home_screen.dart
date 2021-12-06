import 'package:flutter/material.dart';
import 'package:flutter_list/model/model.dart';
import 'package:flutter_list/services/client.dart';

class HomeScreen extends StatelessWidget {
  final PersonNetworkService personService = PersonNetworkService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              "https://firebasestorage.googleapis.com/v0/b/findpic-1772.appspot.com/o/pic%2Fwillian-justen-de-vasconcellos-tczuhvIClQg-unsplash.jpg?alt=media&token=36f0a8ea-4931-452a-ae54-de6801596b27"),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: FutureBuilder(
            future: personService.fetchPersons(100),
            builder:
                (BuildContext context, AsyncSnapshot<List<Person>> snapshot) {
              if (snapshot.hasData) {
                return Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Card(
                          color: Colors.black.withOpacity(0.5),
                          child: ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (BuildContext context, int index) {
                                var currentPerson = snapshot.data![index];

                                return ListTile(
                                  title: Text(
                                    currentPerson.name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(currentPerson.imageUrl),
                                  ),
                                  subtitle: Text(
                                      "Phone: ${currentPerson.phoneNumber}"),
                                );
                              }),
                        ),
                      ),
                    ),
                  ],
                );
              }

              if (snapshot.hasError) {
                return const Center(
                    child: Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 82.0,
                ));
              }

              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Loading at the moment, please hold the line.")
                ],
              ));
            },
          ),
        ),
      ),
    );
  }
}
