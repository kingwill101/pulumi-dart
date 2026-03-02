// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_container_indexing_policy_composite_index.dart';
import 'sql_container_indexing_policy_excluded_path.dart';
import 'sql_container_indexing_policy_included_path.dart';
import 'sql_container_indexing_policy_spatial_index.dart';

class SqlContainerIndexingPolicy {
  /// One or more `composite_index` blocks as defined below.
  final pulumi.Input<List<SqlContainerIndexingPolicyCompositeIndex>>? compositeIndices;
  /// One or more `excluded_path` blocks as defined below. Either `included_path` or `excluded_path` must contain the `path` `/*`
  final pulumi.Input<List<SqlContainerIndexingPolicyExcludedPath>>? excludedPaths;
  /// One or more `included_path` blocks as defined below. Either `included_path` or `excluded_path` must contain the `path` `/*`
  final pulumi.Input<List<SqlContainerIndexingPolicyIncludedPath>>? includedPaths;
  /// Indicates the indexing mode. Possible values include: `consistent` and `none`. Defaults to `consistent`.
  final pulumi.Input<String>? indexingMode;
  /// One or more `spatial_index` blocks as defined below.
  final pulumi.Input<List<SqlContainerIndexingPolicySpatialIndex>>? spatialIndices;

  /// Creates a new [SqlContainerIndexingPolicy].
  /// [compositeIndices] One or more `composite_index` blocks as defined below.
  /// [excludedPaths] One or more `excluded_path` blocks as defined below. Either `included_path` or `excluded_path` must contain the `path` `/*`
  /// [includedPaths] One or more `included_path` blocks as defined below. Either `included_path` or `excluded_path` must contain the `path` `/*`
  /// [indexingMode] Indicates the indexing mode. Possible values include: `consistent` and `none`. Defaults to `consistent`.
  /// [spatialIndices] One or more `spatial_index` blocks as defined below.
  SqlContainerIndexingPolicy({
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
      compositeIndices: map['compositeIndices'] == null ? null : (pulumi.Input.decodeList<SqlContainerIndexingPolicyCompositeIndex>(map['compositeIndices'], (value) => SqlContainerIndexingPolicyCompositeIndex.fromMap((value as Map).cast<String, dynamic>()))).input(),
      excludedPaths: map['excludedPaths'] == null ? null : (pulumi.Input.decodeList<SqlContainerIndexingPolicyExcludedPath>(map['excludedPaths'], (value) => SqlContainerIndexingPolicyExcludedPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includedPaths: map['includedPaths'] == null ? null : (pulumi.Input.decodeList<SqlContainerIndexingPolicyIncludedPath>(map['includedPaths'], (value) => SqlContainerIndexingPolicyIncludedPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      indexingMode: map['indexingMode'] == null ? null : (map['indexingMode'] as String).input(),
      spatialIndices: map['spatialIndices'] == null ? null : (pulumi.Input.decodeList<SqlContainerIndexingPolicySpatialIndex>(map['spatialIndices'], (value) => SqlContainerIndexingPolicySpatialIndex.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

