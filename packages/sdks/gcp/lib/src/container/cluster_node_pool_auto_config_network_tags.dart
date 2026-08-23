// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolAutoConfigNetworkTags {
  /// List of network tags applied to auto-provisioned node pools.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [ClusterNodePoolAutoConfigNetworkTags].
  /// [tags] List of network tags applied to auto-provisioned node pools.
  const ClusterNodePoolAutoConfigNetworkTags({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory ClusterNodePoolAutoConfigNetworkTags.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolAutoConfigNetworkTags(
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
