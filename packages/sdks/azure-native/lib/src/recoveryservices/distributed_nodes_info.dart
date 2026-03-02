// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is used to represent the various nodes of the distributed container.
class DistributedNodesInfo {
  /// Name of the node under a distributed container.
  final pulumi.Input<String>? nodeName;
  /// ARM resource id of the node
  final pulumi.Input<String>? sourceResourceId;
  /// Status of this Node.
  /// Failed | Succeeded
  final pulumi.Input<String>? status;

  /// Creates a new [DistributedNodesInfo].
  /// [nodeName] Name of the node under a distributed container.
  /// [sourceResourceId] ARM resource id of the node
  /// [status] Status of this Node.
  DistributedNodesInfo({
    this.nodeName,
    this.sourceResourceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': ?nodeName,
      'sourceResourceId': ?sourceResourceId,
      'status': ?status,
    };
  }

  factory DistributedNodesInfo.fromMap(Map<String, dynamic> map) {
    return DistributedNodesInfo(
      nodeName: map['nodeName'] == null ? null : (map['nodeName']! as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

