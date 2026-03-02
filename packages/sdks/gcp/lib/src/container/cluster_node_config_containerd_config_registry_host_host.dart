// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_containerd_config_registry_host_host_ca.dart';
import 'cluster_node_config_containerd_config_registry_host_host_client.dart';
import 'cluster_node_config_containerd_config_registry_host_host_header.dart';

class ClusterNodeConfigContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final pulumi.Input<List<String>>? capabilities;
  /// Configures the registry host certificate.
  final pulumi.Input<List<ClusterNodeConfigContainerdConfigRegistryHostHostCa>>? cas;
  /// Configures the registry host client certificate and key.
  final pulumi.Input<List<ClusterNodeConfigContainerdConfigRegistryHostHostClient>>? clients;
  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final pulumi.Input<String>? dialTimeout;
  /// Configures the registry host headers.
  final pulumi.Input<List<ClusterNodeConfigContainerdConfigRegistryHostHostHeader>>? headers;
  /// Configures the registry host/mirror.
  final pulumi.Input<String> host;
  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final pulumi.Input<bool>? overridePath;

  /// Creates a new [ClusterNodeConfigContainerdConfigRegistryHostHost].
  /// [capabilities] Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  /// [cas] Configures the registry host certificate.
  /// [clients] Configures the registry host client certificate and key.
  /// [dialTimeout] Specifies the maximum duration allowed for a connection attempt to complete.
  /// [headers] Configures the registry host headers.
  /// [host] Configures the registry host/mirror.
  /// [overridePath] Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  ClusterNodeConfigContainerdConfigRegistryHostHost({
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
      'cas': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeConfigContainerdConfigRegistryHostHostCa>, List<Map<String, dynamic>>>(cas, (value) => pulumi.Input.encodeList<ClusterNodeConfigContainerdConfigRegistryHostHostCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clients': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeConfigContainerdConfigRegistryHostHostClient>, List<Map<String, dynamic>>>(clients, (value) => pulumi.Input.encodeList<ClusterNodeConfigContainerdConfigRegistryHostHostClient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dialTimeout': ?dialTimeout,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeConfigContainerdConfigRegistryHostHostHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ClusterNodeConfigContainerdConfigRegistryHostHostHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'host': host,
      'overridePath': ?overridePath,
    };
  }

  factory ClusterNodeConfigContainerdConfigRegistryHostHost.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigRegistryHostHost(
      capabilities: map['capabilities'] == null ? null : ((map['capabilities'] as List).cast<String>()).input(),
      cas: map['cas'] == null ? null : (pulumi.Input.decodeList<ClusterNodeConfigContainerdConfigRegistryHostHostCa>(map['cas'], (value) => ClusterNodeConfigContainerdConfigRegistryHostHostCa.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clients: map['clients'] == null ? null : (pulumi.Input.decodeList<ClusterNodeConfigContainerdConfigRegistryHostHostClient>(map['clients'], (value) => ClusterNodeConfigContainerdConfigRegistryHostHostClient.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dialTimeout: map['dialTimeout'] == null ? null : (map['dialTimeout'] as String).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<ClusterNodeConfigContainerdConfigRegistryHostHostHeader>(map['headers'], (value) => ClusterNodeConfigContainerdConfigRegistryHostHostHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      host: (map['host'] as String).input(),
      overridePath: map['overridePath'] == null ? null : (map['overridePath'] as bool).input(),
    );
  }
}

