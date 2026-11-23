// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_project_feature_config_get_control_project_feature_config_args_doc}
/// Arguments for getControlProjectFeatureConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_project_feature_config_get_control_project_feature_config_args_doc}
class GetControlProjectFeatureConfigArgs {
  /// The ID of the feature configuration, which becomes the final component of its resource name.
  /// The ID must be 1 to 63 characters long, start with a lowercase letter, and contain only
  /// lowercase letters, digits, and dashes. The last character can't be a dash.
  final pulumi.Input<String> featureConfigId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetControlProjectFeatureConfigArgs].
  /// [featureConfigId] The ID of the feature configuration, which becomes the final component of its resource name.
  /// [project] The ID of the project in which the resource belongs.
  const GetControlProjectFeatureConfigArgs({
    required this.featureConfigId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureConfigId': featureConfigId,
      'project': ?project,
    };
  }

  factory GetControlProjectFeatureConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetControlProjectFeatureConfigArgs(
      featureConfigId: pulumi.Input.fromValue(map['featureConfigId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
