// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_node_pool_config_proxy_config.dart';
import 'azure_node_pool_config_root_volume.dart';
import 'azure_node_pool_config_ssh_config.dart';

class AzureNodePoolConfig {
  /// The OS image type to use on node pool instances.
  final pulumi.Input<String?>? imageType;
  /// Optional. The initial labels assigned to nodes of this node pool. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Proxy configuration for outbound HTTP(S) traffic.
  final pulumi.Input<AzureNodePoolConfigProxyConfig?>? proxyConfig;
  /// Optional. Configuration related to the root volume provisioned for each node pool machine. When unspecified, it defaults to a 32-GiB Azure Disk.
  final pulumi.Input<AzureNodePoolConfigRootVolume?>? rootVolume;
  /// SSH configuration for how to access the node pool machines.
  final pulumi.Input<AzureNodePoolConfigSshConfig> sshConfig;
  /// Optional. A set of tags to apply to all underlying Azure resources for this node pool. This currently only includes Virtual Machine Scale Sets. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Optional. The Azure VM size name. Example: `Standard_DS2_v2`. See (/anthos/clusters/docs/azure/reference/supported-vms) for options. When unspecified, it defaults to `Standard_DS2_v2`.
  final pulumi.Input<String?>? vmSize;

  /// Creates a new [AzureNodePoolConfig].
  /// [imageType] The OS image type to use on node pool instances.
  /// [labels] Optional. The initial labels assigned to nodes of this node pool. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [proxyConfig] Proxy configuration for outbound HTTP(S) traffic.
  /// [rootVolume] Optional. Configuration related to the root volume provisioned for each node pool machine. When unspecified, it defaults to a 32-GiB Azure Disk.
  /// [sshConfig] SSH configuration for how to access the node pool machines.
  /// [tags] Optional. A set of tags to apply to all underlying Azure resources for this node pool. This currently only includes Virtual Machine Scale Sets. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
  /// [vmSize] Optional. The Azure VM size name. Example: `Standard_DS2_v2`. See (/anthos/clusters/docs/azure/reference/supported-vms) for options. When unspecified, it defaults to `Standard_DS2_v2`.
  const AzureNodePoolConfig({
    this.imageType,
    this.labels,
    this.proxyConfig,
    this.rootVolume,
    required this.sshConfig,
    this.tags,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageType': ?imageType,
      'labels': ?labels,
      'proxyConfig': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolConfigProxyConfig, Map<String, dynamic>>(proxyConfig, (value) => value.toMap()),
      'rootVolume': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolConfigRootVolume, Map<String, dynamic>>(rootVolume, (value) => value.toMap()),
      'sshConfig': pulumi.Input.mapInputValue<AzureNodePoolConfigSshConfig, Map<String, dynamic>>(sshConfig, (value) => value.toMap()),
      'tags': ?tags,
      'vmSize': ?vmSize,
    };
  }

  factory AzureNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolConfig(
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      proxyConfig: (() { final guardedValue = map['proxyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureNodePoolConfigProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rootVolume: (() { final guardedValue = map['rootVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureNodePoolConfigRootVolume.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshConfig: pulumi.Input.fromValue(AzureNodePoolConfigSshConfig.fromMap((map['sshConfig']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
