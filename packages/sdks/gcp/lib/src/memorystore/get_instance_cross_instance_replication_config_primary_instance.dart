// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceCrossInstanceReplicationConfigPrimaryInstance {
  /// The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  final String instance;
  /// The unique id of the primary instance.
  final String uid;

  /// Creates a new [GetInstanceCrossInstanceReplicationConfigPrimaryInstance].
  /// [instance] The full resource path of the primary instance in the format: projects/{project}/locations/{region}/instances/{instance-id}
  /// [uid] The unique id of the primary instance.
  GetInstanceCrossInstanceReplicationConfigPrimaryInstance({
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
      instance: map['instance'] as String,
      uid: map['uid'] as String,
    );
  }
}

