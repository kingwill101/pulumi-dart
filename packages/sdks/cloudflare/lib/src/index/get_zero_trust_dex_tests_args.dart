// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dex_tests_get_zero_trust_dex_tests_args_doc}
/// Arguments for getZeroTrustDexTests.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dex_tests_get_zero_trust_dex_tests_args_doc}
class GetZeroTrustDexTestsArgs {
  /// Unique identifier linked to an account.
  final pulumi.Input<String?>? accountId;
  /// Filter by test type.
  /// Available values: "http", "traceroute".
  final pulumi.Input<String?>? kind;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter by test name.
  final pulumi.Input<String?>? testName;

  /// Creates a new [GetZeroTrustDexTestsArgs].
  /// [accountId] Unique identifier linked to an account.
  /// [kind] Filter by test type.
  /// [maxItems] Max items to fetch, default: 1000
  /// [testName] Filter by test name.
  const GetZeroTrustDexTestsArgs({
    this.accountId,
    this.kind,
    this.maxItems,
    this.testName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'kind': ?kind,
      'maxItems': ?maxItems,
      'testName': ?testName,
    };
  }

  factory GetZeroTrustDexTestsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexTestsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      testName: (() { final guardedValue = map['testName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
