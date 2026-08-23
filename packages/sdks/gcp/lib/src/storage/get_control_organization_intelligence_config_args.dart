// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_organization_intelligence_config_get_control_organization_intelligence_config_args_doc}
/// Arguments for getControlOrganizationIntelligenceConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_organization_intelligence_config_get_control_organization_intelligence_config_args_doc}
class GetControlOrganizationIntelligenceConfigArgs {
  /// Identifier of the GCP Organization. For GCP org, this field should be organization number.
  final pulumi.Input<String> name;

  /// Creates a new [GetControlOrganizationIntelligenceConfigArgs].
  /// [name] Identifier of the GCP Organization. For GCP org, this field should be organization number.
  const GetControlOrganizationIntelligenceConfigArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetControlOrganizationIntelligenceConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
