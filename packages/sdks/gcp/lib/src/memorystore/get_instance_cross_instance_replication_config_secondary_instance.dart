// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceCrossInstanceReplicationConfigSecondaryInstance {
  /// The full resource path of the Nth instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  final pulumi.Input<String> instance;
  /// The unique id of the Nth instance.
  final pulumi.Input<String> uid;

  /// Creates a new [GetInstanceCrossInstanceReplicationConfigSecondaryInstance].
  /// [instance] The full resource path of the Nth instance in the format: projects/{project}/locations/{region}/instance/{instance-id}
  /// [uid] The unique id of the Nth instance.
  GetInstanceCrossInstanceReplicationConfigSecondaryInstance({
    required this.instance,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'uid': uid,
    };
  }

  factory GetInstanceCrossInstanceReplicationConfigSecondaryInstance.fromMap(Map<String, dynamic> map) {
    return GetInstanceCrossInstanceReplicationConfigSecondaryInstance(
      instance: (map['instance'] as String).input(),
      uid: (map['uid'] as String).input(),
    );
  }
}

