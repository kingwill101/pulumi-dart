// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cloud_management_cluster_autoscaling_settings.dart';
import 'private_cloud_management_cluster_node_type_config.dart';
import 'private_cloud_management_cluster_stretched_cluster_config.dart';

class PrivateCloudManagementCluster {
  /// Configuration of the autoscaling applied to this cluster
  /// Private cloud must have a minimum of 3 nodes to add autoscale settings
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudManagementClusterAutoscalingSettings>? autoscalingSettings;
  /// The user-provided identifier of the new Cluster. The identifier must meet the following requirements:
  /// * Only contains 1-63 alphanumeric characters and hyphens
  /// * Begins with an alphabetical character
  /// * Ends with a non-hyphen character
  /// * Not formatted as a UUID
  /// * Complies with RFC 1034 (https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> clusterId;
  /// The map of cluster node types in this cluster,
  /// where the key is canonical identifier of the node type (corresponds to the NodeType).
  /// Structure is documented below.
  final pulumi.Input<List<PrivateCloudManagementClusterNodeTypeConfig>>? nodeTypeConfigs;
  /// The stretched cluster configuration for the private cloud.
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudManagementClusterStretchedClusterConfig>? stretchedClusterConfig;

  /// Creates a new [PrivateCloudManagementCluster].
  /// [autoscalingSettings] Configuration of the autoscaling applied to this cluster
  /// [clusterId] The user-provided identifier of the new Cluster. The identifier must meet the following requirements:
  /// [nodeTypeConfigs] The map of cluster node types in this cluster,
  /// [stretchedClusterConfig] The stretched cluster configuration for the private cloud.
  PrivateCloudManagementCluster({
    this.autoscalingSettings,
    required this.clusterId,
    this.nodeTypeConfigs,
    this.stretchedClusterConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSettings': ?pulumi.Input.mapOptionalInputValue<PrivateCloudManagementClusterAutoscalingSettings, Map<String, dynamic>>(autoscalingSettings, (value) => value.toMap()),
      'clusterId': clusterId,
      'nodeTypeConfigs': ?pulumi.Input.mapOptionalInputValue<List<PrivateCloudManagementClusterNodeTypeConfig>, List<Map<String, dynamic>>>(nodeTypeConfigs, (value) => pulumi.Input.encodeList<PrivateCloudManagementClusterNodeTypeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stretchedClusterConfig': ?pulumi.Input.mapOptionalInputValue<PrivateCloudManagementClusterStretchedClusterConfig, Map<String, dynamic>>(stretchedClusterConfig, (value) => value.toMap()),
    };
  }

  factory PrivateCloudManagementCluster.fromMap(Map<String, dynamic> map) {
    return PrivateCloudManagementCluster(
      autoscalingSettings: map['autoscalingSettings'] == null ? null : (PrivateCloudManagementClusterAutoscalingSettings.fromMap((map['autoscalingSettings'] as Map).cast<String, dynamic>())).input(),
      clusterId: (map['clusterId'] as String).input(),
      nodeTypeConfigs: map['nodeTypeConfigs'] == null ? null : (pulumi.Input.decodeList<PrivateCloudManagementClusterNodeTypeConfig>(map['nodeTypeConfigs'], (value) => PrivateCloudManagementClusterNodeTypeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stretchedClusterConfig: map['stretchedClusterConfig'] == null ? null : (PrivateCloudManagementClusterStretchedClusterConfig.fromMap((map['stretchedClusterConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

