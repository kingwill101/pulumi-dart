// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_graph_index_policy_composite_index.dart';
import 'gremlin_graph_index_policy_spatial_index.dart';

class GremlinGraphIndexPolicy {
  /// Indicates if the indexing policy is automatic. Defaults to `true`.
  final pulumi.Input<bool>? automatic;
  /// One or more `composite_index` blocks as defined below.
  final pulumi.Input<List<GremlinGraphIndexPolicyCompositeIndex>>? compositeIndices;
  /// List of paths to exclude from indexing. Required if `indexing_mode` is `Consistent` or `Lazy`.
  final pulumi.Input<List<String>>? excludedPaths;
  /// List of paths to include in the indexing. Required if `indexing_mode` is `Consistent` or `Lazy`.
  final pulumi.Input<List<String>>? includedPaths;
  /// Indicates the indexing mode. Possible values include: `Consistent`, `Lazy`, `None`.
  final pulumi.Input<String> indexingMode;
  /// One or more `spatial_index` blocks as defined below.
  final pulumi.Input<List<GremlinGraphIndexPolicySpatialIndex>>? spatialIndices;

  /// Creates a new [GremlinGraphIndexPolicy].
  /// [automatic] Indicates if the indexing policy is automatic. Defaults to `true`.
  /// [compositeIndices] One or more `composite_index` blocks as defined below.
  /// [excludedPaths] List of paths to exclude from indexing. Required if `indexing_mode` is `Consistent` or `Lazy`.
  /// [includedPaths] List of paths to include in the indexing. Required if `indexing_mode` is `Consistent` or `Lazy`.
  /// [indexingMode] Indicates the indexing mode. Possible values include: `Consistent`, `Lazy`, `None`.
  /// [spatialIndices] One or more `spatial_index` blocks as defined below.
  GremlinGraphIndexPolicy({
    this.automatic,
    this.compositeIndices,
    this.excludedPaths,
    this.includedPaths,
    required this.indexingMode,
    this.spatialIndices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': ?automatic,
      'compositeIndices': ?pulumi.Input.mapOptionalInputValue<List<GremlinGraphIndexPolicyCompositeIndex>, List<Map<String, dynamic>>>(compositeIndices, (value) => pulumi.Input.encodeList<GremlinGraphIndexPolicyCompositeIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludedPaths': ?excludedPaths,
      'includedPaths': ?includedPaths,
      'indexingMode': indexingMode,
      'spatialIndices': ?pulumi.Input.mapOptionalInputValue<List<GremlinGraphIndexPolicySpatialIndex>, List<Map<String, dynamic>>>(spatialIndices, (value) => pulumi.Input.encodeList<GremlinGraphIndexPolicySpatialIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GremlinGraphIndexPolicy.fromMap(Map<String, dynamic> map) {
    return GremlinGraphIndexPolicy(
      automatic: map['automatic'] == null ? null : (map['automatic']! as bool).input(),
      compositeIndices: map['compositeIndices'] == null ? null : (pulumi.Input.decodeList<GremlinGraphIndexPolicyCompositeIndex>(map['compositeIndices']!, (value) => GremlinGraphIndexPolicyCompositeIndex.fromMap((value as Map).cast<String, dynamic>()))).input(),
      excludedPaths: map['excludedPaths'] == null ? null : ((map['excludedPaths']! as List).cast<String>()).input(),
      includedPaths: map['includedPaths'] == null ? null : ((map['includedPaths']! as List).cast<String>()).input(),
      indexingMode: (map['indexingMode'] as String).input(),
      spatialIndices: map['spatialIndices'] == null ? null : (pulumi.Input.decodeList<GremlinGraphIndexPolicySpatialIndex>(map['spatialIndices']!, (value) => GremlinGraphIndexPolicySpatialIndex.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

