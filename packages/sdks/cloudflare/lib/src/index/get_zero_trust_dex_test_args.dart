// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dex_test_filter.dart';
import 'get_zero_trust_dex_test_target_policy.dart';

/// {@template pulumi_index_get_zero_trust_dex_test_get_zero_trust_dex_test_args_doc}
/// Arguments for getZeroTrustDexTest.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dex_test_get_zero_trust_dex_test_args_doc}
class GetZeroTrustDexTestArgs {
  /// Unique identifier linked to an account.
  final pulumi.Input<String?>? accountId;
  /// The unique identifier for the test.
  final pulumi.Input<String?>? dexTestId;
  final pulumi.Input<GetZeroTrustDexTestFilter?>? filter;
  /// DEX rules targeted by this test
  final pulumi.Input<List<GetZeroTrustDexTestTargetPolicy>?>? targetPolicies;

  /// Creates a new [GetZeroTrustDexTestArgs].
  /// [accountId] Unique identifier linked to an account.
  /// [dexTestId] The unique identifier for the test.
  /// [filter] Optional.
  /// [targetPolicies] DEX rules targeted by this test
  const GetZeroTrustDexTestArgs({
    this.accountId,
    this.dexTestId,
    this.filter,
    this.targetPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'dexTestId': ?dexTestId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustDexTestFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'targetPolicies': ?pulumi.Input.mapOptionalInputValue<List<GetZeroTrustDexTestTargetPolicy>, List<Map<String, dynamic>>>(targetPolicies, (value) => pulumi.Input.encodeList<GetZeroTrustDexTestTargetPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustDexTestArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexTestArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dexTestId: (() { final guardedValue = map['dexTestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustDexTestFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetPolicies: (() { final guardedValue = map['targetPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDexTestTargetPolicy>(guardedValue, (value) => GetZeroTrustDexTestTargetPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
