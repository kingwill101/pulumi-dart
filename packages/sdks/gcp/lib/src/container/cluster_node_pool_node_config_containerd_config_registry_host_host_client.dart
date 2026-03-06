// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_node_config_containerd_config_registry_host_host_client_cert.dart';
import 'cluster_node_pool_node_config_containerd_config_registry_host_host_client_key.dart';

class ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final pulumi.Input<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert> cert;
  /// Configures the client private key.
  final pulumi.Input<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey>? key;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient].
  /// [cert] Configures the client certificate.
  /// [key] Configures the client private key.
  const ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient({
    required this.cert,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': pulumi.Input.mapInputValue<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert, Map<String, dynamic>>(cert, (value) => value.toMap()),
      'key': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey, Map<String, dynamic>>(key, (value) => value.toMap()),
    };
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient(
      cert: pulumi.Input.fromValue(ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap((map['cert']! as Map).cast<String, dynamic>())),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

