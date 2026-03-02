// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMetricsConfiguration.
class GetMetricsConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The interval in minutes by which metrics will be collected.
  final double collectionInterval;
  /// The more detailed status of the metrics configuration.
  final String detailedStatus;
  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;
  /// The list of metrics that are available for the cluster but disabled at the moment.
  final List<String> disabledMetrics;
  /// The list of metric names that have been chosen to be enabled in addition to the core set of enabled metrics.
  final List<String>? enabledMetrics;
  /// Resource ETag.
  final String etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the metrics configuration.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetMetricsConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [collectionInterval] The interval in minutes by which metrics will be collected.
  /// [detailedStatus] The more detailed status of the metrics configuration.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [disabledMetrics] The list of metrics that are available for the cluster but disabled at the moment.
  /// [enabledMetrics] The list of metric names that have been chosen to be enabled in addition to the core set of enabled metrics.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the metrics configuration.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetMetricsConfigurationResult({
    required this.azureApiVersion,
    required this.collectionInterval,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.disabledMetrics,
    this.enabledMetrics,
    required this.etag,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'collectionInterval': collectionInterval,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'disabledMetrics': disabledMetrics,
      'enabledMetrics': ?enabledMetrics,
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMetricsConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetMetricsConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      collectionInterval: map['collectionInterval'] as double,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      disabledMetrics: (map['disabledMetrics'] as List).cast<String>(),
      enabledMetrics: map['enabledMetrics'] == null ? null : (map['enabledMetrics']! as List).cast<String>(),
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

