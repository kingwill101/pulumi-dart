// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_client_cert.dart';
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_client_key.dart';

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final pulumi.Input<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientCert> cert;
  /// Configures the client private key.
  final pulumi.Input<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey>? key;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient].
  /// [cert] Configures the client certificate.
  /// [key] Configures the client private key.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient({
    required this.cert,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': pulumi.Input.mapInputValue<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientCert, Map<String, dynamic>>(cert, (value) => value.toMap()),
      'key': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey, Map<String, dynamic>>(key, (value) => value.toMap()),
    };
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient(
      cert: (ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientCert.fromMap((map['cert'] as Map).cast<String, dynamic>())).input(),
      key: map['key'] == null ? null : (ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey.fromMap((map['key']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

