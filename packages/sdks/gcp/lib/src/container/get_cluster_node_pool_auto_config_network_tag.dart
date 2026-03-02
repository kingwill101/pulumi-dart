// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolAutoConfigNetworkTag {
  /// List of network tags applied to auto-provisioned node pools.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [GetClusterNodePoolAutoConfigNetworkTag].
  /// [tags] List of network tags applied to auto-provisioned node pools.
  GetClusterNodePoolAutoConfigNetworkTag({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': tags,
    };
  }

  factory GetClusterNodePoolAutoConfigNetworkTag.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolAutoConfigNetworkTag(
      tags: ((map['tags'] as List).cast<String>()).input(),
    );
  }
}

