// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceCrossInstanceReplicationConfigPrimaryInstance {
  /// The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  final pulumi.Input<String?>? instance;
  /// (Output)
  /// The unique id of the primary instance.
  final pulumi.Input<String?>? uid;

  /// Creates a new [InstanceCrossInstanceReplicationConfigPrimaryInstance].
  /// [instance] The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  /// [uid] (Output)
  const InstanceCrossInstanceReplicationConfigPrimaryInstance({
    this.instance,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
      'uid': ?uid,
    };
  }

  factory InstanceCrossInstanceReplicationConfigPrimaryInstance.fromMap(Map<String, dynamic> map) {
    return InstanceCrossInstanceReplicationConfigPrimaryInstance(
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
