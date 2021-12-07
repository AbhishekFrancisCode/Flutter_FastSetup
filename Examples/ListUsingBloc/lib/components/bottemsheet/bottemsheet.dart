import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_testing/components/bottemsheet/bloc/bottomsheet_bloc.dart';
import 'package:food_testing/components/map/map.dart';
import 'package:food_testing/model/user_model.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';

class BottemSheet extends StatelessWidget {
  final User users;
  final int index;
  BottemSheet(this.users, this.index);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => BottomsheetBloc()..add(OnLoadBottomSheet(users)),
        child: BlocBuilder<BottomsheetBloc, BottomsheetState>(
            builder: (context, state) {
          if (state is BottomsheetLoaded) {
            var userDetail = state.user.results[index];
            return Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 10, right: 10, left: 5),
                //color: Colors.grey[200],
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: SingleChildScrollView(
                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              CircleAvatar(
                                radius: 100,
                                backgroundImage:
                                    NetworkImage(userDetail.picture.large),
                              ),
                              Positioned(
                                bottom: 4,
                                right: -05,
                                child: Container(
                                  height: 20,
                                  width: 60,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 229, 204, 255),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5)),
                                  ),
                                  child: Text(
                                    "Age ${userDetail.dob.age.toString()}",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 12,
                                      color: Colors.blue[600]
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            clipBehavior: Clip.none,
                          ),
                          const SizedBox(height: 10),
                          Text("${userDetail.name.first}${userDetail.name.last}",
                              style: GoogleFonts.mcLaren(
                                fontSize: 30,
                              )),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            child: Wrap(
                                runSpacing: 10,
                                alignment: WrapAlignment.start,
                                children: [
                                  const Icon(Icons.email),
                                  const SizedBox(width: 20),
                                  Text(userDetail.email,
                                      style: GoogleFonts.mcLaren(
                                        fontSize: 15,
                                      )),
                                ]),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            child: Wrap(
                                runAlignment: WrapAlignment.start,
                                children: [
                                  const Icon(Icons.phone),
                                  const SizedBox(width: 20),
                                  Text(userDetail.cell,
                                      style: GoogleFonts.mcLaren(
                                        fontSize: 15,
                                      )),
                                ]),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            child: Wrap(
                                runAlignment: WrapAlignment.start,
                                children: [
                                  const Icon(Icons.my_location),
                                  const SizedBox(width: 20),
                                  SizedBox(
                                    width: 300,
                                    child: Text(
                                        "# ${userDetail.location.street.number} ${userDetail.location.street.name} ${userDetail.location.city} ${userDetail.location.state} ${userDetail.location.country} - ${userDetail.location.postcode}",
                                        style: GoogleFonts.mcLaren(
                                          fontSize: 15,
                                        )),
                                  ),
                                ]),
                          ),
                          Container(
                            height: 180 ,
                            width: 350,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(top: 10, right: 10, left: 5),
                            child: SingleChildScrollView(
                              child: MapSample
                              (             _getdouble(userDetail
                                                .location.coordinates.latitude),
                                            _getdouble(userDetail
                                                .location.coordinates.longitude),)))   
                        ]),
                ),
              );
          }
          return const CircularProgressIndicator();
        }));
  }
}

_getdouble(String str) {
  var d = double.parse(str);
  return d;
}
