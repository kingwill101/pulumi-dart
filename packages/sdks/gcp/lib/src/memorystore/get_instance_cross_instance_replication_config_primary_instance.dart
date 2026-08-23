// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceCrossInstanceReplicationConfigPrimaryInstance {
  /// The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  final pulumi.Input<String> instance;
  /// The unique id of the primary instance.
  final pulumi.Input<String> uid;

  /// Creates a new [GetInstanceCrossInstanceReplicationConfigPrimaryInstance].
  /// [instance] The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  /// [uid] The unique id of the primary instance.
  const GetInstanceCrossInstanceReplicationConfigPrimaryInstance({
    required this.instance,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'uid': uid,
    };
  }

  factory GetInstanceCrossInstanceReplicationConfigPrimaryInstance.fromMap(Map<String, dynamic> map) {
    return GetInstanceCrossInstanceReplicationConfigPrimaryInstance(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
