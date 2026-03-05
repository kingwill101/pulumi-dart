// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_parameter_description_response.dart';

/// Describes a section in the fabric settings of the cluster.
class SettingsSectionDescriptionResponse {
  /// The section name of the fabric settings.
  final pulumi.Input<String> name;
  /// The collection of parameters in the section.
  final pulumi.Input<List<SettingsParameterDescriptionResponse>> parameters;

  /// Creates a new [SettingsSectionDescriptionResponse].
  /// [name] The section name of the fabric settings.
  /// [parameters] The collection of parameters in the section.
  SettingsSectionDescriptionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<List<SettingsParameterDescriptionResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<SettingsParameterDescriptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SettingsSectionDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return SettingsSectionDescriptionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<SettingsParameterDescriptionResponse>(map['parameters']!, (value) => SettingsParameterDescriptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

