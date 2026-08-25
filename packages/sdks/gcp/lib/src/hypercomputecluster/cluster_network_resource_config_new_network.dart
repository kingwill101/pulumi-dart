// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetworkResourceConfigNewNetwork {
  /// Description of the network. Maximum of 2048 characters.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// Name of the network, in the format
  /// `projects/{project}/global/networks/{network}`.
  final pulumi.Input<String> network;

  /// Creates a new [ClusterNetworkResourceConfigNewNetwork].
  /// [description] Description of the network. Maximum of 2048 characters.
  /// [network] (Output)
  const ClusterNetworkResourceConfigNewNetwork({
    this.description,
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'network': network,
    };
  }

  factory ClusterNetworkResourceConfigNewNetwork.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkResourceConfigNewNetwork(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
