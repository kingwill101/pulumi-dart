// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_destination_response_container_v1beta1.dart';
import 'consumption_metering_config_response_container_v1beta1.dart';

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfigResponseContainerV1beta1 {
  /// Configuration to use BigQuery as usage export destination.
  final pulumi.Input<BigQueryDestinationResponseContainerV1beta1> bigqueryDestination;
  /// Configuration to enable resource consumption metering.
  final pulumi.Input<ConsumptionMeteringConfigResponseContainerV1beta1> consumptionMeteringConfig;
  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final pulumi.Input<bool> enableNetworkEgressMetering;

  /// Creates a new [ResourceUsageExportConfigResponseContainerV1beta1].
  /// [bigqueryDestination] Configuration to use BigQuery as usage export destination.
  /// [consumptionMeteringConfig] Configuration to enable resource consumption metering.
  /// [enableNetworkEgressMetering] Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  ResourceUsageExportConfigResponseContainerV1beta1({
    required this.bigqueryDestination,
    required this.consumptionMeteringConfig,
    required this.enableNetworkEgressMetering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': pulumi.Input.mapInputValue<BigQueryDestinationResponseContainerV1beta1, Map<String, dynamic>>(bigqueryDestination, (value) => value.toMap()),
      'consumptionMeteringConfig': pulumi.Input.mapInputValue<ConsumptionMeteringConfigResponseContainerV1beta1, Map<String, dynamic>>(consumptionMeteringConfig, (value) => value.toMap()),
      'enableNetworkEgressMetering': enableNetworkEgressMetering,
    };
  }

  factory ResourceUsageExportConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceUsageExportConfigResponseContainerV1beta1(
      bigqueryDestination: pulumi.Input.fromValue(BigQueryDestinationResponseContainerV1beta1.fromMap((map['bigqueryDestination']! as Map).cast<String, dynamic>())),
      consumptionMeteringConfig: pulumi.Input.fromValue(ConsumptionMeteringConfigResponseContainerV1beta1.fromMap((map['consumptionMeteringConfig']! as Map).cast<String, dynamic>())),
      enableNetworkEgressMetering: pulumi.Input.fromValue(map['enableNetworkEgressMetering'] as bool),
    );
  }
}

