// ignore_for_file: unused_element, unnecessary_cast


/// Extended location of the resource.
class ExtendedLocationResponse {
  /// The name of the extended location.
  final String name;
  /// The extended location type.
  final String type;

  /// Creates a new [ExtendedLocationResponse].
  /// [name] The name of the extended location.
  /// [type] The extended location type.
  ExtendedLocationResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationResponse(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

