// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_destination_response.dart';
import 'consumption_metering_config_response.dart';

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfigResponse {
  /// Configuration to use BigQuery as usage export destination.
  final pulumi.Input<BigQueryDestinationResponse> bigqueryDestination;
  /// Configuration to enable resource consumption metering.
  final pulumi.Input<ConsumptionMeteringConfigResponse> consumptionMeteringConfig;
  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final pulumi.Input<bool> enableNetworkEgressMetering;

  /// Creates a new [ResourceUsageExportConfigResponse].
  /// [bigqueryDestination] Configuration to use BigQuery as usage export destination.
  /// [consumptionMeteringConfig] Configuration to enable resource consumption metering.
  /// [enableNetworkEgressMetering] Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  const ResourceUsageExportConfigResponse({
    required this.bigqueryDestination,
    required this.consumptionMeteringConfig,
    required this.enableNetworkEgressMetering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': pulumi.Input.mapInputValue<BigQueryDestinationResponse, Map<String, dynamic>>(bigqueryDestination, (value) => value.toMap()),
      'consumptionMeteringConfig': pulumi.Input.mapInputValue<ConsumptionMeteringConfigResponse, Map<String, dynamic>>(consumptionMeteringConfig, (value) => value.toMap()),
      'enableNetworkEgressMetering': enableNetworkEgressMetering,
    };
  }

  factory ResourceUsageExportConfigResponse.fromMap(Map<String, dynamic> map) {
    return ResourceUsageExportConfigResponse(
      bigqueryDestination: pulumi.Input.fromValue(BigQueryDestinationResponse.fromMap((map['bigqueryDestination']! as Map).cast<String, dynamic>())),
      consumptionMeteringConfig: pulumi.Input.fromValue(ConsumptionMeteringConfigResponse.fromMap((map['consumptionMeteringConfig']! as Map).cast<String, dynamic>())),
      enableNetworkEgressMetering: pulumi.Input.fromValue(map['enableNetworkEgressMetering'] as bool),
    );
  }
}

