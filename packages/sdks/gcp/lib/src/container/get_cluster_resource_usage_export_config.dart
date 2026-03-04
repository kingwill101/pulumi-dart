// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_resource_usage_export_config_bigquery_destination.dart';

class GetClusterResourceUsageExportConfig {
  /// Parameters for using BigQuery as the destination of resource usage export.
  final pulumi.Input<
    List<GetClusterResourceUsageExportConfigBigqueryDestination>
  >
  bigqueryDestinations;

  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final pulumi.Input<bool> enableNetworkEgressMetering;

  /// Whether to enable resource consumption metering on this cluster. When enabled, a table will be created in the resource export BigQuery dataset to store resource consumption data. The resulting table can be joined with the resource usage table or with BigQuery billing export. Defaults to true.
  final pulumi.Input<bool> enableResourceConsumptionMetering;

  /// Creates a new [GetClusterResourceUsageExportConfig].
  /// [bigqueryDestinations] Parameters for using BigQuery as the destination of resource usage export.
  /// [enableNetworkEgressMetering] Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  /// [enableResourceConsumptionMetering] Whether to enable resource consumption metering on this cluster. When enabled, a table will be created in the resource export BigQuery dataset to store resource consumption data. The resulting table can be joined with the resource usage table or with BigQuery billing export. Defaults to true.
  GetClusterResourceUsageExportConfig({
    required this.bigqueryDestinations,
    required this.enableNetworkEgressMetering,
    required this.enableResourceConsumptionMetering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestinations':
          pulumi.Input.mapInputValue<
            List<GetClusterResourceUsageExportConfigBigqueryDestination>,
            List<Map<String, dynamic>>
          >(
            bigqueryDestinations,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterResourceUsageExportConfigBigqueryDestination,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enableNetworkEgressMetering': enableNetworkEgressMetering,
      'enableResourceConsumptionMetering': enableResourceConsumptionMetering,
    };
  }

  factory GetClusterResourceUsageExportConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterResourceUsageExportConfig(
      bigqueryDestinations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetClusterResourceUsageExportConfigBigqueryDestination
        >(
          map['bigqueryDestinations']!,
          (value) =>
              GetClusterResourceUsageExportConfigBigqueryDestination.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      enableNetworkEgressMetering: pulumi.Input.fromValue(
        map['enableNetworkEgressMetering'] as bool,
      ),
      enableResourceConsumptionMetering: pulumi.Input.fromValue(
        map['enableResourceConsumptionMetering'] as bool,
      ),
    );
  }
}
