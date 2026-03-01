// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_destination_response.dart';
import 'consumption_metering_config_response.dart';

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfigResponse {
  /// Configuration to use BigQuery as usage export destination.
  final BigQueryDestinationResponse bigqueryDestination;
  /// Configuration to enable resource consumption metering.
  final ConsumptionMeteringConfigResponse consumptionMeteringConfig;
  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final bool enableNetworkEgressMetering;

  /// Creates a new [ResourceUsageExportConfigResponse].
  /// [bigqueryDestination] Configuration to use BigQuery as usage export destination.
  /// [consumptionMeteringConfig] Configuration to enable resource consumption metering.
  /// [enableNetworkEgressMetering] Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  ResourceUsageExportConfigResponse({
    required this.bigqueryDestination,
    required this.consumptionMeteringConfig,
    required this.enableNetworkEgressMetering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': bigqueryDestination.toMap(),
      'consumptionMeteringConfig': consumptionMeteringConfig.toMap(),
      'enableNetworkEgressMetering': enableNetworkEgressMetering,
    };
  }

  factory ResourceUsageExportConfigResponse.fromMap(Map<String, dynamic> map) {
    return ResourceUsageExportConfigResponse(
      bigqueryDestination: BigQueryDestinationResponse.fromMap((map['bigqueryDestination'] as Map).cast<String, dynamic>()),
      consumptionMeteringConfig: ConsumptionMeteringConfigResponse.fromMap((map['consumptionMeteringConfig'] as Map).cast<String, dynamic>()),
      enableNetworkEgressMetering: map['enableNetworkEgressMetering'] as bool,
    );
  }
}

