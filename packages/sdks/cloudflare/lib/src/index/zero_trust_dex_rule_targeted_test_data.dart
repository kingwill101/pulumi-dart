// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDexRuleTargetedTestData {
  /// The desired endpoint to test.
  final pulumi.Input<String?>? host;
  /// The type of test.
  /// Available values: "http", "traceroute".
  final pulumi.Input<String?>? kind;
  /// The HTTP request method type.
  /// Available values: "GET".
  final pulumi.Input<String?>? method;

  /// Creates a new [ZeroTrustDexRuleTargetedTestData].
  /// [host] The desired endpoint to test.
  /// [kind] The type of test.
  /// [method] The HTTP request method type.
  const ZeroTrustDexRuleTargetedTestData({
    this.host,
    this.kind,
    this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'kind': ?kind,
      'method': ?method,
    };
  }

  factory ZeroTrustDexRuleTargetedTestData.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDexRuleTargetedTestData(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
