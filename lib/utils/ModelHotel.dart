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
  late List<String> album;


  ModelHotel(String price, String name, String image, String type, String description, List<String> albumImages) {
    this.price    = price;
    this.name = name;
    this.image = image;
    this.type = type;
    this.description = description;
    this.album = albumImages;

  }

}

