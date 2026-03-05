// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_folder_intelligence_config_get_control_folder_intelligence_config_args_doc}
/// Arguments for getControlFolderIntelligenceConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_folder_intelligence_config_get_control_folder_intelligence_config_args_doc}
class GetControlFolderIntelligenceConfigArgs {
  /// The number of GCP folder.
  final pulumi.Input<String> name;

  /// Creates a new [GetControlFolderIntelligenceConfigArgs].
  /// [name] The number of GCP folder.
  GetControlFolderIntelligenceConfigArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetControlFolderIntelligenceConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

