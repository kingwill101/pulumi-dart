// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDexRulesResultRuleTargetedTestData {
  /// The desired endpoint to test.
  final pulumi.Input<String> host;
  /// The type of test.
  /// Available values: "http", "traceroute".
  final pulumi.Input<String> kind;
  /// The HTTP request method type.
  /// Available values: "GET".
  final pulumi.Input<String> method;

  /// Creates a new [GetZeroTrustDexRulesResultRuleTargetedTestData].
  /// [host] The desired endpoint to test.
  /// [kind] The type of test.
  /// [method] The HTTP request method type.
  const GetZeroTrustDexRulesResultRuleTargetedTestData({
    required this.host,
    required this.kind,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'kind': kind,
      'method': method,
    };
  }

  factory GetZeroTrustDexRulesResultRuleTargetedTestData.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexRulesResultRuleTargetedTestData(
      host: pulumi.Input.fromValue(map['host'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      method: pulumi.Input.fromValue(map['method'] as String),
    );
  }
}
