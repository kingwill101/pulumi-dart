// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a VMware Engine VPC network that is managed by a VMware Engine network resource.
class VpcNetworkResponse {
  /// The relative resource name of the service VPC network this VMware Engine network is attached to. For example: `projects/123123/global/networks/my-network`
  final pulumi.Input<String> network;
  /// Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
  final pulumi.Input<String> type;

  /// Creates a new [VpcNetworkResponse].
  /// [network] The relative resource name of the service VPC network this VMware Engine network is attached to. For example: `projects/123123/global/networks/my-network`
  /// [type] Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
  VpcNetworkResponse({
    required this.network,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'type': type,
    };
  }

  factory VpcNetworkResponse.fromMap(Map<String, dynamic> map) {
    return VpcNetworkResponse(
      network: pulumi.Input.fromValue(map['network'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

