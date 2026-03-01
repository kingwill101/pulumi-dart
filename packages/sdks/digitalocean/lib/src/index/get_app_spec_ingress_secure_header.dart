// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecIngressSecureHeader {
  /// The name of the environment variable.
  final String key;
  /// The threshold for the type of the warning.
  final String value;

  /// Creates a new [GetAppSpecIngressSecureHeader].
  /// [key] The name of the environment variable.
  /// [value] The threshold for the type of the warning.
  GetAppSpecIngressSecureHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetAppSpecIngressSecureHeader.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressSecureHeader(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

