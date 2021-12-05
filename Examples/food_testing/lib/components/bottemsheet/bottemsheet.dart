import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_testing/components/bottemsheet/bloc/bottomsheet_bloc.dart';
import 'package:food_testing/model/user_model.dart';
import 'package:google_fonts/google_fonts.dart';

class BottemSheet extends StatelessWidget {
  final User users;
  BottemSheet(this.users);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => BottomsheetBloc()..add(OnLoadBottomSheet(users)),
        child: BlocBuilder<BottomsheetBloc, BottomsheetState>(
            builder: (context, state) {
          if (state is BottomsheetLoaded) {
            var userDetail = state.user.results[0];
            return Scaffold(
              appBar: AppBar(
                title: const Text("Description"),
                actions: const [],),
              body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                margin:const EdgeInsets.all(20),
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(userDetail.picture.large),
                        ),
                        const SizedBox(height: 10),
                        Text("${userDetail.name.first}${userDetail.name.last}",
                        style: GoogleFonts.mcLaren(
                          fontSize: 30,
                        ) 
                        ),
                      ],
                    ),
                  ],
                )
              ),
            );
          }
          return const CircularProgressIndicator();
        }));
  }
}
