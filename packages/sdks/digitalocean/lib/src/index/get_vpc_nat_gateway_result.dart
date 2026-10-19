// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_nat_gateway_egress.dart';
import 'get_vpc_nat_gateway_vpc.dart';

/// Result data returned by getVpcNatGateway.
class GetVpcNatGatewayResult {
  final String? createdAt;
  final List<GetVpcNatGatewayEgress>? egresses;
  final int? icmpTimeoutSeconds;
  final String? id;
  final String? name;
  final String? projectId;
  final String? region;
  final int? size;
  final String? state;
  final int? tcpTimeoutSeconds;
  final String? type;
  final int? udpTimeoutSeconds;
  final String? updatedAt;
  final List<GetVpcNatGatewayVpc>? vpcs;

  /// Creates a new [GetVpcNatGatewayResult].
  /// [createdAt] Optional.
  /// [egresses] Optional.
  /// [icmpTimeoutSeconds] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [projectId] Optional.
  /// [region] Optional.
  /// [size] Optional.
  /// [state] Optional.
  /// [tcpTimeoutSeconds] Optional.
  /// [type] Optional.
  /// [udpTimeoutSeconds] Optional.
  /// [updatedAt] Optional.
  /// [vpcs] Optional.
  const GetVpcNatGatewayResult({
    this.createdAt,
    this.egresses,
    this.icmpTimeoutSeconds,
    this.id,
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
      'egresses': ?(() { final guardedValue = egresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcNatGatewayEgress, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'icmpTimeoutSeconds': ?icmpTimeoutSeconds,
      'id': ?id,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'size': ?size,
      'state': ?state,
      'tcpTimeoutSeconds': ?tcpTimeoutSeconds,
      'type': ?type,
      'udpTimeoutSeconds': ?udpTimeoutSeconds,
      'updatedAt': ?updatedAt,
      'vpcs': ?(() { final guardedValue = vpcs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcNatGatewayVpc, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVpcNatGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVpcNatGatewayResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      egresses: (() { final guardedValue = map['egresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcNatGatewayEgress>(guardedValue, (value) => GetVpcNatGatewayEgress.fromMap((value as Map).cast<String, dynamic>())); })(),
      icmpTimeoutSeconds: (() { final guardedValue = map['icmpTimeoutSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tcpTimeoutSeconds: (() { final guardedValue = map['tcpTimeoutSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      udpTimeoutSeconds: (() { final guardedValue = map['udpTimeoutSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcs: (() { final guardedValue = map['vpcs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcNatGatewayVpc>(guardedValue, (value) => GetVpcNatGatewayVpc.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
