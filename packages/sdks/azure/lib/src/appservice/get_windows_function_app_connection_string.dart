// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppConnectionString {
  /// The name of this Windows Function App.
  final String name;
  /// The type of Managed Service Identity that is configured on this Windows Function App.
  final String type;
  /// The connection string value.
  final String value;

  /// Creates a new [GetWindowsFunctionAppConnectionString].
  /// [name] The name of this Windows Function App.
  /// [type] The type of Managed Service Identity that is configured on this Windows Function App.
  /// [value] The connection string value.
  GetWindowsFunctionAppConnectionString({
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

  factory GetWindowsFunctionAppConnectionString.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

