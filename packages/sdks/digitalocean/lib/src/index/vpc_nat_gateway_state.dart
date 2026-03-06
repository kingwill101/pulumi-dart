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
  const VpcNatGatewayState({
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
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egresses: (() { final guardedValue = map['egresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcNatGatewayEgress>(guardedValue, (value) => VpcNatGatewayEgress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      icmpTimeoutSeconds: (() { final guardedValue = map['icmpTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpTimeoutSeconds: (() { final guardedValue = map['tcpTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      udpTimeoutSeconds: (() { final guardedValue = map['udpTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcs: (() { final guardedValue = map['vpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcNatGatewayVpc>(guardedValue, (value) => VpcNatGatewayVpc.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

