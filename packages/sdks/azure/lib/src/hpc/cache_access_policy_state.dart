// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_access_policy_access_rule.dart';

/// Input properties used for looking up and filtering CacheAccessPolicy resources.
class CacheAccessPolicyState {
  /// One or more `accessRule` blocks (up to three) as defined below.
  final pulumi.Input<List<CacheAccessPolicyAccessRule>>? accessRules;
  /// The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created.
  final pulumi.Input<String>? hpcCacheId;
  /// The name which should be used for this HPC Cache Access Policy. Changing this forces a new HPC Cache Access Policy to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [CacheAccessPolicyState].
  /// [accessRules] One or more `accessRule` blocks (up to three) as defined below.
  /// [hpcCacheId] The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created.
  /// [name] The name which should be used for this HPC Cache Access Policy. Changing this forces a new HPC Cache Access Policy to be created.
  const CacheAccessPolicyState({
    this.accessRules,
    this.hpcCacheId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRules': ?pulumi.Input.mapOptionalInputValue<List<CacheAccessPolicyAccessRule>, List<Map<String, dynamic>>>(accessRules, (value) => pulumi.Input.encodeList<CacheAccessPolicyAccessRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hpcCacheId': ?hpcCacheId,
      'name': ?name,
    };
  }

  factory CacheAccessPolicyState.fromMap(Map<String, dynamic> map) {
    return CacheAccessPolicyState(
      accessRules: (() { final guardedValue = map['accessRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CacheAccessPolicyAccessRule>(guardedValue, (value) => CacheAccessPolicyAccessRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hpcCacheId: (() { final guardedValue = map['hpcCacheId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
