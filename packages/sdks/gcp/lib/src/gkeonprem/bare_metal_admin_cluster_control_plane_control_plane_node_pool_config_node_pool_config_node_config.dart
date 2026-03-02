// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig {
  /// The labels assigned to nodes of this node pool.
  /// An object containing a list of key/value pairs.
  /// Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? labels;
  /// (Optional)
  final pulumi.Input<String>? nodeIp;

  /// Creates a new [BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig].
  /// [labels] The labels assigned to nodes of this node pool.
  /// [nodeIp] (Optional)
  BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig({
    this.labels,
    this.nodeIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'nodeIp': ?nodeIp,
    };
  }

  factory BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig(
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      nodeIp: map['nodeIp'] == null ? null : (map['nodeIp']! as String).input(),
    );
  }
}

