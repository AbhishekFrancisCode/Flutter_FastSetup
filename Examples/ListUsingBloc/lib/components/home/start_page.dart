import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_testing/components/bottemsheet/bottemsheet.dart';
import 'package:food_testing/components/map/map_large.dart';
import 'package:food_testing/model/user_model.dart';
import 'bloc/homepage_bloc_bloc.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Testing"), actions: [
        IconButton(onPressed: () => {}, icon: const Icon(Icons.shopping_cart)),
      ]),
      body: BlocProvider(
        create: (context) => HomepageBlocBloc()..add(LoadingHomePageEvent()),
        child: BlocBuilder<HomepageBlocBloc, HomepageBlocState>(
          builder: (context, state) {
            if (state is HomepageBlocLoaded) {
              final count = state.list.results.length;
              return ListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: count,
                  itemBuilder: (context, index) {
                    final users = state.list;
                    final list = state.list.results[index];
                    return Card(
                      shadowColor: Colors.blueGrey,
                      color: Colors.grey[200],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(list.picture.thumbnail),
                          ),
                          title: Text(list.name.first),
                          subtitle: Text(list.email),
                          onTap: () => _onProductClicked(
                              context, list.login.username, users, index),
                          // trailing: ElevatedButton(
                          //   onPressed: () =>
                          //       Navigator.of(context).push(MaterialPageRoute(
                          //           builder: (context) => MapLarge(
                          //                 _getdouble(list
                          //                     .location.coordinates.latitude),
                          //                 _getdouble(list
                          //                     .location.coordinates.longitude),
                          //               ))),
                          //   child: null,
                          // ),
                        ),
                      ),
                    );
                  });
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  _onProductClicked(
      BuildContext context, String user, User list, int index) async {
    context.read<HomepageBlocBloc>().add(OnClickUserHomePageEvent(user));
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        backgroundColor: Colors.grey[200],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
        context: context,
        builder: (context) => BottemSheet(list, index));
    //Navigate to product
    // final route = getRoute(context, BottemSheet(list));
    // await Navigator.push(context, route);
  }

  static MaterialPageRoute getRoute(
      BuildContext context, StatelessWidget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}

// _getdouble(String str) {
//   var d = double.parse(str);
//   return d;
// }
