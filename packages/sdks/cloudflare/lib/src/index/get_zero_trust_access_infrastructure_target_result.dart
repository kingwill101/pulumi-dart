// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_access_infrastructure_target_filter.dart';
import 'get_zero_trust_access_infrastructure_target_ip.dart';

/// Result data returned by getZeroTrustAccessInfrastructureTarget.
class GetZeroTrustAccessInfrastructureTargetResult {
  /// Account identifier
  final String? accountId;
  /// Date and time at which the target was created
  final String? createdAt;
  final GetZeroTrustAccessInfrastructureTargetFilter? filter;
  /// A non-unique field that refers to a target
  final String? hostname;
  /// Target identifier
  final String? id;
  /// The IPv4/IPv6 address that identifies where to reach a target
  final GetZeroTrustAccessInfrastructureTargetIp? ip;
  /// Date and time at which the target was modified
  final String? modifiedAt;
  /// Target identifier
  final String? targetId;

  /// Creates a new [GetZeroTrustAccessInfrastructureTargetResult].
  /// [accountId] Account identifier
  /// [createdAt] Date and time at which the target was created
  /// [filter] Optional.
  /// [hostname] A non-unique field that refers to a target
  /// [id] Target identifier
  /// [ip] The IPv4/IPv6 address that identifies where to reach a target
  /// [modifiedAt] Date and time at which the target was modified
  /// [targetId] Target identifier
  const GetZeroTrustAccessInfrastructureTargetResult({
    this.accountId,
    this.createdAt,
    this.filter,
    this.hostname,
    this.id,
    this.ip,
    this.modifiedAt,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'filter': ?filter?.toMap(),
      'hostname': ?hostname,
      'id': ?id,
      'ip': ?ip?.toMap(),
      'modifiedAt': ?modifiedAt,
      'targetId': ?targetId,
    };
  }

  factory GetZeroTrustAccessInfrastructureTargetResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessInfrastructureTargetResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustAccessInfrastructureTargetFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return GetZeroTrustAccessInfrastructureTargetIp.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
