// ignore_for_file: unused_element, unnecessary_cast


/// A tag of a saved search.
class Tag {
  /// The tag name.
  final String name;
  /// The tag value.
  final String value;

  /// Creates a new [Tag].
  /// [name] The tag name.
  /// [value] The tag value.
  Tag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory Tag.fromMap(Map<String, dynamic> map) {
    return Tag(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

