// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_project_cloud_armor_tier_project_cloud_armor_tier_args_doc}
/// The set of arguments for ProjectCloudArmorTier.
/// {@endtemplate}
/// {@macro pulumi_compute_project_cloud_armor_tier_project_cloud_armor_tier_args_doc}
class ProjectCloudArmorTierArgs {
  /// Managed protection tier to be set.
  /// Possible values are: `CA_STANDARD`, `CA_ENTERPRISE_PAYGO`, `CA_ENTERPRISE_ANNUAL`.
  final pulumi.Input<String> cloudArmorTier;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectCloudArmorTierArgs].
  /// [cloudArmorTier] Managed protection tier to be set.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  const ProjectCloudArmorTierArgs({
    required this.cloudArmorTier,
    this.deletionPolicy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudArmorTier': cloudArmorTier,
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
    };
  }

  factory ProjectCloudArmorTierArgs.fromMap(Map<String, dynamic> map) {
    return ProjectCloudArmorTierArgs(
      cloudArmorTier: pulumi.Input.fromValue(map['cloudArmorTier'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
