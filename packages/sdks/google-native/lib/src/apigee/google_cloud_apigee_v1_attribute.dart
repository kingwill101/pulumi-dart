// ignore_for_file: unused_element, unnecessary_cast


/// Key-value pair to store extra metadata.
class GoogleCloudApigeeV1Attribute {
  /// API key of the attribute.
  final String? name;
  /// Value of the attribute.
  final String? value;

  /// Creates a new [GoogleCloudApigeeV1Attribute].
  /// [name] API key of the attribute.
  /// [value] Value of the attribute.
  GoogleCloudApigeeV1Attribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory GoogleCloudApigeeV1Attribute.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1Attribute(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

