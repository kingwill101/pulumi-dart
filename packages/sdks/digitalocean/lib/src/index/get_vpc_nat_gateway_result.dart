// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_nat_gateway_egress.dart';
import 'get_vpc_nat_gateway_vpc.dart';

/// Result data returned by getVpcNatGateway.
class GetVpcNatGatewayResult {
  final String createdAt;
  final List<GetVpcNatGatewayEgress> egresses;
  final int icmpTimeoutSeconds;
  final String? id;
  final String? name;
  final String projectId;
  final String region;
  final int size;
  final String state;
  final int tcpTimeoutSeconds;
  final String type;
  final int udpTimeoutSeconds;
  final String updatedAt;
  final List<GetVpcNatGatewayVpc> vpcs;

  /// Creates a new [GetVpcNatGatewayResult].
  /// [createdAt] Required.
  /// [egresses] Required.
  /// [icmpTimeoutSeconds] Required.
  /// [id] Optional.
  /// [name] Optional.
  /// [projectId] Required.
  /// [region] Required.
  /// [size] Required.
  /// [state] Required.
  /// [tcpTimeoutSeconds] Required.
  /// [type] Required.
  /// [udpTimeoutSeconds] Required.
  /// [updatedAt] Required.
  /// [vpcs] Required.
  GetVpcNatGatewayResult({
    required this.createdAt,
    required this.egresses,
    required this.icmpTimeoutSeconds,
    this.id,
    this.name,
    required this.projectId,
    required this.region,
    required this.size,
    required this.state,
    required this.tcpTimeoutSeconds,
    required this.type,
    required this.udpTimeoutSeconds,
    required this.updatedAt,
    required this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'egresses': pulumi.Input.encodeList<GetVpcNatGatewayEgress, Map<String, dynamic>>(egresses, (value) => value.toMap()),
      'icmpTimeoutSeconds': icmpTimeoutSeconds,
      'id': ?id,
      'name': ?name,
      'projectId': projectId,
      'region': region,
      'size': size,
      'state': state,
      'tcpTimeoutSeconds': tcpTimeoutSeconds,
      'type': type,
      'udpTimeoutSeconds': udpTimeoutSeconds,
      'updatedAt': updatedAt,
      'vpcs': pulumi.Input.encodeList<GetVpcNatGatewayVpc, Map<String, dynamic>>(vpcs, (value) => value.toMap()),
    };
  }

  factory GetVpcNatGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVpcNatGatewayResult(
      createdAt: map['createdAt'] as String,
      egresses: pulumi.Input.decodeList<GetVpcNatGatewayEgress>(map['egresses']!, (value) => GetVpcNatGatewayEgress.fromMap((value as Map).cast<String, dynamic>())),
      icmpTimeoutSeconds: map['icmpTimeoutSeconds'] as int,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      size: map['size'] as int,
      state: map['state'] as String,
      tcpTimeoutSeconds: map['tcpTimeoutSeconds'] as int,
      type: map['type'] as String,
      udpTimeoutSeconds: map['udpTimeoutSeconds'] as int,
      updatedAt: map['updatedAt'] as String,
      vpcs: pulumi.Input.decodeList<GetVpcNatGatewayVpc>(map['vpcs']!, (value) => GetVpcNatGatewayVpc.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

