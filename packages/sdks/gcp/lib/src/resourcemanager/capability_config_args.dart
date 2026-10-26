// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_capability_config_capability_config_args_doc}
/// The set of arguments for CapabilityConfig.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_capability_config_capability_config_args_doc}
class CapabilityConfigArgs {
  /// User-specified identifier of the capability config. Must be 6 to 30 characters,
  /// and contain only lowercase letters, numbers, and hyphens.
  final pulumi.Input<String> capabilityConfigId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-defined name for the capability config. Must be between 4 and 30 characters.
  final pulumi.Input<String?>? displayName;
  /// The management project for the capability config. If unspecified, a project will be created automatically.
  /// Must be specified for project-scoped capability config.
  /// Format: `projects/{project_number}`.
  final pulumi.Input<String?>? managementProject;
  /// The parent resource in which to create the capability config.
  /// Format: `folders/{folder_id}`, `organizations/{organization_id}`, or `projects/{project_number}`.
  final pulumi.Input<String> parent;
  /// The capabilities enabled for the resource and its sub-tree.
  /// Possible values: "AGENT_MANAGEMENT".
  final pulumi.Input<List<String>> types;

  /// Creates a new [CapabilityConfigArgs].
  /// [capabilityConfigId] User-specified identifier of the capability config. Must be 6 to 30 characters,
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User-defined name for the capability config. Must be between 4 and 30 characters.
  /// [managementProject] The management project for the capability config. If unspecified, a project will be created automatically.
  /// [parent] The parent resource in which to create the capability config.
  /// [types] The capabilities enabled for the resource and its sub-tree.
  const CapabilityConfigArgs({
    required this.capabilityConfigId,
    this.deletionPolicy,
    this.displayName,
    this.managementProject,
    required this.parent,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilityConfigId': capabilityConfigId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'managementProject': ?managementProject,
      'parent': parent,
      'types': types,
    };
  }

  factory CapabilityConfigArgs.fromMap(Map<String, dynamic> map) {
    return CapabilityConfigArgs(
      capabilityConfigId: pulumi.Input.fromValue(map['capabilityConfigId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementProject: (() { final guardedValue = map['managementProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      types: pulumi.Input.fromValue((map['types'] as List).cast<String>()),
    );
  }
}
