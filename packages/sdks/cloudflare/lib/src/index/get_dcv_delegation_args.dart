// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_dcv_delegation_get_dcv_delegation_args_doc}
/// Arguments for getDcvDelegation.
/// {@endtemplate}
/// {@macro pulumi_index_get_dcv_delegation_get_dcv_delegation_args_doc}
class GetDcvDelegationArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetDcvDelegationArgs].
  /// [zoneId] Identifier.
  const GetDcvDelegationArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetDcvDelegationArgs.fromMap(Map<String, dynamic> map) {
    return GetDcvDelegationArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
