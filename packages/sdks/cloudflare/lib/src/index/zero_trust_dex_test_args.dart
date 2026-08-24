// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dex_test_data.dart';
import 'zero_trust_dex_test_target_policy.dart';

/// {@template pulumi_index_zero_trust_dex_test_zero_trust_dex_test_args_doc}
/// The set of arguments for ZeroTrustDexTest.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dex_test_zero_trust_dex_test_args_doc}
class ZeroTrustDexTestArgs {
  /// Unique identifier linked to an account.
  final pulumi.Input<String> accountId;
  /// The configuration object which contains the details for the WARP client to conduct the test.
  final pulumi.Input<ZeroTrustDexTestData> data;
  /// Additional details about the test.
  final pulumi.Input<String?>? description;
  /// Determines whether or not the test is active.
  final pulumi.Input<bool> enabled;
  /// How often the test will run.
  final pulumi.Input<String> interval;
  /// The name of the DEX test. Must be unique.
  final pulumi.Input<String> name;
  /// DEX rules targeted by this test
  final pulumi.Input<List<ZeroTrustDexTestTargetPolicy>?>? targetPolicies;

  /// Creates a new [ZeroTrustDexTestArgs].
  /// [accountId] Unique identifier linked to an account.
  /// [data] The configuration object which contains the details for the WARP client to conduct the test.
  /// [description] Additional details about the test.
  /// [enabled] Determines whether or not the test is active.
  /// [interval] How often the test will run.
  /// [name] The name of the DEX test. Must be unique.
  /// [targetPolicies] DEX rules targeted by this test
  const ZeroTrustDexTestArgs({
    required this.accountId,
    required this.data,
    this.description,
    required this.enabled,
    required this.interval,
    required this.name,
    this.targetPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'data': pulumi.Input.mapInputValue<ZeroTrustDexTestData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'description': ?description,
      'enabled': enabled,
      'interval': interval,
      'name': name,
      'targetPolicies': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDexTestTargetPolicy>, List<Map<String, dynamic>>>(targetPolicies, (value) => pulumi.Input.encodeList<ZeroTrustDexTestTargetPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDexTestArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDexTestArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      data: pulumi.Input.fromValue(ZeroTrustDexTestData.fromMap((map['data']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      targetPolicies: (() { final guardedValue = map['targetPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDexTestTargetPolicy>(guardedValue, (value) => ZeroTrustDexTestTargetPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
