// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dex_test_data.dart';
import 'zero_trust_dex_test_target_policy.dart';

/// Input properties used for looking up and filtering ZeroTrustDexTest resources.
class ZeroTrustDexTestState {
  /// Unique identifier linked to an account.
  final pulumi.Input<String?>? accountId;
  /// The configuration object which contains the details for the WARP client to conduct the test.
  final pulumi.Input<ZeroTrustDexTestData?>? data;
  /// Additional details about the test.
  final pulumi.Input<String?>? description;
  /// Determines whether or not the test is active.
  final pulumi.Input<bool?>? enabled;
  /// How often the test will run.
  final pulumi.Input<String?>? interval;
  /// The name of the DEX test. Must be unique.
  final pulumi.Input<String?>? name;
  /// DEX rules targeted by this test
  final pulumi.Input<List<ZeroTrustDexTestTargetPolicy>?>? targetPolicies;
  final pulumi.Input<bool?>? targeted;
  /// The unique identifier for the test.
  final pulumi.Input<String?>? testId;

  /// Creates a new [ZeroTrustDexTestState].
  /// [accountId] Unique identifier linked to an account.
  /// [data] The configuration object which contains the details for the WARP client to conduct the test.
  /// [description] Additional details about the test.
  /// [enabled] Determines whether or not the test is active.
  /// [interval] How often the test will run.
  /// [name] The name of the DEX test. Must be unique.
  /// [targetPolicies] DEX rules targeted by this test
  /// [targeted] Optional.
  /// [testId] The unique identifier for the test.
  const ZeroTrustDexTestState({
    this.accountId,
    this.data,
    this.description,
    this.enabled,
    this.interval,
    this.name,
    this.targetPolicies,
    this.targeted,
    this.testId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'data': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDexTestData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'interval': ?interval,
      'name': ?name,
      'targetPolicies': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDexTestTargetPolicy>, List<Map<String, dynamic>>>(targetPolicies, (value) => pulumi.Input.encodeList<ZeroTrustDexTestTargetPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targeted': ?targeted,
      'testId': ?testId,
    };
  }

  factory ZeroTrustDexTestState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDexTestState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDexTestData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPolicies: (() { final guardedValue = map['targetPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDexTestTargetPolicy>(guardedValue, (value) => ZeroTrustDexTestTargetPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targeted: (() { final guardedValue = map['targeted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      testId: (() { final guardedValue = map['testId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
