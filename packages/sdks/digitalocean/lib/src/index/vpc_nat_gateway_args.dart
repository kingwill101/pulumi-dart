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
      icmpTimeoutSeconds: (() { final guardedValue = map['icmpTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
      tcpTimeoutSeconds: (() { final guardedValue = map['tcpTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      udpTimeoutSeconds: (() { final guardedValue = map['udpTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcs: pulumi.Input.fromValue(pulumi.Input.decodeList<VpcNatGatewayVpc>(map['vpcs']!, (value) => VpcNatGatewayVpc.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

