// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_containerd_config_registry_host_host_ca.dart';
import 'cluster_node_config_containerd_config_registry_host_host_client.dart';
import 'cluster_node_config_containerd_config_registry_host_host_header.dart';

class ClusterNodeConfigContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final List<String>? capabilities;
  /// Configures the registry host certificate.
  final List<ClusterNodeConfigContainerdConfigRegistryHostHostCa>? cas;
  /// Configures the registry host client certificate and key.
  final List<ClusterNodeConfigContainerdConfigRegistryHostHostClient>? clients;
  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final String? dialTimeout;
  /// Configures the registry host headers.
  final List<ClusterNodeConfigContainerdConfigRegistryHostHostHeader>? headers;
  /// Configures the registry host/mirror.
  final String host;
  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final bool? overridePath;

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
      'cas': ?cas == null ? null : pulumi.Input.encodeList<ClusterNodeConfigContainerdConfigRegistryHostHostCa, Map<String, dynamic>>(cas!, (value) => value.toMap()),
      'clients': ?clients == null ? null : pulumi.Input.encodeList<ClusterNodeConfigContainerdConfigRegistryHostHostClient, Map<String, dynamic>>(clients!, (value) => value.toMap()),
      'dialTimeout': ?dialTimeout,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<ClusterNodeConfigContainerdConfigRegistryHostHostHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'host': host,
      'overridePath': ?overridePath,
    };
  }

  factory ClusterNodeConfigContainerdConfigRegistryHostHost.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigRegistryHostHost(
      capabilities: map['capabilities'] == null ? null : (map['capabilities'] as List).cast<String>(),
      cas: map['cas'] == null ? null : pulumi.Input.decodeList<ClusterNodeConfigContainerdConfigRegistryHostHostCa>(map['cas'], (value) => ClusterNodeConfigContainerdConfigRegistryHostHostCa.fromMap((value as Map).cast<String, dynamic>())),
      clients: map['clients'] == null ? null : pulumi.Input.decodeList<ClusterNodeConfigContainerdConfigRegistryHostHostClient>(map['clients'], (value) => ClusterNodeConfigContainerdConfigRegistryHostHostClient.fromMap((value as Map).cast<String, dynamic>())),
      dialTimeout: map['dialTimeout'] == null ? null : map['dialTimeout'] as String,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<ClusterNodeConfigContainerdConfigRegistryHostHostHeader>(map['headers'], (value) => ClusterNodeConfigContainerdConfigRegistryHostHostHeader.fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      overridePath: map['overridePath'] == null ? null : map['overridePath'] as bool,
    );
  }
}

