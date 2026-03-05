// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a parameter in fabric settings of the cluster.
class SettingsParameterDescriptionResponse {
  /// The parameter name of fabric setting.
  final pulumi.Input<String> name;
  /// The parameter value of fabric setting.
  final pulumi.Input<String> value;

  /// Creates a new [SettingsParameterDescriptionResponse].
  /// [name] The parameter name of fabric setting.
  /// [value] The parameter value of fabric setting.
  SettingsParameterDescriptionResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory SettingsParameterDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return SettingsParameterDescriptionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

