// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGatewayEndpointVersionNetwork {
  /// Region of the VPC
  final pulumi.Input<String> region;
  /// UUID of a VPC owned by your team
  final pulumi.Input<String> vpcUuid;

  /// Creates a new [GetActionGatewayEndpointVersionNetwork].
  /// [region] Region of the VPC
  /// [vpcUuid] UUID of a VPC owned by your team
  const GetActionGatewayEndpointVersionNetwork({
    required this.region,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'vpcUuid': vpcUuid,
    };
  }

  factory GetActionGatewayEndpointVersionNetwork.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayEndpointVersionNetwork(
      region: pulumi.Input.fromValue(map['region'] as String),
      vpcUuid: pulumi.Input.fromValue(map['vpcUuid'] as String),
    );
  }
}
