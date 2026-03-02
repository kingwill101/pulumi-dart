// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_auto_config_linux_node_config.dart';
import 'get_cluster_node_pool_auto_config_network_tag.dart';
import 'get_cluster_node_pool_auto_config_node_kubelet_config.dart';

class GetClusterNodePoolAutoConfig {
  /// Linux node configuration options.
  final pulumi.Input<List<GetClusterNodePoolAutoConfigLinuxNodeConfig>> linuxNodeConfigs;
  /// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance.
  final pulumi.Input<List<GetClusterNodePoolAutoConfigNetworkTag>> networkTags;
  /// Node kubelet configs.
  final pulumi.Input<List<GetClusterNodePoolAutoConfigNodeKubeletConfig>> nodeKubeletConfigs;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>> resourceManagerTags;

  /// Creates a new [GetClusterNodePoolAutoConfig].
  /// [linuxNodeConfigs] Linux node configuration options.
  /// [networkTags] Collection of Compute Engine network tags that can be applied to a node's underlying VM instance.
  /// [nodeKubeletConfigs] Node kubelet configs.
  /// [resourceManagerTags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  GetClusterNodePoolAutoConfig({
    required this.linuxNodeConfigs,
    required this.networkTags,
    required this.nodeKubeletConfigs,
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxNodeConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolAutoConfigLinuxNodeConfig>, List<Map<String, dynamic>>>(linuxNodeConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolAutoConfigLinuxNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkTags': pulumi.Input.mapInputValue<List<GetClusterNodePoolAutoConfigNetworkTag>, List<Map<String, dynamic>>>(networkTags, (value) => pulumi.Input.encodeList<GetClusterNodePoolAutoConfigNetworkTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeKubeletConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolAutoConfigNodeKubeletConfig>, List<Map<String, dynamic>>>(nodeKubeletConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolAutoConfigNodeKubeletConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceManagerTags': resourceManagerTags,
    };
  }

  factory GetClusterNodePoolAutoConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolAutoConfig(
      linuxNodeConfigs: (pulumi.Input.decodeList<GetClusterNodePoolAutoConfigLinuxNodeConfig>(map['linuxNodeConfigs'], (value) => GetClusterNodePoolAutoConfigLinuxNodeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkTags: (pulumi.Input.decodeList<GetClusterNodePoolAutoConfigNetworkTag>(map['networkTags'], (value) => GetClusterNodePoolAutoConfigNetworkTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeKubeletConfigs: (pulumi.Input.decodeList<GetClusterNodePoolAutoConfigNodeKubeletConfig>(map['nodeKubeletConfigs'], (value) => GetClusterNodePoolAutoConfigNodeKubeletConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceManagerTags: ((map['resourceManagerTags'] as Map).cast<String, String>()).input(),
    );
  }
}

