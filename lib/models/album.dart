class Album {
  final int userId;
  final int id;
  final String title;

  Album({required this.userId, required this.id, required this.title});

  // factory constructor commonly combination with named constructor -> to create object based on external parameters, such as decoding JSON data
  // fromJson method is designed to convert JSON data into Dart objects.
  // JSON data is often represented as a key-value pair
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        userId: json['userId'] as int,
        id: json['id'] as int,
        title: json['title'] as String);
  }
  // Using the Map<String, dynamic> parameter provides type safety and control over the mapping process. The method can explicitly define how each property of the Album class is mapped from the corresponding key in the JSON data.
// the ((as)) int assertions ensure that the values retrieved from the JSON map are ((cast to)) the expected types (int for userId and id, and String for title).
}
