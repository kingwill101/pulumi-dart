// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dex_tests_result_data.dart';
import 'get_zero_trust_dex_tests_result_target_policy.dart';

class GetZeroTrustDexTestsResult {
  /// Date the test was created, in RFC 3339 format.
  final pulumi.Input<String> created;
  /// The configuration object which contains the details for the WARP client to conduct the test.
  final pulumi.Input<GetZeroTrustDexTestsResultData> data;
  /// Additional details about the test.
  final pulumi.Input<String> description;
  /// Determines whether or not the test is active.
  final pulumi.Input<bool> enabled;
  /// The unique identifier for the test.
  final pulumi.Input<String> id;
  /// How often the test will run.
  final pulumi.Input<String> interval;
  /// The name of the DEX test. Must be unique.
  final pulumi.Input<String> name;
  /// DEX rules targeted by this test
  final pulumi.Input<List<GetZeroTrustDexTestsResultTargetPolicy>> targetPolicies;
  final pulumi.Input<bool> targeted;
  /// The unique identifier for the test.
  final pulumi.Input<String> testId;
  /// Date the test was last updated, in RFC 3339 format.
  final pulumi.Input<String> updated;

  /// Creates a new [GetZeroTrustDexTestsResult].
  /// [created] Date the test was created, in RFC 3339 format.
  /// [data] The configuration object which contains the details for the WARP client to conduct the test.
  /// [description] Additional details about the test.
  /// [enabled] Determines whether or not the test is active.
  /// [id] The unique identifier for the test.
  /// [interval] How often the test will run.
  /// [name] The name of the DEX test. Must be unique.
  /// [targetPolicies] DEX rules targeted by this test
  /// [targeted] Required.
  /// [testId] The unique identifier for the test.
  /// [updated] Date the test was last updated, in RFC 3339 format.
  const GetZeroTrustDexTestsResult({
    required this.created,
    required this.data,
    required this.description,
    required this.enabled,
    required this.id,
    required this.interval,
    required this.name,
    required this.targetPolicies,
    required this.targeted,
    required this.testId,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'data': pulumi.Input.mapInputValue<GetZeroTrustDexTestsResultData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'description': description,
      'enabled': enabled,
      'id': id,
      'interval': interval,
      'name': name,
      'targetPolicies': pulumi.Input.mapInputValue<List<GetZeroTrustDexTestsResultTargetPolicy>, List<Map<String, dynamic>>>(targetPolicies, (value) => pulumi.Input.encodeList<GetZeroTrustDexTestsResultTargetPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targeted': targeted,
      'testId': testId,
      'updated': updated,
    };
  }

  factory GetZeroTrustDexTestsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexTestsResult(
      created: pulumi.Input.fromValue(map['created'] as String),
      data: pulumi.Input.fromValue(GetZeroTrustDexTestsResultData.fromMap((map['data']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      targetPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDexTestsResultTargetPolicy>(map['targetPolicies']!, (value) => GetZeroTrustDexTestsResultTargetPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      targeted: pulumi.Input.fromValue(map['targeted'] as bool),
      testId: pulumi.Input.fromValue(map['testId'] as String),
      updated: pulumi.Input.fromValue(map['updated'] as String),
    );
  }
}
