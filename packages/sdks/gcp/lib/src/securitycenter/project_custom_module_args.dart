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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
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
  final pulumi.Input<String?>? project;

  /// Creates a new [ProjectCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [project] The ID of the project in which the resource belongs.
  const ProjectCustomModuleArgs({
    required this.customConfig,
    this.deletionPolicy,
    required this.displayName,
    required this.enablementState,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig': pulumi.Input.mapInputValue<ProjectCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'enablementState': enablementState,
      'project': ?project,
    };
  }

  factory ProjectCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return ProjectCustomModuleArgs(
      customConfig: pulumi.Input.fromValue(ProjectCustomModuleCustomConfig.fromMap((map['customConfig']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enablementState: pulumi.Input.fromValue(map['enablementState'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
