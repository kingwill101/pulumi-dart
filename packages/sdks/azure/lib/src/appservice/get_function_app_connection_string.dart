// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionAppConnectionString {
  /// The name of the Function App resource.
  final pulumi.Input<String> name;
  /// The identity type of the Managed Identity assigned to the Function App.
  final pulumi.Input<String> type;
  /// The value for the Connection String.
  final pulumi.Input<String> value;

  /// Creates a new [GetFunctionAppConnectionString].
  /// [name] The name of the Function App resource.
  /// [type] The identity type of the Managed Identity assigned to the Function App.
  /// [value] The value for the Connection String.
  const GetFunctionAppConnectionString({
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

  factory GetFunctionAppConnectionString.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppConnectionString(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

