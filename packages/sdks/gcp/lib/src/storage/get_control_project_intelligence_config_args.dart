// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_project_intelligence_config_get_control_project_intelligence_config_args_doc}
/// Arguments for getControlProjectIntelligenceConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_project_intelligence_config_get_control_project_intelligence_config_args_doc}
class GetControlProjectIntelligenceConfigArgs {
  /// Identifier of the GCP project. For GCP project, this field can be project name or project number.
  final pulumi.Input<String> name;

  /// Creates a new [GetControlProjectIntelligenceConfigArgs].
  /// [name] Identifier of the GCP project. For GCP project, this field can be project name or project number.
  const GetControlProjectIntelligenceConfigArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetControlProjectIntelligenceConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
