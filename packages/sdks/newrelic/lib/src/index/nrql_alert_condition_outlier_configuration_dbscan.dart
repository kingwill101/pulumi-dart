// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NrqlAlertConditionOutlierConfigurationDbscan {
  /// BETA PREVIEW: the `epsilon` field is in limited release and only enabled for preview on a per-account basis. - Radius (distance threshold) for DBSCAN in the units of the query result. Smaller values tighten clusters; larger values broaden them. Must be &gt; 0.
  final pulumi.Input<double> epsilon;

  /// BETA PREVIEW: the `evaluation_group_facet` field is in limited release and only enabled for preview on a per-account basis. - Optional NRQL facet attribute used to segment data into groups (e.g. `host`, `region`) before running outlier detection. Omit to evaluate all results together.
  final pulumi.Input<String>? evaluationGroupFacet;

  /// BETA PREVIEW: the `minimum_points` field is in limited release and only enabled for preview on a per-account basis. - Minimum number of neighboring points needed to form a cluster. Must be &gt;= 1.
  final pulumi.Input<int> minimumPoints;

  /// Creates a new [NrqlAlertConditionOutlierConfigurationDbscan].
  /// [epsilon] BETA PREVIEW: the `epsilon` field is in limited release and only enabled for preview on a per-account basis. - Radius (distance threshold) for DBSCAN in the units of the query result. Smaller values tighten clusters; larger values broaden them. Must be &gt; 0.
  /// [evaluationGroupFacet] BETA PREVIEW: the `evaluation_group_facet` field is in limited release and only enabled for preview on a per-account basis. - Optional NRQL facet attribute used to segment data into groups (e.g. `host`, `region`) before running outlier detection. Omit to evaluate all results together.
  /// [minimumPoints] BETA PREVIEW: the `minimum_points` field is in limited release and only enabled for preview on a per-account basis. - Minimum number of neighboring points needed to form a cluster. Must be &gt;= 1.
  NrqlAlertConditionOutlierConfigurationDbscan({
    required this.epsilon,
    this.evaluationGroupFacet,
    required this.minimumPoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'epsilon': epsilon,
      'evaluationGroupFacet': ?evaluationGroupFacet,
      'minimumPoints': minimumPoints,
    };
  }

  factory NrqlAlertConditionOutlierConfigurationDbscan.fromMap(
    Map<String, dynamic> map,
  ) {
    return NrqlAlertConditionOutlierConfigurationDbscan(
      epsilon: pulumi.Input.fromValue(map['epsilon'] as double),
      evaluationGroupFacet: (() {
        final guardedValue = map['evaluationGroupFacet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minimumPoints: pulumi.Input.fromValue(map['minimumPoints'] as int),
    );
  }
}
