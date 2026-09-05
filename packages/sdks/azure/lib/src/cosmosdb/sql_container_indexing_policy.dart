// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_container_indexing_policy_composite_index.dart';
import 'sql_container_indexing_policy_excluded_path.dart';
import 'sql_container_indexing_policy_included_path.dart';
import 'sql_container_indexing_policy_spatial_index.dart';

class SqlContainerIndexingPolicy {
  /// One or more `compositeIndex` blocks as defined below.
  final pulumi.Input<List<SqlContainerIndexingPolicyCompositeIndex>?>? compositeIndices;
  /// One or more `excludedPath` blocks as defined below. Either `includedPath` or `excludedPath` must contain the `path` `/*`
  final pulumi.Input<List<SqlContainerIndexingPolicyExcludedPath>?>? excludedPaths;
  /// One or more `includedPath` blocks as defined below. Either `includedPath` or `excludedPath` must contain the `path` `/*`
  final pulumi.Input<List<SqlContainerIndexingPolicyIncludedPath>?>? includedPaths;
  /// Indicates the indexing mode. Possible values include: `consistent` and `none`. Defaults to `consistent`.
  final pulumi.Input<String?>? indexingMode;
  /// One or more `spatialIndex` blocks as defined below.
  final pulumi.Input<List<SqlContainerIndexingPolicySpatialIndex>?>? spatialIndices;

  /// Creates a new [SqlContainerIndexingPolicy].
  /// [compositeIndices] One or more `compositeIndex` blocks as defined below.
  /// [excludedPaths] One or more `excludedPath` blocks as defined below. Either `includedPath` or `excludedPath` must contain the `path` `/*`
  /// [includedPaths] One or more `includedPath` blocks as defined below. Either `includedPath` or `excludedPath` must contain the `path` `/*`
  /// [indexingMode] Indicates the indexing mode. Possible values include: `consistent` and `none`. Defaults to `consistent`.
  /// [spatialIndices] One or more `spatialIndex` blocks as defined below.
  const SqlContainerIndexingPolicy({
    this.compositeIndices,
    this.excludedPaths,
    this.includedPaths,
    this.indexingMode,
    this.spatialIndices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositeIndices': ?pulumi.Input.mapOptionalInputValue<List<SqlContainerIndexingPolicyCompositeIndex>, List<Map<String, dynamic>>>(compositeIndices, (value) => pulumi.Input.encodeList<SqlContainerIndexingPolicyCompositeIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedPaths': ?pulumi.Input.mapOptionalInputValue<List<SqlContainerIndexingPolicyExcludedPath>, List<Map<String, dynamic>>>(excludedPaths, (value) => pulumi.Input.encodeList<SqlContainerIndexingPolicyExcludedPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includedPaths': ?pulumi.Input.mapOptionalInputValue<List<SqlContainerIndexingPolicyIncludedPath>, List<Map<String, dynamic>>>(includedPaths, (value) => pulumi.Input.encodeList<SqlContainerIndexingPolicyIncludedPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'indexingMode': ?indexingMode,
      'spatialIndices': ?pulumi.Input.mapOptionalInputValue<List<SqlContainerIndexingPolicySpatialIndex>, List<Map<String, dynamic>>>(spatialIndices, (value) => pulumi.Input.encodeList<SqlContainerIndexingPolicySpatialIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SqlContainerIndexingPolicy.fromMap(Map<String, dynamic> map) {
    return SqlContainerIndexingPolicy(
      compositeIndices: (() { final guardedValue = map['compositeIndices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlContainerIndexingPolicyCompositeIndex>(guardedValue, (value) => SqlContainerIndexingPolicyCompositeIndex.fromMap((value as Map).cast<String, dynamic>()))); })(),
      excludedPaths: (() { final guardedValue = map['excludedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlContainerIndexingPolicyExcludedPath>(guardedValue, (value) => SqlContainerIndexingPolicyExcludedPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includedPaths: (() { final guardedValue = map['includedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlContainerIndexingPolicyIncludedPath>(guardedValue, (value) => SqlContainerIndexingPolicyIncludedPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      indexingMode: (() { final guardedValue = map['indexingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spatialIndices: (() { final guardedValue = map['spatialIndices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlContainerIndexingPolicySpatialIndex>(guardedValue, (value) => SqlContainerIndexingPolicySpatialIndex.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
