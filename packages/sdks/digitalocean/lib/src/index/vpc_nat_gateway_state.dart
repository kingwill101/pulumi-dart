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
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<VpcNatGatewayEgress>>? egresses,
    pulumi.Output<int>? icmpTimeoutSeconds,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<int>? size,
    pulumi.Output<String>? state,
    pulumi.Output<int>? tcpTimeoutSeconds,
    pulumi.Output<String>? type,
    pulumi.Output<int>? udpTimeoutSeconds,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<List<VpcNatGatewayVpc>>? vpcs,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      egresses = pulumi.Input.asOptionalInput<List<VpcNatGatewayEgress>>(egresses),
      icmpTimeoutSeconds = pulumi.Input.asOptionalInput<int>(icmpTimeoutSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      size = pulumi.Input.asOptionalInput<int>(size),
      state = pulumi.Input.asOptionalInput<String>(state),
      tcpTimeoutSeconds = pulumi.Input.asOptionalInput<int>(tcpTimeoutSeconds),
      type = pulumi.Input.asOptionalInput<String>(type),
      udpTimeoutSeconds = pulumi.Input.asOptionalInput<int>(udpTimeoutSeconds),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      vpcs = pulumi.Input.asOptionalInput<List<VpcNatGatewayVpc>>(vpcs);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      egresses: map['egresses'] == null ? null : pulumi.Output.create<List<VpcNatGatewayEgress>>(pulumi.Input.decodeList<VpcNatGatewayEgress>(map['egresses'], (value) => VpcNatGatewayEgress.fromMap((value as Map).cast<String, dynamic>()))),
      icmpTimeoutSeconds: map['icmpTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['icmpTimeoutSeconds'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tcpTimeoutSeconds: map['tcpTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['tcpTimeoutSeconds'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      udpTimeoutSeconds: map['udpTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['udpTimeoutSeconds'] as int),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      vpcs: map['vpcs'] == null ? null : pulumi.Output.create<List<VpcNatGatewayVpc>>(pulumi.Input.decodeList<VpcNatGatewayVpc>(map['vpcs'], (value) => VpcNatGatewayVpc.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

