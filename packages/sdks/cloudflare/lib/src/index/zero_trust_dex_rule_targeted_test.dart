// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dex_rule_targeted_test_data.dart';

class ZeroTrustDexRuleTargetedTest {
  /// The configuration object which contains the details for the WARP client to conduct the test.
  final pulumi.Input<ZeroTrustDexRuleTargetedTestData?>? data;
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? testId;

  /// Creates a new [ZeroTrustDexRuleTargetedTest].
  /// [data] The configuration object which contains the details for the WARP client to conduct the test.
  /// [enabled] Optional.
  /// [name] Optional.
  /// [testId] Optional.
  const ZeroTrustDexRuleTargetedTest({
    this.data,
    this.enabled,
    this.name,
    this.testId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDexRuleTargetedTestData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'enabled': ?enabled,
      'name': ?name,
      'testId': ?testId,
    };
  }

  factory ZeroTrustDexRuleTargetedTest.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDexRuleTargetedTest(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDexRuleTargetedTestData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testId: (() { final guardedValue = map['testId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
