// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGatewayEndpointVersionNetwork {
  /// The region of the VPC the version is attached to.
  final pulumi.Input<String?>? region;
  /// The UUID of a VPC owned by your team.
  final pulumi.Input<String> vpcUuid;

  /// Creates a new [ActionGatewayEndpointVersionNetwork].
  /// [region] The region of the VPC the version is attached to.
  /// [vpcUuid] The UUID of a VPC owned by your team.
  const ActionGatewayEndpointVersionNetwork({
    this.region,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'vpcUuid': vpcUuid,
    };
  }

  factory ActionGatewayEndpointVersionNetwork.fromMap(Map<String, dynamic> map) {
    return ActionGatewayEndpointVersionNetwork(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcUuid: pulumi.Input.fromValue(map['vpcUuid'] as String),
    );
  }
}
