// ignore_for_file: unused_element, unnecessary_cast


class CustomLocationAuthentication {
  /// Specifies the type of authentication.
  final String? type;
  /// Specifies the value of authentication.
  final String value;

  /// Creates a new [CustomLocationAuthentication].
  /// [type] Specifies the type of authentication.
  /// [value] Specifies the value of authentication.
  CustomLocationAuthentication({
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': value,
    };
  }

  factory CustomLocationAuthentication.fromMap(Map<String, dynamic> map) {
    return CustomLocationAuthentication(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] as String,
    );
  }
}

