// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkVpcNetwork {
  /// (Output)
  /// The relative resource name of the service VPC network this VMware Engine network is attached to.
  /// For example: projects/123123/global/networks/my-network
  final pulumi.Input<String>? network;
  /// VMware Engine network type.
  /// Possible values are: `LEGACY`, `STANDARD`.
  final pulumi.Input<String>? type;

  /// Creates a new [NetworkVpcNetwork].
  /// [network] (Output)
  /// [type] VMware Engine network type.
  NetworkVpcNetwork({
    this.network,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'type': ?type,
    };
  }

  factory NetworkVpcNetwork.fromMap(Map<String, dynamic> map) {
    return NetworkVpcNetwork(
      network: map['network'] == null ? null : (map['network']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

