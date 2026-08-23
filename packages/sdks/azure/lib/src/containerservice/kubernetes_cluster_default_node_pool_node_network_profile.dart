// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_default_node_pool_node_network_profile_allowed_host_port.dart';

class KubernetesClusterDefaultNodePoolNodeNetworkProfile {
  /// One or more `allowedHostPorts` blocks as defined below.
  final pulumi.Input<List<KubernetesClusterDefaultNodePoolNodeNetworkProfileAllowedHostPort>>? allowedHostPorts;
  /// A list of Application Security Group IDs which should be associated with this Node Pool.
  final pulumi.Input<List<String>>? applicationSecurityGroupIds;
  /// Specifies a mapping of tags to the instance-level public IPs. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? nodePublicIpTags;

  /// Creates a new [KubernetesClusterDefaultNodePoolNodeNetworkProfile].
  /// [allowedHostPorts] One or more `allowedHostPorts` blocks as defined below.
  /// [applicationSecurityGroupIds] A list of Application Security Group IDs which should be associated with this Node Pool.
  /// [nodePublicIpTags] Specifies a mapping of tags to the instance-level public IPs. Changing this forces a new resource to be created.
  const KubernetesClusterDefaultNodePoolNodeNetworkProfile({
    this.allowedHostPorts,
    this.applicationSecurityGroupIds,
    this.nodePublicIpTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHostPorts': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterDefaultNodePoolNodeNetworkProfileAllowedHostPort>, List<Map<String, dynamic>>>(allowedHostPorts, (value) => pulumi.Input.encodeList<KubernetesClusterDefaultNodePoolNodeNetworkProfileAllowedHostPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationSecurityGroupIds': ?applicationSecurityGroupIds,
      'nodePublicIpTags': ?nodePublicIpTags,
    };
  }

  factory KubernetesClusterDefaultNodePoolNodeNetworkProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterDefaultNodePoolNodeNetworkProfile(
      allowedHostPorts: (() { final guardedValue = map['allowedHostPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesClusterDefaultNodePoolNodeNetworkProfileAllowedHostPort>(guardedValue, (value) => KubernetesClusterDefaultNodePoolNodeNetworkProfileAllowedHostPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationSecurityGroupIds: (() { final guardedValue = map['applicationSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodePublicIpTags: (() { final guardedValue = map['nodePublicIpTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
