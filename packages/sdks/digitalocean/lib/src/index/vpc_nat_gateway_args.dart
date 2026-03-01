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
    pulumi.Output<int>? icmpTimeoutSeconds,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    required pulumi.Output<String> region,
    required pulumi.Output<int> size,
    pulumi.Output<int>? tcpTimeoutSeconds,
    required pulumi.Output<String> type,
    pulumi.Output<int>? udpTimeoutSeconds,
    required pulumi.Output<List<VpcNatGatewayVpc>> vpcs,
  }) :
      icmpTimeoutSeconds = pulumi.Input.asOptionalInput<int>(icmpTimeoutSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asInput<String>(region),
      size = pulumi.Input.asInput<int>(size),
      tcpTimeoutSeconds = pulumi.Input.asOptionalInput<int>(tcpTimeoutSeconds),
      type = pulumi.Input.asInput<String>(type),
      udpTimeoutSeconds = pulumi.Input.asOptionalInput<int>(udpTimeoutSeconds),
      vpcs = pulumi.Input.asInput<List<VpcNatGatewayVpc>>(vpcs);

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
      icmpTimeoutSeconds: map['icmpTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['icmpTimeoutSeconds'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      size: pulumi.Output.create<int>(map['size'] as int),
      tcpTimeoutSeconds: map['tcpTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['tcpTimeoutSeconds'] as int),
      type: pulumi.Output.create<String>(map['type'] as String),
      udpTimeoutSeconds: map['udpTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['udpTimeoutSeconds'] as int),
      vpcs: pulumi.Output.create<List<VpcNatGatewayVpc>>(pulumi.Input.decodeList<VpcNatGatewayVpc>(map['vpcs'], (value) => VpcNatGatewayVpc.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

