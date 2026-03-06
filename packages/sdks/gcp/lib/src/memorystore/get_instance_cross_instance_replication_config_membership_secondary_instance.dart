// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance {
  /// The full resource path of the secondary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  final pulumi.Input<String> instance;
  /// The unique id of the secondary instance.
  final pulumi.Input<String> uid;

  /// Creates a new [GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance].
  /// [instance] The full resource path of the secondary instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  /// [uid] The unique id of the secondary instance.
  const GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance({
    required this.instance,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'uid': uid,
    };
  }

  factory GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance.fromMap(Map<String, dynamic> map) {
    return GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}

