// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceGroupMembership resources.
class InstanceGroupMembershipState {
  /// An instance being added to the InstanceGroup
  final pulumi.Input<String>? instance;

  /// Represents an Instance Group resource name that the instance belongs to.
  final pulumi.Input<String>? instanceGroup;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the zone where the instance group resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupMembershipState].
  /// [instance] An instance being added to the InstanceGroup
  /// [instanceGroup] Represents an Instance Group resource name that the instance belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the instance group resides.
  InstanceGroupMembershipState({
    this.instance,
    this.instanceGroup,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
      'instanceGroup': ?instanceGroup,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory InstanceGroupMembershipState.fromMap(Map<String, dynamic> map) {
    return InstanceGroupMembershipState(
      instance: (() {
        final guardedValue = map['instance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceGroup: (() {
        final guardedValue = map['instanceGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
