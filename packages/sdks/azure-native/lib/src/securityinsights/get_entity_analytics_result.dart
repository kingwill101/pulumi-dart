// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getEntityAnalytics.
class GetEntityAnalyticsResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The relevant entity providers that are synced
  final List<String>? entityProviders;

  /// Etag of the azure resource
  final String? etag;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The kind of the setting
  /// Expected value is 'EntityAnalytics'.
  final String kind;

  /// The name of the resource
  final String name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEntityAnalyticsResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [entityProviders] The relevant entity providers that are synced
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the setting
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEntityAnalyticsResult({
    required this.azureApiVersion,
    this.entityProviders,
    this.etag,
    required this.id,
    required this.kind,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'entityProviders': ?entityProviders,
      'etag': ?etag,
      'id': id,
      'kind': kind,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetEntityAnalyticsResult.fromMap(Map<String, dynamic> map) {
    return GetEntityAnalyticsResult(
      azureApiVersion: map['azureApiVersion'] as String,
      entityProviders: (() {
        final guardedValue = map['entityProviders'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
