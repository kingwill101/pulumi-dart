// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxFunctionAppConnectionString {
  /// The name which should be used for this Linux Function App.
  final String name;
  /// The type of Managed Service Identity that is configured on this Linux Function App.
  final String type;
  /// The connection string value.
  final String value;

  /// Creates a new [GetLinuxFunctionAppConnectionString].
  /// [name] The name which should be used for this Linux Function App.
  /// [type] The type of Managed Service Identity that is configured on this Linux Function App.
  /// [value] The connection string value.
  GetLinuxFunctionAppConnectionString({
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

  factory GetLinuxFunctionAppConnectionString.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

