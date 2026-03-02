// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties associated with a Stream Analytics cluster.
class ClusterInfo {
  /// The resource id of cluster.
  final pulumi.Input<String>? id;

  /// Creates a new [ClusterInfo].
  /// [id] The resource id of cluster.
  ClusterInfo({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ClusterInfo.fromMap(Map<String, dynamic> map) {
    return ClusterInfo(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

