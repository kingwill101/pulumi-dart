// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_graph_index_policy_composite_index.dart';
import 'gremlin_graph_index_policy_spatial_index.dart';

class GremlinGraphIndexPolicy {
  /// Indicates if the indexing policy is automatic. Defaults to `true`.
  final pulumi.Input<bool?>? automatic;
  /// One or more `compositeIndex` blocks as defined below.
  final pulumi.Input<List<GremlinGraphIndexPolicyCompositeIndex>?>? compositeIndices;
  /// List of paths to exclude from indexing. Required if `indexingMode` is `Consistent` or `Lazy`.
  final pulumi.Input<List<String>?>? excludedPaths;
  /// List of paths to include in the indexing. Required if `indexingMode` is `Consistent` or `Lazy`.
  final pulumi.Input<List<String>?>? includedPaths;
  /// Indicates the indexing mode. Possible values include: `Consistent`, `Lazy`, `None`.
  final pulumi.Input<String> indexingMode;
  /// One or more `spatialIndex` blocks as defined below.
  final pulumi.Input<List<GremlinGraphIndexPolicySpatialIndex>?>? spatialIndices;

  /// Creates a new [GremlinGraphIndexPolicy].
  /// [automatic] Indicates if the indexing policy is automatic. Defaults to `true`.
  /// [compositeIndices] One or more `compositeIndex` blocks as defined below.
  /// [excludedPaths] List of paths to exclude from indexing. Required if `indexingMode` is `Consistent` or `Lazy`.
  /// [includedPaths] List of paths to include in the indexing. Required if `indexingMode` is `Consistent` or `Lazy`.
  /// [indexingMode] Indicates the indexing mode. Possible values include: `Consistent`, `Lazy`, `None`.
  /// [spatialIndices] One or more `spatialIndex` blocks as defined below.
  const GremlinGraphIndexPolicy({
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
      automatic: (() { final guardedValue = map['automatic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      compositeIndices: (() { final guardedValue = map['compositeIndices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GremlinGraphIndexPolicyCompositeIndex>(guardedValue, (value) => GremlinGraphIndexPolicyCompositeIndex.fromMap((value as Map).cast<String, dynamic>()))); })(),
      excludedPaths: (() { final guardedValue = map['excludedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedPaths: (() { final guardedValue = map['includedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      indexingMode: pulumi.Input.fromValue(map['indexingMode'] as String),
      spatialIndices: (() { final guardedValue = map['spatialIndices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GremlinGraphIndexPolicySpatialIndex>(guardedValue, (value) => GremlinGraphIndexPolicySpatialIndex.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
