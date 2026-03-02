// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_parameter_description.dart';

/// Describes a section in the fabric settings of the cluster.
class SettingsSectionDescription {
  /// The section name of the fabric settings.
  final pulumi.Input<String> name;
  /// The collection of parameters in the section.
  final pulumi.Input<List<SettingsParameterDescription>> parameters;

  /// Creates a new [SettingsSectionDescription].
  /// [name] The section name of the fabric settings.
  /// [parameters] The collection of parameters in the section.
  SettingsSectionDescription({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<List<SettingsParameterDescription>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<SettingsParameterDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SettingsSectionDescription.fromMap(Map<String, dynamic> map) {
    return SettingsSectionDescription(
      name: (map['name'] as String).input(),
      parameters: (pulumi.Input.decodeList<SettingsParameterDescription>(map['parameters'], (value) => SettingsParameterDescription.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

