// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dex_test_data.dart';
import 'get_zero_trust_dex_test_filter.dart';
import 'get_zero_trust_dex_test_target_policy.dart';

/// Result data returned by getZeroTrustDexTest.
class GetZeroTrustDexTestResult {
  /// Unique identifier linked to an account.
  final String? accountId;
  /// Date the test was created, in RFC 3339 format.
  final String? created;
  /// The configuration object which contains the details for the WARP client to conduct the test.
  final GetZeroTrustDexTestData? data;
  /// Additional details about the test.
  final String? description;
  /// The unique identifier for the test.
  final String? dexTestId;
  /// Determines whether or not the test is active.
  final bool? enabled;
  final GetZeroTrustDexTestFilter? filter;
  /// The unique identifier for the test.
  final String? id;
  /// How often the test will run.
  final String? interval;
  /// The name of the DEX test. Must be unique.
  final String? name;
  /// DEX rules targeted by this test
  final List<GetZeroTrustDexTestTargetPolicy>? targetPolicies;
  final bool? targeted;
  /// The unique identifier for the test.
  final String? testId;
  /// Date the test was last updated, in RFC 3339 format.
  final String? updated;

  /// Creates a new [GetZeroTrustDexTestResult].
  /// [accountId] Unique identifier linked to an account.
  /// [created] Date the test was created, in RFC 3339 format.
  /// [data] The configuration object which contains the details for the WARP client to conduct the test.
  /// [description] Additional details about the test.
  /// [dexTestId] The unique identifier for the test.
  /// [enabled] Determines whether or not the test is active.
  /// [filter] Optional.
  /// [id] The unique identifier for the test.
  /// [interval] How often the test will run.
  /// [name] The name of the DEX test. Must be unique.
  /// [targetPolicies] DEX rules targeted by this test
  /// [targeted] Optional.
  /// [testId] The unique identifier for the test.
  /// [updated] Date the test was last updated, in RFC 3339 format.
  const GetZeroTrustDexTestResult({
    this.accountId,
    this.created,
    this.data,
    this.description,
    this.dexTestId,
    this.enabled,
    this.filter,
    this.id,
    this.interval,
    this.name,
    this.targetPolicies,
    this.targeted,
    this.testId,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'data': ?data?.toMap(),
      'description': ?description,
      'dexTestId': ?dexTestId,
      'enabled': ?enabled,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'interval': ?interval,
      'name': ?name,
      'targetPolicies': ?(() { final guardedValue = targetPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDexTestTargetPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'targeted': ?targeted,
      'testId': ?testId,
      'updated': ?updated,
    };
  }

  factory GetZeroTrustDexTestResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexTestResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return GetZeroTrustDexTestData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dexTestId: (() { final guardedValue = map['dexTestId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustDexTestFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetPolicies: (() { final guardedValue = map['targetPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDexTestTargetPolicy>(guardedValue, (value) => GetZeroTrustDexTestTargetPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      targeted: (() { final guardedValue = map['targeted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      testId: (() { final guardedValue = map['testId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
