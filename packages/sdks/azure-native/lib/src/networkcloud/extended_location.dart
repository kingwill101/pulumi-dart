// ignore_for_file: unused_element, unnecessary_cast


class ExtendedLocation {
  /// The resource ID of the extended location on which the resource will be created.
  final String name;
  /// The extended location type, for example, CustomLocation.
  final String type;

  /// Creates a new [ExtendedLocation].
  /// [name] The resource ID of the extended location on which the resource will be created.
  /// [type] The extended location type, for example, CustomLocation.
  ExtendedLocation({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ExtendedLocation.fromMap(Map<String, dynamic> map) {
    return ExtendedLocation(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

