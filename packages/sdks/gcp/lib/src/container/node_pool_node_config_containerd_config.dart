// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_containerd_config_private_registry_access_config.dart';
import 'node_pool_node_config_containerd_config_registry_host.dart';
import 'node_pool_node_config_containerd_config_writable_cgroups.dart';

class NodePoolNodeConfigContainerdConfig {
  /// Parameters for private container registries configuration.
  final pulumi.Input<
    NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig
  >?
  privateRegistryAccessConfig;

  /// Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  final pulumi.Input<List<NodePoolNodeConfigContainerdConfigRegistryHost>>?
  registryHosts;

  /// Parameters for writable cgroups configuration.
  final pulumi.Input<NodePoolNodeConfigContainerdConfigWritableCgroups>?
  writableCgroups;

  /// Creates a new [NodePoolNodeConfigContainerdConfig].
  /// [privateRegistryAccessConfig] Parameters for private container registries configuration.
  /// [registryHosts] Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  /// [writableCgroups] Parameters for writable cgroups configuration.
  NodePoolNodeConfigContainerdConfig({
    this.privateRegistryAccessConfig,
    this.registryHosts,
    this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateRegistryAccessConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig,
            Map<String, dynamic>
          >(privateRegistryAccessConfig, (value) => value.toMap()),
      'registryHosts':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodePoolNodeConfigContainerdConfigRegistryHost>,
            List<Map<String, dynamic>>
          >(
            registryHosts,
            (value) =>
                pulumi.Input.encodeList<
                  NodePoolNodeConfigContainerdConfigRegistryHost,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'writableCgroups':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolNodeConfigContainerdConfigWritableCgroups,
            Map<String, dynamic>
          >(writableCgroups, (value) => value.toMap()),
    };
  }

  factory NodePoolNodeConfigContainerdConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfig(
      privateRegistryAccessConfig: (() {
        final guardedValue = map['privateRegistryAccessConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      registryHosts: (() {
        final guardedValue = map['registryHosts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<NodePoolNodeConfigContainerdConfigRegistryHost>(
            guardedValue,
            (value) => NodePoolNodeConfigContainerdConfigRegistryHost.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      writableCgroups: (() {
        final guardedValue = map['writableCgroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolNodeConfigContainerdConfigWritableCgroups.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
