// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_containerd_config_registry_host_host_ca.dart';
import 'get_cluster_node_pool_node_config_containerd_config_registry_host_host_client.dart';
import 'get_cluster_node_pool_node_config_containerd_config_registry_host_host_header.dart';

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final pulumi.Input<List<String>> capabilities;
  /// Configures the registry host certificate.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa>> cas;
  /// Configures the registry host client certificate and key.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient>> clients;
  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final pulumi.Input<String> dialTimeout;
  /// Configures the registry host headers.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader>> headers;
  /// Configures the registry host/mirror.
  final pulumi.Input<String> host;
  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final pulumi.Input<bool> overridePath;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost].
  /// [capabilities] Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  /// [cas] Configures the registry host certificate.
  /// [clients] Configures the registry host client certificate and key.
  /// [dialTimeout] Specifies the maximum duration allowed for a connection attempt to complete.
  /// [headers] Configures the registry host headers.
  /// [host] Configures the registry host/mirror.
  /// [overridePath] Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost({
    required this.capabilities,
    required this.cas,
    required this.clients,
    required this.dialTimeout,
    required this.headers,
    required this.host,
    required this.overridePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'cas': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa>, List<Map<String, dynamic>>>(cas, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clients': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient>, List<Map<String, dynamic>>>(clients, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dialTimeout': dialTimeout,
      'headers': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'host': host,
      'overridePath': overridePath,
    };
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost(
      capabilities: ((map['capabilities'] as List).cast<String>()).input(),
      cas: (pulumi.Input.decodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa>(map['cas'], (value) => GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clients: (pulumi.Input.decodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient>(map['clients'], (value) => GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dialTimeout: (map['dialTimeout'] as String).input(),
      headers: (pulumi.Input.decodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader>(map['headers'], (value) => GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      host: (map['host'] as String).input(),
      overridePath: (map['overridePath'] as bool).input(),
    );
  }
}

