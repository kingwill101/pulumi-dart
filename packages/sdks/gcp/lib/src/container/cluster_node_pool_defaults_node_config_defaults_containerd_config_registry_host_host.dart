// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_ca.dart';
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_client.dart';
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_header.dart';

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final pulumi.Input<List<String>>? capabilities;
  /// Configures the registry host certificate.
  final pulumi.Input<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa>>? cas;
  /// Configures the registry host client certificate and key.
  final pulumi.Input<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient>>? clients;
  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final pulumi.Input<String>? dialTimeout;
  /// Configures the registry host headers.
  final pulumi.Input<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostHeader>>? headers;
  /// Configures the registry host/mirror.
  final pulumi.Input<String> host;
  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final pulumi.Input<bool>? overridePath;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost].
  /// [capabilities] Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  /// [cas] Configures the registry host certificate.
  /// [clients] Configures the registry host client certificate and key.
  /// [dialTimeout] Specifies the maximum duration allowed for a connection attempt to complete.
  /// [headers] Configures the registry host headers.
  /// [host] Configures the registry host/mirror.
  /// [overridePath] Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost({
    this.capabilities,
    this.cas,
    this.clients,
    this.dialTimeout,
    this.headers,
    required this.host,
    this.overridePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities,
      'cas': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa>, List<Map<String, dynamic>>>(cas, (value) => pulumi.Input.encodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clients': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient>, List<Map<String, dynamic>>>(clients, (value) => pulumi.Input.encodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dialTimeout': ?dialTimeout,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'host': host,
      'overridePath': ?overridePath,
    };
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost(
      capabilities: map['capabilities'] == null ? null : ((map['capabilities']! as List).cast<String>()).input(),
      cas: map['cas'] == null ? null : (pulumi.Input.decodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa>(map['cas']!, (value) => ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clients: map['clients'] == null ? null : (pulumi.Input.decodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient>(map['clients']!, (value) => ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dialTimeout: map['dialTimeout'] == null ? null : (map['dialTimeout']! as String).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostHeader>(map['headers']!, (value) => ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      host: (map['host'] as String).input(),
      overridePath: map['overridePath'] == null ? null : (map['overridePath']! as bool).input(),
    );
  }
}

