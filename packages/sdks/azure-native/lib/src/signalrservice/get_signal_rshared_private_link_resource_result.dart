// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSignalRSharedPrivateLinkResource.
class GetSignalRSharedPrivateLinkResourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The group id from the provider of resource the shared private link resource is for
  final String groupId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The resource id of the resource the shared private link resource is for
  final String privateLinkResourceId;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// The request message for requesting approval of the shared private link resource
  final String? requestMessage;
  /// Status of the shared private link resource
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSignalRSharedPrivateLinkResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupId] The group id from the provider of resource the shared private link resource is for
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [privateLinkResourceId] The resource id of the resource the shared private link resource is for
  /// [provisioningState] Provisioning state of the resource.
  /// [requestMessage] The request message for requesting approval of the shared private link resource
  /// [status] Status of the shared private link resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSignalRSharedPrivateLinkResourceResult({
    required this.azureApiVersion,
    required this.groupId,
    required this.id,
    required this.name,
    required this.privateLinkResourceId,
    required this.provisioningState,
    this.requestMessage,
    required this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'groupId': groupId,
      'id': id,
      'name': name,
      'privateLinkResourceId': privateLinkResourceId,
      'provisioningState': provisioningState,
      'requestMessage': ?requestMessage,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSignalRSharedPrivateLinkResourceResult.fromMap(Map<String, dynamic> map) {
    return GetSignalRSharedPrivateLinkResourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      privateLinkResourceId: map['privateLinkResourceId'] as String,
      provisioningState: map['provisioningState'] as String,
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

