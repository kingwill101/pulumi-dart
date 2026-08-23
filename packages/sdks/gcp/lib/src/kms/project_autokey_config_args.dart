// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_project_autokey_config_project_autokey_config_args_doc}
/// The set of arguments for ProjectAutokeyConfig.
/// {@endtemplate}
/// {@macro pulumi_kms_project_autokey_config_project_autokey_config_args_doc}
class ProjectAutokeyConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// How Autokey determines which project to use when provisioning CMEK keys.
  /// Possible values are: `RESOURCE_PROJECT`, `DISABLED`.
  final pulumi.Input<String>? keyProjectResolutionMode;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectAutokeyConfigArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [keyProjectResolutionMode] How Autokey determines which project to use when provisioning CMEK keys.
  /// [project] The ID of the project in which the resource belongs.
  const ProjectAutokeyConfigArgs({
    this.deletionPolicy,
    this.keyProjectResolutionMode,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'keyProjectResolutionMode': ?keyProjectResolutionMode,
      'project': ?project,
    };
  }

  factory ProjectAutokeyConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProjectAutokeyConfigArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyProjectResolutionMode: (() { final guardedValue = map['keyProjectResolutionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
