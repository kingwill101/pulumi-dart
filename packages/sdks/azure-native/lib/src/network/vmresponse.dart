// ignore_for_file: unused_element, unnecessary_cast


/// Describes a Virtual Machine.
class VMResponse {
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [VMResponse].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [tags] Resource tags.
  /// [type] Resource type.
  VMResponse({
    this.id,
    this.location,
    required this.name,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': name,
      'tags': ?tags,
      'type': type,
    };
  }

  factory VMResponse.fromMap(Map<String, dynamic> map) {
    return VMResponse(
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

