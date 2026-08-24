// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_infrastructure_target_filter.dart';

/// {@template pulumi_index_get_zero_trust_access_infrastructure_target_get_zero_trust_access_infrastructure_target_args_doc}
/// Arguments for getZeroTrustAccessInfrastructureTarget.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_infrastructure_target_get_zero_trust_access_infrastructure_target_args_doc}
class GetZeroTrustAccessInfrastructureTargetArgs {
  /// Account identifier
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustAccessInfrastructureTargetFilter?>? filter;
  /// Target identifier
  final pulumi.Input<String?>? targetId;

  /// Creates a new [GetZeroTrustAccessInfrastructureTargetArgs].
  /// [accountId] Account identifier
  /// [filter] Optional.
  /// [targetId] Target identifier
  const GetZeroTrustAccessInfrastructureTargetArgs({
    this.accountId,
    this.filter,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustAccessInfrastructureTargetFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'targetId': ?targetId,
    };
  }

  factory GetZeroTrustAccessInfrastructureTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessInfrastructureTargetArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustAccessInfrastructureTargetFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
