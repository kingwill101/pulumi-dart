// ignore_for_file: unused_element, unnecessary_cast


/// A tag of a saved search.
class TagResponse {
  /// The tag name.
  final String name;
  /// The tag value.
  final String value;

  /// Creates a new [TagResponse].
  /// [name] The tag name.
  /// [value] The tag value.
  TagResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory TagResponse.fromMap(Map<String, dynamic> map) {
    return TagResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

