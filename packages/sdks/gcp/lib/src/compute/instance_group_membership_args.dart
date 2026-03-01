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
    required pulumi.Output<String> instance,
    required pulumi.Output<String> instanceGroup,
    pulumi.Output<String>? project,
    pulumi.Output<String>? zone,
  }) :
      instance = pulumi.Input.asInput<String>(instance),
      instanceGroup = pulumi.Input.asInput<String>(instanceGroup),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      instance: pulumi.Output.create<String>(map['instance'] as String),
      instanceGroup: pulumi.Output.create<String>(map['instanceGroup'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

