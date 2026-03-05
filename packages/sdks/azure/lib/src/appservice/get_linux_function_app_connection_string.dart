// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxFunctionAppConnectionString {
  /// The name which should be used for this Linux Function App.
  final pulumi.Input<String> name;
  /// The type of Managed Service Identity that is configured on this Linux Function App.
  final pulumi.Input<String> type;
  /// The connection string value.
  final pulumi.Input<String> value;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

