// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_destination.dart';
import 'consumption_metering_config.dart';

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfig {
  /// Configuration to use BigQuery as usage export destination.
  final pulumi.Input<BigQueryDestination>? bigqueryDestination;
  /// Configuration to enable resource consumption metering.
  final pulumi.Input<ConsumptionMeteringConfig>? consumptionMeteringConfig;
  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final pulumi.Input<bool>? enableNetworkEgressMetering;

  /// Creates a new [ResourceUsageExportConfig].
  /// [bigqueryDestination] Configuration to use BigQuery as usage export destination.
  /// [consumptionMeteringConfig] Configuration to enable resource consumption metering.
  /// [enableNetworkEgressMetering] Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  ResourceUsageExportConfig({
    this.bigqueryDestination,
    this.consumptionMeteringConfig,
    this.enableNetworkEgressMetering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': ?pulumi.Input.mapOptionalInputValue<BigQueryDestination, Map<String, dynamic>>(bigqueryDestination, (value) => value.toMap()),
      'consumptionMeteringConfig': ?pulumi.Input.mapOptionalInputValue<ConsumptionMeteringConfig, Map<String, dynamic>>(consumptionMeteringConfig, (value) => value.toMap()),
      'enableNetworkEgressMetering': ?enableNetworkEgressMetering,
    };
  }

  factory ResourceUsageExportConfig.fromMap(Map<String, dynamic> map) {
    return ResourceUsageExportConfig(
      bigqueryDestination: map['bigqueryDestination'] == null ? null : (BigQueryDestination.fromMap((map['bigqueryDestination'] as Map).cast<String, dynamic>())).input(),
      consumptionMeteringConfig: map['consumptionMeteringConfig'] == null ? null : (ConsumptionMeteringConfig.fromMap((map['consumptionMeteringConfig'] as Map).cast<String, dynamic>())).input(),
      enableNetworkEgressMetering: map['enableNetworkEgressMetering'] == null ? null : (map['enableNetworkEgressMetering'] as bool).input(),
    );
  }
}

