// To parse this JSON data, do
//
//     final Users = UsersFromJson(jsonString);

import 'dart:convert';

Users UsersFromJson(String str) => Users.fromJson(json.decode(str));

String UsersToJson(Users data) => json.encode(data.toJson());

class Users {
    Users({
       required this.results,
       required this.info,
    });

    List<Result> results;
    Info info;

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        info: Info.fromJson(json["info"]),
    );

    Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "info": info.toJson(),
    };
}

class Info {
    Info({
      required this.seed,
       required this.results,
       required this.page,
       required this.version,
    });

    String seed;
    int results;
    int page;
    String version;

    factory Info.fromJson(Map<String, dynamic> json) => Info(
        seed: json["seed"],
        results: json["results"],
        page: json["page"],
        version: json["version"],
    );

    Map<String, dynamic> toJson() => {
        "seed": seed,
        "results": results,
        "page": page,
        "version": version,
    };
}

class Result {
    Result({
       required this.gender,
       required this.name,
       required this.location,
       required this.email,
       required this.login,
       required this.dob,
       required this.registered,
       required this.phone,
       required this.cell,
       required  this.id,
       required this.picture,
       required this.nat,
    });

    String gender;
    Name name;
    Location location;
    String email;
    Login login;
    Dob dob;
    Dob registered;
    String phone;
    String cell;
    Id id;
    Picture picture;
    String nat;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        gender: json["gender"],
        name: Name.fromJson(json["name"]),
        location: Location.fromJson(json["location"]),
        email: json["email"],
        login: Login.fromJson(json["login"]),
        dob: Dob.fromJson(json["dob"]),
        registered: Dob.fromJson(json["registered"]),
        phone: json["phone"],
        cell: json["cell"],
        id: Id.fromJson(json["id"]),
        picture: Picture.fromJson(json["picture"]),
        nat: json["nat"],
    );

    Map<String, dynamic> toJson() => {
        "gender": gender,
        "name": name.toJson(),
        "location": location.toJson(),
        "email": email,
        "login": login.toJson(),
        "dob": dob.toJson(),
        "registered": registered.toJson(),
        "phone": phone,
        "cell": cell,
        "id": id.toJson(),
        "picture": picture.toJson(),
        "nat": nat,
    };
}

class Dob {
    Dob({
       required this.date,
       required this.age,
    });

    DateTime date;
    int age;

    factory Dob.fromJson(Map<String, dynamic> json) => Dob(
        date: DateTime.parse(json["date"]),
        age: json["age"],
    );

    Map<String, dynamic> toJson() => {
        "date": date.toIso8601String(),
        "age": age,
    };
}

class Id {
    Id({
       required this.name,
       required this.value,
    });

    String name;
    String value;

    factory Id.fromJson(Map<String, dynamic> json) => Id(
        name: json["name"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
    };
}

class Location {
    Location({
       required this.street,
       required this.city,
       required this.state,
       required this.country,
       required this.postcode,
       required this.coordinates,
       required this.timezone,
    });

    Street street;
    String city;
    String state;
    String country;
    int postcode;
    Coordinates coordinates;
    Timezone timezone;

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        street: Street.fromJson(json["street"]),
        city: json["city"],
        state: json["state"],
        country: json["country"],
        postcode: json["postcode"],
        coordinates: Coordinates.fromJson(json["coordinates"]),
        timezone: Timezone.fromJson(json["timezone"]),
    );

    Map<String, dynamic> toJson() => {
        "street": street.toJson(),
        "city": city,
        "state": state,
        "country": country,
        "postcode": postcode,
        "coordinates": coordinates.toJson(),
        "timezone": timezone.toJson(),
    };
}

class Coordinates {
    Coordinates({
       required this.latitude,
       required this.longitude,
    });

    String latitude;
    String longitude;

    factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        latitude: json["latitude"],
        longitude: json["longitude"],
    );

    Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
    };
}

class Street {
    Street({
       required this.number,
       required this.name,
    });

    int number;
    String name;

    factory Street.fromJson(Map<String, dynamic> json) => Street(
        number: json["number"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "number": number,
        "name": name,
    };
}

class Timezone {
    Timezone({
       required this.offset,
       required this.description,
    });

    String offset;
    String description;

    factory Timezone.fromJson(Map<String, dynamic> json) => Timezone(
        offset: json["offset"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "offset": offset,
        "description": description,
    };
}

class Login {
    Login({
       required this.uuid,
       required this.username,
       required this.password,
       required this.salt,
       required this.md5,
       required this.sha1,
       required this.sha256,
    });

    String uuid;
    String username;
    String password;
    String salt;
    String md5;
    String sha1;
    String sha256;

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        uuid: json["uuid"],
        username: json["username"],
        password: json["password"],
        salt: json["salt"],
        md5: json["md5"],
        sha1: json["sha1"],
        sha256: json["sha256"],
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "username": username,
        "password": password,
        "salt": salt,
        "md5": md5,
        "sha1": sha1,
        "sha256": sha256,
    };
}

class Name {
    Name({
       required this.title,
       required this.first,
       required this.last,
    });

    String title;
    String first;
    String last;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        title: json["title"],
        first: json["first"],
        last: json["last"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "first": first,
        "last": last,
    };
}

class Picture {
    Picture({
       required this.large,
       required this.medium,
       required this.thumbnail,
    });

    String large;
    String medium;
    String thumbnail;

    factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
    };
}











// // To parse this JSON data, do
// //
// //     final User = UserFromJson(jsonString);

// import 'dart:convert';

// List<User> UserFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

// String UserToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class User {
//   User({
//     this.id = 0,
//     this.name = '',
//     this.username = '',
//     this.email = '',
//     this.address = const [],
//     this.phone = '',
//     this.website = '',
//     this.company = const [],
//   });

//   int id;
//   String name;
//   String username;
//   String email;
//   List<Address> address;
//   String phone;
//   String website;
//   List<Company> company;

//   factory User.fromJson(Map<String, dynamic> json) {
//     final jsonAddrList = json["addresses"] as List;
//     final _addresses = jsonAddrList.map((e) => Address.fromJson(e)).toList();
//     final jsonCompList = json["company"] as List;
//     final _company = jsonCompList.map((e) => Company.fromJson(e)).toList();
//     return User(
//       id: json["id"],
//       name: json["name"],
//       username: json["username"],
//       email: json["email"],
//       address: _addresses,
//       phone: json["phone"],
//       website: json["website"],
//       company: _company,
//     );
//   }
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "username": username,
//         "email": email,
//         "phone": phone,
//         "website": website,
//       };
// }

// class Address {
//   Address({
//     this.street = '',
//     this.suite = '',
//     this.city = '',
//     this.zipcode = '',
//     this.geo = const [],
//   });

//   String street;
//   String suite;
//   String city;
//   String zipcode;
//   List<Geo> geo;

//   factory Address.fromJson(Map<String, dynamic> json) {
//     final jsonGeoList = json["addresses"] as List;
//     final _geo = jsonGeoList.map((e) => Geo.fromJson(e)).toList();
//     return Address(
//       street: json["street"],
//       suite: json["suite"],
//       city: json["city"],
//       zipcode: json["zipcode"],
//       geo: _geo,
//     );
//   }
//   Map<String, dynamic> toJson() => {
//         "street": street,
//         "suite": suite,
//         "city": city,
//         "zipcode": zipcode,
//       };
// }

// class Geo {
//   Geo({
//     this.lat = '',
//     this.lng = '',
//   });

//   String lat;
//   String lng;

//   factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//         lat: json["lat"],
//         lng: json["lng"],
//       );

//   Map<String, dynamic> toJson() => {
//         "lat": lat,
//         "lng": lng,
//       };
// }

// class Company {
//   Company({
//     this.name = '',
//     this.catchPhrase = '',
//     this.bs = '',
//   });

//   String name;
//   String catchPhrase;
//   String bs;

//   factory Company.fromJson(Map<String, dynamic> json) => Company(
//         name: json["name"],
//         catchPhrase: json["catchPhrase"],
//         bs: json["bs"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "catchPhrase": catchPhrase,
//         "bs": bs,
//       };
// }
