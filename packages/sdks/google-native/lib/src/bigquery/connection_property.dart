// ignore_for_file: unused_element, unnecessary_cast


class ConnectionProperty {
  /// [Required] Name of the connection property to set.
  final String? key;
  /// [Required] Value of the connection property.
  final String? value;

  /// Creates a new [ConnectionProperty].
  /// [key] [Required] Name of the connection property to set.
  /// [value] [Required] Value of the connection property.
  ConnectionProperty({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory ConnectionProperty.fromMap(Map<String, dynamic> map) {
    return ConnectionProperty(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

