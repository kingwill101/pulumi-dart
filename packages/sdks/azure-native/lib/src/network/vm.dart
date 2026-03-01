// ignore_for_file: unused_element, unnecessary_cast


/// Describes a Virtual Machine.
class VM {
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource tags.
  final Map<String, String>? tags;

  /// Creates a new [VM].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [tags] Resource tags.
  VM({
    this.id,
    this.location,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'tags': ?tags,
    };
  }

  factory VM.fromMap(Map<String, dynamic> map) {
    return VM(
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

