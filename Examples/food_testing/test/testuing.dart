// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:food_testing/components/bottemsheet/bottemsheet.dart';
// import 'package:food_testing/model/user_model.dart';

// import 'bloc/homepage_bloc_bloc.dart';

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Testing"), actions: [
//         IconButton(onPressed: () => {}, icon: const Icon(Icons.shopping_cart)),
//       ]),
//       body: BlocProvider(
//         create: (context) => HomepageBlocBloc()..add(LoadingHomePageEvent()),
//         child: BlocBuilder<HomepageBlocBloc, HomepageBlocState>(
//           builder: (context, state) {
//             if (state is HomepageBlocLoaded) {
//               final count = state.list.results.length;
//               return ListView.builder(
//                   itemCount: count,
//                   itemBuilder: (context, index) {
//                     final users = state.list;
//                     final list = state.list.results[index];
//                     return Card(
//                       child: ListTile(
//                         leading: CircleAvatar(
//                           child: Text(list.dob.age.toString()),
//                           backgroundColor: Colors.purple,
//                         ),
//                         title: Text(list.name.first),
//                         subtitle: Text(list.email),
//                         onTap: () => _onProductClicked(context, list.login.username ,users),
//                         ),
//                       );
//                   });
//             }
//             return const CircularProgressIndicator();
//           },
//         ),
//       ),
//     );
//   }

//     _onProductClicked(BuildContext context, String user, User list) async {
//     //Navigate to product
//     final route = getRoute(context, BottemSheet(list));
//     await Navigator.push(context, route);
//     context.read<HomepageBlocBloc>().add(OnClickUserHomePageEvent(user));
//   }

//     static MaterialPageRoute getRoute(
//       BuildContext context, StatelessWidget widget) {
//     return MaterialPageRoute(builder: (context) => widget);
//   }
// }
