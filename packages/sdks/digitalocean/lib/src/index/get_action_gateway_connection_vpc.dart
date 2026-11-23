// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_gateway_connection_vpc_destination.dart';

class GetActionGatewayConnectionVpc {
  /// The private hosts the connection's calls may reach, each with `host`, `port`, and `allowedIpCidrs`.
  final pulumi.Input<List<GetActionGatewayConnectionVpcDestination>> destinations;
  /// The region of the VPC.
  final pulumi.Input<String> region;
  /// The UUID of the VPC.
  final pulumi.Input<String> vpcUuid;

  /// Creates a new [GetActionGatewayConnectionVpc].
  /// [destinations] The private hosts the connection's calls may reach, each with `host`, `port`, and `allowedIpCidrs`.
  /// [region] The region of the VPC.
  /// [vpcUuid] The UUID of the VPC.
  const GetActionGatewayConnectionVpc({
    required this.destinations,
    required this.region,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<GetActionGatewayConnectionVpcDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<GetActionGatewayConnectionVpcDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': region,
      'vpcUuid': vpcUuid,
    };
  }

  factory GetActionGatewayConnectionVpc.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayConnectionVpc(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetActionGatewayConnectionVpcDestination>(map['destinations']!, (value) => GetActionGatewayConnectionVpcDestination.fromMap((value as Map).cast<String, dynamic>()))),
      region: pulumi.Input.fromValue(map['region'] as String),
      vpcUuid: pulumi.Input.fromValue(map['vpcUuid'] as String),
    );
  }
}
