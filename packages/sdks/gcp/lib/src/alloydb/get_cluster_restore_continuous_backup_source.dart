// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterRestoreContinuousBackupSource {
  /// The name of the source cluster that this cluster is restored from.
  final pulumi.Input<String> cluster;
  /// The point in time that this cluster is restored to, in RFC 3339 format.
  final pulumi.Input<String> pointInTime;

  /// Creates a new [GetClusterRestoreContinuousBackupSource].
  /// [cluster] The name of the source cluster that this cluster is restored from.
  /// [pointInTime] The point in time that this cluster is restored to, in RFC 3339 format.
  const GetClusterRestoreContinuousBackupSource({
    required this.cluster,
    required this.pointInTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'pointInTime': pointInTime,
    };
  }

  factory GetClusterRestoreContinuousBackupSource.fromMap(Map<String, dynamic> map) {
    return GetClusterRestoreContinuousBackupSource(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      pointInTime: pulumi.Input.fromValue(map['pointInTime'] as String),
    );
  }
}

