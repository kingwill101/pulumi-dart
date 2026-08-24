// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_infrastructure_targets_result_ip.dart';

class GetZeroTrustAccessInfrastructureTargetsResult {
  /// Date and time at which the target was created
  final pulumi.Input<String> createdAt;
  /// A non-unique field that refers to a target
  final pulumi.Input<String> hostname;
  /// Target identifier
  final pulumi.Input<String> id;
  /// The IPv4/IPv6 address that identifies where to reach a target
  final pulumi.Input<GetZeroTrustAccessInfrastructureTargetsResultIp> ip;
  /// Date and time at which the target was modified
  final pulumi.Input<String> modifiedAt;

  /// Creates a new [GetZeroTrustAccessInfrastructureTargetsResult].
  /// [createdAt] Date and time at which the target was created
  /// [hostname] A non-unique field that refers to a target
  /// [id] Target identifier
  /// [ip] The IPv4/IPv6 address that identifies where to reach a target
  /// [modifiedAt] Date and time at which the target was modified
  const GetZeroTrustAccessInfrastructureTargetsResult({
    required this.createdAt,
    required this.hostname,
    required this.id,
    required this.ip,
    required this.modifiedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'hostname': hostname,
      'id': id,
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessInfrastructureTargetsResultIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'modifiedAt': modifiedAt,
    };
  }

  factory GetZeroTrustAccessInfrastructureTargetsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessInfrastructureTargetsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessInfrastructureTargetsResultIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
    );
  }
}
