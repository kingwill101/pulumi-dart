// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppConnectionString {
  /// The name of this Windows Web App.
  final String name;
  /// The Azure Storage Type.
  final String type;
  /// The Connection String value.
  final String value;

  /// Creates a new [GetWindowsWebAppConnectionString].
  /// [name] The name of this Windows Web App.
  /// [type] The Azure Storage Type.
  /// [value] The Connection String value.
  GetWindowsWebAppConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
    };
  }

  factory GetWindowsWebAppConnectionString.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

