// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppConnectionString {
  /// The name of this Windows Web App.
  final pulumi.Input<String> name;
  /// The Azure Storage Type.
  final pulumi.Input<String> type;
  /// The Connection String value.
  final pulumi.Input<String> value;

  /// Creates a new [GetWindowsWebAppConnectionString].
  /// [name] The name of this Windows Web App.
  /// [type] The Azure Storage Type.
  /// [value] The Connection String value.
  const GetWindowsWebAppConnectionString({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
