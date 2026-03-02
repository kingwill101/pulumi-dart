// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_project_intelligence_config_get_control_project_intelligence_config_args_doc}
/// Arguments for getControlProjectIntelligenceConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_project_intelligence_config_get_control_project_intelligence_config_args_doc}
class GetControlProjectIntelligenceConfigArgs {
  /// The name or number of the GCP project.
  final pulumi.Input<String> name;

  /// Creates a new [GetControlProjectIntelligenceConfigArgs].
  /// [name] The name or number of the GCP project.
  GetControlProjectIntelligenceConfigArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetControlProjectIntelligenceConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigArgs(
      name: (map['name'] as String).input(),
    );
  }
}

