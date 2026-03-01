// ignore_for_file: unused_element, unnecessary_cast


class SkuCapability {
  /// The name.
  final String name;
  /// The value.
  final String value;

  /// Creates a new [SkuCapability].
  /// [name] The name.
  /// [value] The value.
  SkuCapability({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory SkuCapability.fromMap(Map<String, dynamic> map) {
    return SkuCapability(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

