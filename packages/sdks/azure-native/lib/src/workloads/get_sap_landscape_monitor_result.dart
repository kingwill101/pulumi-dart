// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sap_landscape_monitor_metric_thresholds_response.dart';
import 'sap_landscape_monitor_properties_grouping_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSapLandscapeMonitor.
class GetSapLandscapeMonitorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the SID groupings by landscape and Environment.
  final SapLandscapeMonitorPropertiesGroupingResponse? grouping;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// State of provisioning of the SAP monitor.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Gets or sets the list Top Metric Thresholds for SAP Landscape Monitor Dashboard
  final List<SapLandscapeMonitorMetricThresholdsResponse>? topMetricsThresholds;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSapLandscapeMonitorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [grouping] Gets or sets the SID groupings by landscape and Environment.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] State of provisioning of the SAP monitor.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [topMetricsThresholds] Gets or sets the list Top Metric Thresholds for SAP Landscape Monitor Dashboard
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSapLandscapeMonitorResult({
    required this.azureApiVersion,
    this.grouping,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.topMetricsThresholds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'grouping': ?grouping == null ? null : grouping!.toMap(),
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'topMetricsThresholds': ?topMetricsThresholds == null ? null : pulumi.Input.encodeList<SapLandscapeMonitorMetricThresholdsResponse, Map<String, dynamic>>(topMetricsThresholds!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetSapLandscapeMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetSapLandscapeMonitorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      grouping: map['grouping'] == null ? null : SapLandscapeMonitorPropertiesGroupingResponse.fromMap((map['grouping']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      topMetricsThresholds: map['topMetricsThresholds'] == null ? null : pulumi.Input.decodeList<SapLandscapeMonitorMetricThresholdsResponse>(map['topMetricsThresholds']!, (value) => SapLandscapeMonitorMetricThresholdsResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

