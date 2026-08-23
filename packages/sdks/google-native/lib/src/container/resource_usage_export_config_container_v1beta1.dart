// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_destination_container_v1beta1.dart';
import 'consumption_metering_config_container_v1beta1.dart';

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfigContainerV1beta1 {
  /// Configuration to use BigQuery as usage export destination.
  final pulumi.Input<BigQueryDestinationContainerV1beta1>? bigqueryDestination;
  /// Configuration to enable resource consumption metering.
  final pulumi.Input<ConsumptionMeteringConfigContainerV1beta1>? consumptionMeteringConfig;
  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final pulumi.Input<bool>? enableNetworkEgressMetering;

  /// Creates a new [ResourceUsageExportConfigContainerV1beta1].
  /// [bigqueryDestination] Configuration to use BigQuery as usage export destination.
  /// [consumptionMeteringConfig] Configuration to enable resource consumption metering.
  /// [enableNetworkEgressMetering] Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  const ResourceUsageExportConfigContainerV1beta1({
    this.bigqueryDestination,
    this.consumptionMeteringConfig,
    this.enableNetworkEgressMetering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': ?pulumi.Input.mapOptionalInputValue<BigQueryDestinationContainerV1beta1, Map<String, dynamic>>(bigqueryDestination, (value) => value.toMap()),
      'consumptionMeteringConfig': ?pulumi.Input.mapOptionalInputValue<ConsumptionMeteringConfigContainerV1beta1, Map<String, dynamic>>(consumptionMeteringConfig, (value) => value.toMap()),
      'enableNetworkEgressMetering': ?enableNetworkEgressMetering,
    };
  }

  factory ResourceUsageExportConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceUsageExportConfigContainerV1beta1(
      bigqueryDestination: (() { final guardedValue = map['bigqueryDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BigQueryDestinationContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      consumptionMeteringConfig: (() { final guardedValue = map['consumptionMeteringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConsumptionMeteringConfigContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableNetworkEgressMetering: (() { final guardedValue = map['enableNetworkEgressMetering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
