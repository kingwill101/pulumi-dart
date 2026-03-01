// ignore_for_file: unused_element, unnecessary_cast


class SpringbootappsPropertiesResponseMiscs {
  /// The miscs. key.
  final String key;
  /// The miscs. value.
  final String? value;

  /// Creates a new [SpringbootappsPropertiesResponseMiscs].
  /// [key] The miscs. key.
  /// [value] The miscs. value.
  SpringbootappsPropertiesResponseMiscs({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory SpringbootappsPropertiesResponseMiscs.fromMap(Map<String, dynamic> map) {
    return SpringbootappsPropertiesResponseMiscs(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

