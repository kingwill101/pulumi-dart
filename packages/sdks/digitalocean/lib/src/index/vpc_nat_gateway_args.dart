// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_nat_gateway_vpc.dart';

/// {@template pulumi_index_vpc_nat_gateway_vpc_nat_gateway_args_doc}
/// The set of arguments for VpcNatGateway.
/// {@endtemplate}
/// {@macro pulumi_index_vpc_nat_gateway_vpc_nat_gateway_args_doc}
class VpcNatGatewayArgs {
  /// The egress timeout value for ICMP connections of the VPC NAT Gateway.
  final pulumi.Input<int>? icmpTimeoutSeconds;
  /// The name of the VPC NAT Gateway.
  final pulumi.Input<String>? name;
  /// ID of the project to which the VPC NAT Gateway will be assigned.
  final pulumi.Input<String>? projectId;
  /// The region for the VPC NAT Gateway.
  final pulumi.Input<String> region;
  /// The size of the VPC NAT Gateway.
  final pulumi.Input<int> size;
  /// The egress timeout value for TCP connections of the VPC NAT Gateway.
  final pulumi.Input<int>? tcpTimeoutSeconds;
  /// The type of the VPC NAT Gateway.
  final pulumi.Input<String> type;
  /// The egress timeout value for UDP connections of the VPC NAT Gateway.
  final pulumi.Input<int>? udpTimeoutSeconds;
  /// The ingress VPC configuration of the VPC NAT Gateway, the supported arguments are
  /// documented below.
  final pulumi.Input<List<VpcNatGatewayVpc>> vpcs;

  /// Creates a new [VpcNatGatewayArgs].
  /// [icmpTimeoutSeconds] The egress timeout value for ICMP connections of the VPC NAT Gateway.
  /// [name] The name of the VPC NAT Gateway.
  /// [projectId] ID of the project to which the VPC NAT Gateway will be assigned.
  /// [region] The region for the VPC NAT Gateway.
  /// [size] The size of the VPC NAT Gateway.
  /// [tcpTimeoutSeconds] The egress timeout value for TCP connections of the VPC NAT Gateway.
  /// [type] The type of the VPC NAT Gateway.
  /// [udpTimeoutSeconds] The egress timeout value for UDP connections of the VPC NAT Gateway.
  /// [vpcs] The ingress VPC configuration of the VPC NAT Gateway, the supported arguments are
  VpcNatGatewayArgs({
    this.icmpTimeoutSeconds,
    this.name,
    this.projectId,
    required this.region,
    required this.size,
    this.tcpTimeoutSeconds,
    required this.type,
    this.udpTimeoutSeconds,
    required this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icmpTimeoutSeconds': ?icmpTimeoutSeconds,
      'name': ?name,
      'projectId': ?projectId,
      'region': region,
      'size': size,
      'tcpTimeoutSeconds': ?tcpTimeoutSeconds,
      'type': type,
      'udpTimeoutSeconds': ?udpTimeoutSeconds,
      'vpcs': pulumi.Input.mapInputValue<List<VpcNatGatewayVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<VpcNatGatewayVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpcNatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return VpcNatGatewayArgs(
      icmpTimeoutSeconds: map['icmpTimeoutSeconds'] == null ? null : (map['icmpTimeoutSeconds']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: (map['region'] as String).input(),
      size: (map['size'] as int).input(),
      tcpTimeoutSeconds: map['tcpTimeoutSeconds'] == null ? null : (map['tcpTimeoutSeconds']! as int).input(),
      type: (map['type'] as String).input(),
      udpTimeoutSeconds: map['udpTimeoutSeconds'] == null ? null : (map['udpTimeoutSeconds']! as int).input(),
      vpcs: (pulumi.Input.decodeList<VpcNatGatewayVpc>(map['vpcs'], (value) => VpcNatGatewayVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

