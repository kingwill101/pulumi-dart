// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';
import 'pool_status_patch.dart';

/// ResourcePoolStatusRequestStatus contains the calculated pool status information.
class ResourcePoolStatusRequestStatusPatch {
  /// Conditions provide information about the state of the request. A condition with type=Complete or type=Failed will always be set when the status is populated.
  ///
  /// Known condition types: - "Complete": True when the request has been processed successfully - "Failed": True when the request could not be processed
  final pulumi.Input<List<ConditionPatch>>? conditions;
  /// PoolCount is the total number of pools that matched the filter criteria, regardless of truncation. This helps users understand how many pools exist even when the response is truncated. A value of 0 means no pools matched the filter criteria.
  final pulumi.Input<int>? poolCount;
  /// Pools contains the first `spec.limit` matching pools, sorted by driver then pool name. If `len(pools) &lt; poolCount`, the list was truncated. When omitted, no pools matched the request filters.
  final pulumi.Input<List<PoolStatusPatch>>? pools;

  /// Creates a new [ResourcePoolStatusRequestStatusPatch].
  /// [conditions] Conditions provide information about the state of the request. A condition with type=Complete or type=Failed will always be set when the status is populated.
  /// [poolCount] PoolCount is the total number of pools that matched the filter criteria, regardless of truncation. This helps users understand how many pools exist even when the response is truncated. A value of 0 means no pools matched the filter criteria.
  /// [pools] Pools contains the first `spec.limit` matching pools, sorted by driver then pool name. If `len(pools) &lt; poolCount`, the list was truncated. When omitted, no pools matched the request filters.
  const ResourcePoolStatusRequestStatusPatch({
    this.conditions,
    this.poolCount,
    this.pools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'poolCount': ?poolCount,
      'pools': ?pulumi.Input.mapOptionalInputValue<List<PoolStatusPatch>, List<Map<String, dynamic>>>(pools, (value) => pulumi.Input.encodeList<PoolStatusPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourcePoolStatusRequestStatusPatch.fromMap(Map<String, dynamic> map) {
    return ResourcePoolStatusRequestStatusPatch(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionPatch>(guardedValue, (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      poolCount: (() { final guardedValue = map['poolCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pools: (() { final guardedValue = map['pools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolStatusPatch>(guardedValue, (value) => PoolStatusPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
