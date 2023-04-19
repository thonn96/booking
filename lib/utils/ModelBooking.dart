class ModelBooking {
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


  ModelBooking(String price, String name, String image, String type, String description, List<String> albumImages) {
    this.price    = price;
    this.name = name;
    this.image = image;
    this.type = type;
    this.description = description;
    this.album = albumImages;

  }

}