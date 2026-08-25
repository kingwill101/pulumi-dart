// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_containerd_config_registry_host_host_client_cert.dart';
import 'node_pool_node_config_containerd_config_registry_host_host_client_key.dart';

class NodePoolNodeConfigContainerdConfigRegistryHostHostClient {
  /// Configures the client certificate.
  final pulumi.Input<NodePoolNodeConfigContainerdConfigRegistryHostHostClientCert> cert;
  /// Configures the client private key.
  final pulumi.Input<NodePoolNodeConfigContainerdConfigRegistryHostHostClientKey?>? key;

  /// Creates a new [NodePoolNodeConfigContainerdConfigRegistryHostHostClient].
  /// [cert] Configures the client certificate.
  /// [key] Configures the client private key.
  const NodePoolNodeConfigContainerdConfigRegistryHostHostClient({
    required this.cert,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': pulumi.Input.mapInputValue<NodePoolNodeConfigContainerdConfigRegistryHostHostClientCert, Map<String, dynamic>>(cert, (value) => value.toMap()),
      'key': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigContainerdConfigRegistryHostHostClientKey, Map<String, dynamic>>(key, (value) => value.toMap()),
    };
  }

  factory NodePoolNodeConfigContainerdConfigRegistryHostHostClient.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfigRegistryHostHostClient(
      cert: pulumi.Input.fromValue(NodePoolNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap((map['cert']! as Map).cast<String, dynamic>())),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
