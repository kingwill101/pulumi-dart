// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginGrantPermission {
  /// The name of the permission
  final pulumi.Input<String> name;
  /// The value of the permission
  final pulumi.Input<List<String>> values;

  /// Creates a new [PluginGrantPermission].
  /// [name] The name of the permission
  /// [values] The value of the permission
  const PluginGrantPermission({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory PluginGrantPermission.fromMap(Map<String, dynamic> map) {
    return PluginGrantPermission(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

