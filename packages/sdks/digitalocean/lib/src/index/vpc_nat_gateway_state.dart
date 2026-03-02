// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_nat_gateway_egress.dart';
import 'vpc_nat_gateway_vpc.dart';

/// Input properties used for looking up and filtering VpcNatGateway resources.
class VpcNatGatewayState {
  /// Created at timestamp for the VPC NAT Gateway.
  final pulumi.Input<String>? createdAt;
  /// Embeds the list of public egresses assigned to the VPC NAT Gateway: resolves as list of
  /// `public_gateways` embedding the reserved `ipv4` addresses.
  final pulumi.Input<List<VpcNatGatewayEgress>>? egresses;
  /// The egress timeout value for ICMP connections of the VPC NAT Gateway.
  final pulumi.Input<int>? icmpTimeoutSeconds;
  /// The name of the VPC NAT Gateway.
  final pulumi.Input<String>? name;
  /// ID of the project to which the VPC NAT Gateway will be assigned.
  final pulumi.Input<String>? projectId;
  /// The region for the VPC NAT Gateway.
  final pulumi.Input<String>? region;
  /// The size of the VPC NAT Gateway.
  final pulumi.Input<int>? size;
  /// State of the VPC NAT Gateway
  final pulumi.Input<String>? state;
  /// The egress timeout value for TCP connections of the VPC NAT Gateway.
  final pulumi.Input<int>? tcpTimeoutSeconds;
  /// The type of the VPC NAT Gateway.
  final pulumi.Input<String>? type;
  /// The egress timeout value for UDP connections of the VPC NAT Gateway.
  final pulumi.Input<int>? udpTimeoutSeconds;
  /// Updated at timestamp for the VPC NAT Gateway.
  final pulumi.Input<String>? updatedAt;
  /// The ingress VPC configuration of the VPC NAT Gateway, the supported arguments are
  /// documented below.
  final pulumi.Input<List<VpcNatGatewayVpc>>? vpcs;

  /// Creates a new [VpcNatGatewayState].
  /// [createdAt] Created at timestamp for the VPC NAT Gateway.
  /// [egresses] Embeds the list of public egresses assigned to the VPC NAT Gateway: resolves as list of
  /// [icmpTimeoutSeconds] The egress timeout value for ICMP connections of the VPC NAT Gateway.
  /// [name] The name of the VPC NAT Gateway.
  /// [projectId] ID of the project to which the VPC NAT Gateway will be assigned.
  /// [region] The region for the VPC NAT Gateway.
  /// [size] The size of the VPC NAT Gateway.
  /// [state] State of the VPC NAT Gateway
  /// [tcpTimeoutSeconds] The egress timeout value for TCP connections of the VPC NAT Gateway.
  /// [type] The type of the VPC NAT Gateway.
  /// [udpTimeoutSeconds] The egress timeout value for UDP connections of the VPC NAT Gateway.
  /// [updatedAt] Updated at timestamp for the VPC NAT Gateway.
  /// [vpcs] The ingress VPC configuration of the VPC NAT Gateway, the supported arguments are
  VpcNatGatewayState({
    this.createdAt,
    this.egresses,
    this.icmpTimeoutSeconds,
    this.name,
    this.projectId,
    this.region,
    this.size,
    this.state,
    this.tcpTimeoutSeconds,
    this.type,
    this.udpTimeoutSeconds,
    this.updatedAt,
    this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'egresses': ?pulumi.Input.mapOptionalInputValue<List<VpcNatGatewayEgress>, List<Map<String, dynamic>>>(egresses, (value) => pulumi.Input.encodeList<VpcNatGatewayEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'icmpTimeoutSeconds': ?icmpTimeoutSeconds,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'size': ?size,
      'state': ?state,
      'tcpTimeoutSeconds': ?tcpTimeoutSeconds,
      'type': ?type,
      'udpTimeoutSeconds': ?udpTimeoutSeconds,
      'updatedAt': ?updatedAt,
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<VpcNatGatewayVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<VpcNatGatewayVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpcNatGatewayState.fromMap(Map<String, dynamic> map) {
    return VpcNatGatewayState(
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      egresses: map['egresses'] == null ? null : (pulumi.Input.decodeList<VpcNatGatewayEgress>(map['egresses'], (value) => VpcNatGatewayEgress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      icmpTimeoutSeconds: map['icmpTimeoutSeconds'] == null ? null : (map['icmpTimeoutSeconds'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tcpTimeoutSeconds: map['tcpTimeoutSeconds'] == null ? null : (map['tcpTimeoutSeconds'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      udpTimeoutSeconds: map['udpTimeoutSeconds'] == null ? null : (map['udpTimeoutSeconds'] as int).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
      vpcs: map['vpcs'] == null ? null : (pulumi.Input.decodeList<VpcNatGatewayVpc>(map['vpcs'], (value) => VpcNatGatewayVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

