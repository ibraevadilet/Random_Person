class Random_models {
  String? gender;
  String? title;
  String? first;
  String? last;
  int? number;
  String? name;
  String? city;
  String? state;
  String? country;
  int? postcode;
  String? latitude;
  String? longitude;
  String? offset;
  String? description;
  String? email;
  String? uuid;
  String? username;
  String? password;
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;
  String? date;
  int? age;
  String? phone;
  String? cell;
  String? value;
  String? large;
  String? medium;
  String? thumbnail;
  String? seed;
  int? results;
  int? page;
  String? version;

  Random_models(
      {this.gender,
      this.title,
      this.first,
      this.last,
      this.number,
      this.name,
      this.city,
      this.state,
      this.country,
      this.postcode,
      this.latitude,
      this.longitude,
      this.offset,
      this.description,
      this.email,
      this.uuid,
      this.username,
      this.password,
      this.salt,
      this.md5,
      this.sha1,
      this.sha256,
      this.date,
      this.age,
      this.phone,
      this.cell,
      this.value,
      this.large,
      this.medium,
      this.thumbnail,
      this.seed,
      this.results,
      this.page,
      this.version});

  Random_models.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    title = json['title'];
    first = json['first'];
    last = json['last'];
    number = json['number'];
    name = json['name'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    offset = json['offset'];
    description = json['description'];
    email = json['email'];
    uuid = json['uuid'];
    username = json['username'];
    password = json['password'];
    salt = json['salt'];
    md5 = json['md5'];
    sha1 = json['sha1'];
    sha256 = json['sha256'];
    date = json['date'];
    age = json['age'];
    phone = json['phone'];
    cell = json['cell'];
    value = json['value'];
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
    seed = json['seed'];
    results = json['results'];
    page = json['page'];
    version = json['version'];
  }

  get login => null;

  get registered_date => null;

  get registered_age => null;

  get id_name => null;

  get id_value => null;

  get street => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    data['title'] = this.title;
    data['first'] = this.first;
    data['last'] = this.last;
    data['number'] = this.number;
    data['name'] = this.name;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['postcode'] = this.postcode;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['offset'] = this.offset;
    data['description'] = this.description;
    data['email'] = this.email;
    data['uuid'] = this.uuid;
    data['username'] = this.username;
    data['password'] = this.password;
    data['salt'] = this.salt;
    data['md5'] = this.md5;
    data['sha1'] = this.sha1;
    data['sha256'] = this.sha256;
    data['date'] = this.date;
    data['age'] = this.age;
    data['phone'] = this.phone;
    data['cell'] = this.cell;
    data['value'] = this.value;
    data['large'] = this.large;
    data['medium'] = this.medium;
    data['thumbnail'] = this.thumbnail;
    data['seed'] = this.seed;
    data['results'] = this.results;
    data['page'] = this.page;
    data['version'] = this.version;
    return data;
  }
}
