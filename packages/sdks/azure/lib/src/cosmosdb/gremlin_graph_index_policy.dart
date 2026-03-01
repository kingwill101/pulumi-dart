// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_graph_index_policy_composite_index.dart';
import 'gremlin_graph_index_policy_spatial_index.dart';

class GremlinGraphIndexPolicy {
  /// Indicates if the indexing policy is automatic. Defaults to `true`.
  final bool? automatic;
  /// One or more `composite_index` blocks as defined below.
  final List<GremlinGraphIndexPolicyCompositeIndex>? compositeIndices;
  /// List of paths to exclude from indexing. Required if `indexing_mode` is `Consistent` or `Lazy`.
  final List<String>? excludedPaths;
  /// List of paths to include in the indexing. Required if `indexing_mode` is `Consistent` or `Lazy`.
  final List<String>? includedPaths;
  /// Indicates the indexing mode. Possible values include: `Consistent`, `Lazy`, `None`.
  final String indexingMode;
  /// One or more `spatial_index` blocks as defined below.
  final List<GremlinGraphIndexPolicySpatialIndex>? spatialIndices;

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
      'compositeIndices': ?compositeIndices == null ? null : pulumi.Input.encodeList<GremlinGraphIndexPolicyCompositeIndex, Map<String, dynamic>>(compositeIndices!, (value) => value.toMap()),
      'excludedPaths': ?excludedPaths,
      'includedPaths': ?includedPaths,
      'indexingMode': indexingMode,
      'spatialIndices': ?spatialIndices == null ? null : pulumi.Input.encodeList<GremlinGraphIndexPolicySpatialIndex, Map<String, dynamic>>(spatialIndices!, (value) => value.toMap()),
    };
  }

  factory GremlinGraphIndexPolicy.fromMap(Map<String, dynamic> map) {
    return GremlinGraphIndexPolicy(
      automatic: map['automatic'] == null ? null : map['automatic'] as bool,
      compositeIndices: map['compositeIndices'] == null ? null : pulumi.Input.decodeList<GremlinGraphIndexPolicyCompositeIndex>(map['compositeIndices'], (value) => GremlinGraphIndexPolicyCompositeIndex.fromMap((value as Map).cast<String, dynamic>())),
      excludedPaths: map['excludedPaths'] == null ? null : (map['excludedPaths'] as List).cast<String>(),
      includedPaths: map['includedPaths'] == null ? null : (map['includedPaths'] as List).cast<String>(),
      indexingMode: map['indexingMode'] as String,
      spatialIndices: map['spatialIndices'] == null ? null : pulumi.Input.decodeList<GremlinGraphIndexPolicySpatialIndex>(map['spatialIndices'], (value) => GremlinGraphIndexPolicySpatialIndex.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

