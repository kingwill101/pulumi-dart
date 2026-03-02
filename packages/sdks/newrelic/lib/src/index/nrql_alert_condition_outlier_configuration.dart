// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nrql_alert_condition_outlier_configuration_dbscan.dart';

class NrqlAlertConditionOutlierConfiguration {
  /// BETA PREVIEW: the `dbscan` field is in limited release and only enabled for preview on a per-account basis. - Container for DBSCAN settings used to cluster data points and classify noise as outliers. Requires `epsilon` and `minimum_points`; optional `evaluation_group_facet` partitions data before analysis.
  final pulumi.Input<NrqlAlertConditionOutlierConfigurationDbscan> dbscan;

  /// Creates a new [NrqlAlertConditionOutlierConfiguration].
  /// [dbscan] BETA PREVIEW: the `dbscan` field is in limited release and only enabled for preview on a per-account basis. - Container for DBSCAN settings used to cluster data points and classify noise as outliers. Requires `epsilon` and `minimum_points`; optional `evaluation_group_facet` partitions data before analysis.
  NrqlAlertConditionOutlierConfiguration({
    required this.dbscan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbscan': pulumi.Input.mapInputValue<NrqlAlertConditionOutlierConfigurationDbscan, Map<String, dynamic>>(dbscan, (value) => value.toMap()),
    };
  }

  factory NrqlAlertConditionOutlierConfiguration.fromMap(Map<String, dynamic> map) {
    return NrqlAlertConditionOutlierConfiguration(
      dbscan: (NrqlAlertConditionOutlierConfigurationDbscan.fromMap((map['dbscan'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

