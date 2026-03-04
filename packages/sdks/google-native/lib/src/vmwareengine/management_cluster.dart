// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stretched_cluster_config.dart';

/// Management cluster configuration.
class ManagementCluster {
  /// The user-provided identifier of the new `Cluster`. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> clusterId;

  /// The map of cluster node types in this cluster, where the key is canonical identifier of the node type (corresponds to the `NodeType`).
  final pulumi.Input<Map<String, String>> nodeTypeConfigs;

  /// Optional. Configuration of a stretched cluster. Required for STRETCHED private clouds.
  final pulumi.Input<StretchedClusterConfig>? stretchedClusterConfig;

  /// Creates a new [ManagementCluster].
  /// [clusterId] The user-provided identifier of the new `Cluster`. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// [nodeTypeConfigs] The map of cluster node types in this cluster, where the key is canonical identifier of the node type (corresponds to the `NodeType`).
  /// [stretchedClusterConfig] Optional. Configuration of a stretched cluster. Required for STRETCHED private clouds.
  ManagementCluster({
    required this.clusterId,
    required this.nodeTypeConfigs,
    this.stretchedClusterConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'nodeTypeConfigs': nodeTypeConfigs,
      'stretchedClusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            StretchedClusterConfig,
            Map<String, dynamic>
          >(stretchedClusterConfig, (value) => value.toMap()),
    };
  }

  factory ManagementCluster.fromMap(Map<String, dynamic> map) {
    return ManagementCluster(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      nodeTypeConfigs: pulumi.Input.fromValue(
        (map['nodeTypeConfigs'] as Map).cast<String, String>(),
      ),
      stretchedClusterConfig: (() {
        final guardedValue = map['stretchedClusterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StretchedClusterConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
