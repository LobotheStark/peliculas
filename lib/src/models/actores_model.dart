
class Cast {

  List<Actor> actores = new List();

  Cast.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    jsonList.forEach((item) {
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    });
  }

}


class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.order,
    this.profilePath,
  });

  Actor.fromJsonMap(Map<String,dynamic> json) {
    castId = json['cast_id'];
    character = json['character'];
    creditId = json['credit_id'];
    gender = json['gender'];
    id = json['id'];
    name = json['name'];
    order = json['order'];
    profilePath = json['profile_path'];

}

  getfoto() {

    if(profilePath == null) {
      return 'https://lh3.googleusercontent.com/proxy/RMKID_slIEndWcTZIXAyXajlWB0jbZT6o7BVXuPytD1BWhHP8_vivX4s-7uQHUvi9MVFBJxmEyxp2k15dVv6doiAXPvywjI367BttCeFWVkviT8s4G3VqGKle7iCKQkqhA';
    }

    return 'https://image.tmdb.org/t/p/w500/$profilePath';
  }

}