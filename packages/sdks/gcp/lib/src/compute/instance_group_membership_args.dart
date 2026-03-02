// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_instance_group_membership_instance_group_membership_args_doc}
/// The set of arguments for InstanceGroupMembership.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_group_membership_instance_group_membership_args_doc}
class InstanceGroupMembershipArgs {
  /// An instance being added to the InstanceGroup
  final pulumi.Input<String> instance;
  /// Represents an Instance Group resource name that the instance belongs to.
  final pulumi.Input<String> instanceGroup;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the zone where the instance group resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupMembershipArgs].
  /// [instance] An instance being added to the InstanceGroup
  /// [instanceGroup] Represents an Instance Group resource name that the instance belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the instance group resides.
  InstanceGroupMembershipArgs({
    required this.instance,
    required this.instanceGroup,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'instanceGroup': instanceGroup,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory InstanceGroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupMembershipArgs(
      instance: (map['instance'] as String).input(),
      instanceGroup: (map['instanceGroup'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

