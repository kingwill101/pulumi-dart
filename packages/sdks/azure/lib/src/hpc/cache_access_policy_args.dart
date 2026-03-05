// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_access_policy_access_rule.dart';

/// {@template pulumi_hpc_cache_access_policy_cache_access_policy_args_doc}
/// The set of arguments for CacheAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_hpc_cache_access_policy_cache_access_policy_args_doc}
class CacheAccessPolicyArgs {
  /// One or more `access_rule` blocks (up to three) as defined below.
  final pulumi.Input<List<CacheAccessPolicyAccessRule>> accessRules;
  /// The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created.
  final pulumi.Input<String> hpcCacheId;
  /// The name which should be used for this HPC Cache Access Policy. Changing this forces a new HPC Cache Access Policy to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [CacheAccessPolicyArgs].
  /// [accessRules] One or more `access_rule` blocks (up to three) as defined below.
  /// [hpcCacheId] The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created.
  /// [name] The name which should be used for this HPC Cache Access Policy. Changing this forces a new HPC Cache Access Policy to be created.
  CacheAccessPolicyArgs({
    required this.accessRules,
    required this.hpcCacheId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRules': pulumi.Input.mapInputValue<List<CacheAccessPolicyAccessRule>, List<Map<String, dynamic>>>(accessRules, (value) => pulumi.Input.encodeList<CacheAccessPolicyAccessRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hpcCacheId': hpcCacheId,
      'name': ?name,
    };
  }

  factory CacheAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return CacheAccessPolicyArgs(
      accessRules: pulumi.Input.fromValue(pulumi.Input.decodeList<CacheAccessPolicyAccessRule>(map['accessRules']!, (value) => CacheAccessPolicyAccessRule.fromMap((value as Map).cast<String, dynamic>()))),
      hpcCacheId: pulumi.Input.fromValue(map['hpcCacheId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

