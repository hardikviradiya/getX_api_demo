class QuotesResponse {
  String? sentence;
  Character? character;

  QuotesResponse({this.sentence, this.character});

  QuotesResponse.fromJson(Map<String, dynamic> json) {
    sentence = json['sentence'];
    character = json['character'] != null
        ? Character.fromJson(json['character'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sentence'] = sentence;
    if (character != null) {
      data['character'] = character!.toJson();
    }
    return data;
  }
}

class Character {
  String? name;
  String? slug;
  House? house;

  Character({this.name, this.slug, this.house});

  Character.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    house = json['house'] != null ? House.fromJson(json['house']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['slug'] = slug;
    if (house != null) {
      data['house'] = house!.toJson();
    }
    return data;
  }
}

class House {
  String? name;
  String? slug;

  House({this.name, this.slug});

  House.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['slug'] = slug;
    return data;
  }
}
