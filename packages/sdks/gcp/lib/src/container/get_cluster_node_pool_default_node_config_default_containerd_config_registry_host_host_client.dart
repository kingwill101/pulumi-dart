// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_client_cert.dart';
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_client_key.dart';

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert> certs;
  /// Configures the client private key.
  final List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey> keys;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient].
  /// [certs] Configures the client certificate.
  /// [keys] Configures the client private key.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient({
    required this.certs,
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certs': pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert, Map<String, dynamic>>(certs, (value) => value.toMap()),
      'keys': pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey, Map<String, dynamic>>(keys, (value) => value.toMap()),
    };
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient(
      certs: pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert>(map['certs'], (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert.fromMap((value as Map).cast<String, dynamic>())),
      keys: pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey>(map['keys'], (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

