class Productmodel {
  String? id;
  String? image;
  String? price;
  String? titel;

  Productmodel({this.id, this.image, this.price, this.titel});

  Productmodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    price = json['price'];
    titel = json['titel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['price'] = this.price;
    data['titel'] = this.titel;
    return data;
  }
}