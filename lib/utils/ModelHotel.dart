class ModelHotel {
  late String id,
      name,
      image,
      price,
      type,
      rate,
      location,
      is_favorited,
      album_images,
      description;

  ModelHotel(String price, String name, String image, String type, String description) {
    this.price    = price;
    this.name = name;
    this.image = image;
    this.type = type;
    this.description = description;

  }

}

