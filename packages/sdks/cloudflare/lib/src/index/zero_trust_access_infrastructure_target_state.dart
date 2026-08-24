// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_infrastructure_target_ip.dart';

/// Input properties used for looking up and filtering ZeroTrustAccessInfrastructureTarget resources.
class ZeroTrustAccessInfrastructureTargetState {
  /// Account identifier
  final pulumi.Input<String?>? accountId;
  /// Date and time at which the target was created
  final pulumi.Input<String?>? createdAt;
  /// A non-unique field that refers to a target. Case insensitive, maximum
  /// length of 255 characters, supports the use of special characters dash
  /// and period, does not support spaces, and must start and end with an
  /// alphanumeric character.
  final pulumi.Input<String?>? hostname;
  /// The IPv4/IPv6 address that identifies where to reach a target
  final pulumi.Input<ZeroTrustAccessInfrastructureTargetIp?>? ip;
  /// Date and time at which the target was modified
  final pulumi.Input<String?>? modifiedAt;

  /// Creates a new [ZeroTrustAccessInfrastructureTargetState].
  /// [accountId] Account identifier
  /// [createdAt] Date and time at which the target was created
  /// [hostname] A non-unique field that refers to a target. Case insensitive, maximum
  /// [ip] The IPv4/IPv6 address that identifies where to reach a target
  /// [modifiedAt] Date and time at which the target was modified
  const ZeroTrustAccessInfrastructureTargetState({
    this.accountId,
    this.createdAt,
    this.hostname,
    this.ip,
    this.modifiedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'hostname': ?hostname,
      'ip': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessInfrastructureTargetIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'modifiedAt': ?modifiedAt,
    };
  }

  factory ZeroTrustAccessInfrastructureTargetState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessInfrastructureTargetState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessInfrastructureTargetIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
