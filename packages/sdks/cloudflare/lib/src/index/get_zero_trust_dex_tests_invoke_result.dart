// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dex_tests_result.dart';

/// Result data returned by getZeroTrustDexTests.
class GetZeroTrustDexTestsInvokeResult {
  /// Unique identifier linked to an account.
  final String? accountId;
  /// Filter by test type.
  /// Available values: "http", "traceroute".
  final String? kind;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustDexTestsResult>? results;
  /// Filter by test name.
  final String? testName;

  /// Creates a new [GetZeroTrustDexTestsInvokeResult].
  /// [accountId] Unique identifier linked to an account.
  /// [kind] Filter by test type.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [testName] Filter by test name.
  const GetZeroTrustDexTestsInvokeResult({
    this.accountId,
    this.kind,
    this.maxItems,
    this.results,
    this.testName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'kind': ?kind,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDexTestsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'testName': ?testName,
    };
  }

  factory GetZeroTrustDexTestsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexTestsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDexTestsResult>(guardedValue, (value) => GetZeroTrustDexTestsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      testName: (() { final guardedValue = map['testName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
