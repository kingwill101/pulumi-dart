// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_access_policy_access_rule.dart';

/// Input properties used for looking up and filtering CacheAccessPolicy resources.
class CacheAccessPolicyState {
  /// One or more `access_rule` blocks (up to three) as defined below.
  final pulumi.Input<List<CacheAccessPolicyAccessRule>>? accessRules;
  /// The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created.
  final pulumi.Input<String>? hpcCacheId;
  /// The name which should be used for this HPC Cache Access Policy. Changing this forces a new HPC Cache Access Policy to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [CacheAccessPolicyState].
  /// [accessRules] One or more `access_rule` blocks (up to three) as defined below.
  /// [hpcCacheId] The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created.
  /// [name] The name which should be used for this HPC Cache Access Policy. Changing this forces a new HPC Cache Access Policy to be created.
  CacheAccessPolicyState({
    pulumi.Output<List<CacheAccessPolicyAccessRule>>? accessRules,
    pulumi.Output<String>? hpcCacheId,
    pulumi.Output<String>? name,
  }) :
      accessRules = pulumi.Input.asOptionalInput<List<CacheAccessPolicyAccessRule>>(accessRules),
      hpcCacheId = pulumi.Input.asOptionalInput<String>(hpcCacheId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRules': ?pulumi.Input.mapOptionalInputValue<List<CacheAccessPolicyAccessRule>, List<Map<String, dynamic>>>(accessRules, (value) => pulumi.Input.encodeList<CacheAccessPolicyAccessRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hpcCacheId': ?hpcCacheId,
      'name': ?name,
    };
  }

  factory CacheAccessPolicyState.fromMap(Map<String, dynamic> map) {
    return CacheAccessPolicyState(
      accessRules: map['accessRules'] == null ? null : pulumi.Output.create<List<CacheAccessPolicyAccessRule>>(pulumi.Input.decodeList<CacheAccessPolicyAccessRule>(map['accessRules'], (value) => CacheAccessPolicyAccessRule.fromMap((value as Map).cast<String, dynamic>()))),
      hpcCacheId: map['hpcCacheId'] == null ? null : pulumi.Output.create<String>(map['hpcCacheId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

