// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkVpcNetwork {
  /// The relative resource name of the service VPC network this VMware Engine network is attached to.
  /// For example: projects/123123/global/networks/my-network
  final pulumi.Input<String> network;
  /// Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
  final pulumi.Input<String> type;

  /// Creates a new [GetNetworkVpcNetwork].
  /// [network] The relative resource name of the service VPC network this VMware Engine network is attached to.
  /// [type] Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
  GetNetworkVpcNetwork({
    required this.network,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'type': type,
    };
  }

  factory GetNetworkVpcNetwork.fromMap(Map<String, dynamic> map) {
    return GetNetworkVpcNetwork(
      network: (map['network'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

