// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationFeatureCustomFilter {
  /// The name of the parameter, this could be any string.
  final pulumi.Input<String> name;
  /// One or more `parameters` blocks as defined below.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [ConfigurationFeatureCustomFilter].
  /// [name] The name of the parameter, this could be any string.
  /// [parameters] One or more `parameters` blocks as defined below.
  const ConfigurationFeatureCustomFilter({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory ConfigurationFeatureCustomFilter.fromMap(Map<String, dynamic> map) {
    return ConfigurationFeatureCustomFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
