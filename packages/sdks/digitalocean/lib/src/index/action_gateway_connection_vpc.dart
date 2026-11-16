// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_connection_vpc_destination.dart';

class ActionGatewayConnectionVpc {
  /// One or more private hosts the connection's calls may reach.
  final pulumi.Input<List<ActionGatewayConnectionVpcDestination>> destinations;
  /// The region of the connection's VPC.
  final pulumi.Input<String?>? region;
  /// The UUID of a VPC owned by your team.
  final pulumi.Input<String> vpcUuid;

  /// Creates a new [ActionGatewayConnectionVpc].
  /// [destinations] One or more private hosts the connection's calls may reach.
  /// [region] The region of the connection's VPC.
  /// [vpcUuid] The UUID of a VPC owned by your team.
  const ActionGatewayConnectionVpc({
    required this.destinations,
    this.region,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<ActionGatewayConnectionVpcDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<ActionGatewayConnectionVpcDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'vpcUuid': vpcUuid,
    };
  }

  factory ActionGatewayConnectionVpc.fromMap(Map<String, dynamic> map) {
    return ActionGatewayConnectionVpc(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<ActionGatewayConnectionVpcDestination>(map['destinations']!, (value) => ActionGatewayConnectionVpcDestination.fromMap((value as Map).cast<String, dynamic>()))),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcUuid: pulumi.Input.fromValue(map['vpcUuid'] as String),
    );
  }
}
