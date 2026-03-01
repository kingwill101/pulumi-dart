// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSentinelOnboardingState.
class GetSentinelOnboardingStateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Flag that indicates the status of the CMK setting
  final bool? customerManagedKey;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSentinelOnboardingStateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customerManagedKey] Flag that indicates the status of the CMK setting
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSentinelOnboardingStateResult({
    required this.azureApiVersion,
    this.customerManagedKey,
    this.etag,
    required this.id,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customerManagedKey': ?customerManagedKey,
      'etag': ?etag,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSentinelOnboardingStateResult.fromMap(Map<String, dynamic> map) {
    return GetSentinelOnboardingStateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customerManagedKey: map['customerManagedKey'] == null ? null : map['customerManagedKey'] as bool,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

