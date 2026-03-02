// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_containerd_config_registry_host_host_client_cert.dart';
import 'cluster_node_config_containerd_config_registry_host_host_client_key.dart';

class ClusterNodeConfigContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final pulumi.Input<ClusterNodeConfigContainerdConfigRegistryHostHostClientCert> cert;
  /// Configures the client private key.
  final pulumi.Input<ClusterNodeConfigContainerdConfigRegistryHostHostClientKey>? key;

  /// Creates a new [ClusterNodeConfigContainerdConfigRegistryHostHostClient].
  /// [cert] Configures the client certificate.
  /// [key] Configures the client private key.
  ClusterNodeConfigContainerdConfigRegistryHostHostClient({
    required this.cert,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': pulumi.Input.mapInputValue<ClusterNodeConfigContainerdConfigRegistryHostHostClientCert, Map<String, dynamic>>(cert, (value) => value.toMap()),
      'key': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigContainerdConfigRegistryHostHostClientKey, Map<String, dynamic>>(key, (value) => value.toMap()),
    };
  }

  factory ClusterNodeConfigContainerdConfigRegistryHostHostClient.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigRegistryHostHostClient(
      cert: (ClusterNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap((map['cert'] as Map).cast<String, dynamic>())).input(),
      key: map['key'] == null ? null : (ClusterNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap((map['key'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

