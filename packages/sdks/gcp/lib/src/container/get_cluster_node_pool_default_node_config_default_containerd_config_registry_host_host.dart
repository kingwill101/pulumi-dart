// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_ca.dart';
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_client.dart';
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_header.dart';

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final pulumi.Input<List<String>> capabilities;
  /// Configures the registry host certificate.
  final pulumi.Input<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa>> cas;
  /// Configures the registry host client certificate and key.
  final pulumi.Input<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient>> clients;
  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final pulumi.Input<String> dialTimeout;
  /// Configures the registry host headers.
  final pulumi.Input<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader>> headers;
  /// Configures the registry host/mirror.
  final pulumi.Input<String> host;
  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final pulumi.Input<bool> overridePath;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost].
  /// [capabilities] Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  /// [cas] Configures the registry host certificate.
  /// [clients] Configures the registry host client certificate and key.
  /// [dialTimeout] Specifies the maximum duration allowed for a connection attempt to complete.
  /// [headers] Configures the registry host headers.
  /// [host] Configures the registry host/mirror.
  /// [overridePath] Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  const GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost({
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
      'cas': pulumi.Input.mapInputValue<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa>, List<Map<String, dynamic>>>(cas, (value) => pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clients': pulumi.Input.mapInputValue<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient>, List<Map<String, dynamic>>>(clients, (value) => pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dialTimeout': dialTimeout,
      'headers': pulumi.Input.mapInputValue<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'host': host,
      'overridePath': overridePath,
    };
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost(
      capabilities: pulumi.Input.fromValue((map['capabilities'] as List).cast<String>()),
      cas: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa>(map['cas']!, (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa.fromMap((value as Map).cast<String, dynamic>()))),
      clients: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient>(map['clients']!, (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient.fromMap((value as Map).cast<String, dynamic>()))),
      dialTimeout: pulumi.Input.fromValue(map['dialTimeout'] as String),
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader>(map['headers']!, (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader.fromMap((value as Map).cast<String, dynamic>()))),
      host: pulumi.Input.fromValue(map['host'] as String),
      overridePath: pulumi.Input.fromValue(map['overridePath'] as bool),
    );
  }
}

