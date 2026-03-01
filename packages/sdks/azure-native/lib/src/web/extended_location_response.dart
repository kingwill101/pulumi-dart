// ignore_for_file: unused_element, unnecessary_cast


/// Extended Location.
class ExtendedLocationResponse {
  /// Name of extended location.
  final String? name;
  /// Type of extended location.
  final String type;

  /// Creates a new [ExtendedLocationResponse].
  /// [name] Name of extended location.
  /// [type] Type of extended location.
  ExtendedLocationResponse({
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': type,
    };
  }

  factory ExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationResponse(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
    );
  }
}

