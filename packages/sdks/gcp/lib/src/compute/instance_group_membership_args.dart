// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_instance_group_membership_instance_group_membership_args_doc}
/// The set of arguments for InstanceGroupMembership.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_group_membership_instance_group_membership_args_doc}
class InstanceGroupMembershipArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An instance being added to the InstanceGroup
  final pulumi.Input<String> instance;
  /// Represents an Instance Group resource name that the instance belongs to.
  final pulumi.Input<String> instanceGroup;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A reference to the zone where the instance group resides.
  final pulumi.Input<String?>? zone;

  /// Creates a new [InstanceGroupMembershipArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instance] An instance being added to the InstanceGroup
  /// [instanceGroup] Represents an Instance Group resource name that the instance belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the instance group resides.
  const InstanceGroupMembershipArgs({
    this.deletionPolicy,
    required this.instance,
    required this.instanceGroup,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'instance': instance,
      'instanceGroup': instanceGroup,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory InstanceGroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupMembershipArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      instanceGroup: pulumi.Input.fromValue(map['instanceGroup'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
