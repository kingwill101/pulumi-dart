// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_infrastructure_target_ip.dart';

/// {@template pulumi_index_zero_trust_access_infrastructure_target_zero_trust_access_infrastructure_target_args_doc}
/// The set of arguments for ZeroTrustAccessInfrastructureTarget.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_access_infrastructure_target_zero_trust_access_infrastructure_target_args_doc}
class ZeroTrustAccessInfrastructureTargetArgs {
  /// Account identifier
  final pulumi.Input<String> accountId;
  /// A non-unique field that refers to a target. Case insensitive, maximum
  /// length of 255 characters, supports the use of special characters dash
  /// and period, does not support spaces, and must start and end with an
  /// alphanumeric character.
  final pulumi.Input<String> hostname;
  /// The IPv4/IPv6 address that identifies where to reach a target
  final pulumi.Input<ZeroTrustAccessInfrastructureTargetIp> ip;

  /// Creates a new [ZeroTrustAccessInfrastructureTargetArgs].
  /// [accountId] Account identifier
  /// [hostname] A non-unique field that refers to a target. Case insensitive, maximum
  /// [ip] The IPv4/IPv6 address that identifies where to reach a target
  const ZeroTrustAccessInfrastructureTargetArgs({
    required this.accountId,
    required this.hostname,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'hostname': hostname,
      'ip': pulumi.Input.mapInputValue<ZeroTrustAccessInfrastructureTargetIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessInfrastructureTargetArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessInfrastructureTargetArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      ip: pulumi.Input.fromValue(ZeroTrustAccessInfrastructureTargetIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
    );
  }
}
