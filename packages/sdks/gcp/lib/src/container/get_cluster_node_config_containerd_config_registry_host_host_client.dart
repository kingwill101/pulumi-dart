// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_containerd_config_registry_host_host_client_cert.dart';
import 'get_cluster_node_config_containerd_config_registry_host_host_client_key.dart';

class GetClusterNodeConfigContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final pulumi.Input<List<GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert>> certs;
  /// Configures the client private key.
  final pulumi.Input<List<GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey>> keys;

  /// Creates a new [GetClusterNodeConfigContainerdConfigRegistryHostHostClient].
  /// [certs] Configures the client certificate.
  /// [keys] Configures the client private key.
  const GetClusterNodeConfigContainerdConfigRegistryHostHostClient({
    required this.certs,
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert>, List<Map<String, dynamic>>>(certs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keys': pulumi.Input.mapInputValue<List<GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey>, List<Map<String, dynamic>>>(keys, (value) => pulumi.Input.encodeList<GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodeConfigContainerdConfigRegistryHostHostClient.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigRegistryHostHostClient(
      certs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert>(map['certs']!, (value) => GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap((value as Map).cast<String, dynamic>()))),
      keys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey>(map['keys']!, (value) => GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

