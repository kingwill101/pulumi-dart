// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_network_resource_config.dart';
import 'cluster_network_resource_network.dart';

class ClusterNetworkResource {
  /// Describes how a network resource should be initialized. Each network resource
  /// can either be imported from an existing Google Cloud resource or initialized
  /// when the cluster is created.
  /// Structure is documented below.
  final pulumi.Input<ClusterNetworkResourceConfig>? config;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> id;
  /// (Output)
  /// A reference to a [VPC network](https://cloud.google.com/vpc/docs/vpc) in
  /// Google Compute Engine.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterNetworkResourceNetwork>>? networks;

  /// Creates a new [ClusterNetworkResource].
  /// [config] Describes how a network resource should be initialized. Each network resource
  /// [id] The identifier for this object. Format specified above.
  /// [networks] (Output)
  const ClusterNetworkResource({
    this.config,
    required this.id,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkResourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'id': id,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ClusterNetworkResourceNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ClusterNetworkResourceNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterNetworkResource.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkResource(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNetworkResourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNetworkResourceNetwork>(guardedValue, (value) => ClusterNetworkResourceNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
