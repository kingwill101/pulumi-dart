// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_custom_module_custom_config.dart';

/// {@template pulumi_securitycenter_project_custom_module_project_custom_module_args_doc}
/// The set of arguments for ProjectCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_project_custom_module_project_custom_module_args_doc}
class ProjectCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<ProjectCustomModuleCustomConfig> customConfig;
  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String> displayName;
  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> enablementState;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [project] The ID of the project in which the resource belongs.
  ProjectCustomModuleArgs({
    required this.customConfig,
    required this.displayName,
    required this.enablementState,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig': pulumi.Input.mapInputValue<ProjectCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'displayName': displayName,
      'enablementState': enablementState,
      'project': ?project,
    };
  }

  factory ProjectCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return ProjectCustomModuleArgs(
      customConfig: pulumi.Input.fromValue(ProjectCustomModuleCustomConfig.fromMap((map['customConfig']! as Map).cast<String, dynamic>())),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enablementState: pulumi.Input.fromValue(map['enablementState'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

