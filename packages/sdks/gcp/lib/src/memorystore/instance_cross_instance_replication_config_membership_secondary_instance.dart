// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance {
  /// The full resource path of the secondary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  final pulumi.Input<String>? instance;
  /// Output only. System assigned, unique identifier for the instance.
  final pulumi.Input<String>? uid;

  /// Creates a new [InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance].
  /// [instance] The full resource path of the secondary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  /// [uid] Output only. System assigned, unique identifier for the instance.
  InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance({
    this.instance,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
      'uid': ?uid,
    };
  }

  factory InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance.fromMap(Map<String, dynamic> map) {
    return InstanceCrossInstanceReplicationConfigMembershipSecondaryInstance(
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
    );
  }
}

