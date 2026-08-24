// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dex_rule_targeted_test_data.dart';

class GetZeroTrustDexRuleTargetedTest {
  /// The configuration object which contains the details for the WARP client to conduct the test.
  final pulumi.Input<GetZeroTrustDexRuleTargetedTestData> data;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> name;
  final pulumi.Input<String> testId;

  /// Creates a new [GetZeroTrustDexRuleTargetedTest].
  /// [data] The configuration object which contains the details for the WARP client to conduct the test.
  /// [enabled] Required.
  /// [name] Required.
  /// [testId] Required.
  const GetZeroTrustDexRuleTargetedTest({
    required this.data,
    required this.enabled,
    required this.name,
    required this.testId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': pulumi.Input.mapInputValue<GetZeroTrustDexRuleTargetedTestData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'enabled': enabled,
      'name': name,
      'testId': testId,
    };
  }

  factory GetZeroTrustDexRuleTargetedTest.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexRuleTargetedTest(
      data: pulumi.Input.fromValue(GetZeroTrustDexRuleTargetedTestData.fromMap((map['data']! as Map).cast<String, dynamic>())),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      testId: pulumi.Input.fromValue(map['testId'] as String),
    );
  }
}
