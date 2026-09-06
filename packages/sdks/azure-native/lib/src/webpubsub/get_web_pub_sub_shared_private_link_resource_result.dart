// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebPubSubSharedPrivateLinkResource.
class GetWebPubSubSharedPrivateLinkResourceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The group id from the provider of resource the shared private link resource is for
  final String? groupId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The resource id of the resource the shared private link resource is for
  final String? privateLinkResourceId;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// The request message for requesting approval of the shared private link resource
  final String? requestMessage;
  /// Status of the shared private link resource
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWebPubSubSharedPrivateLinkResourceResult].
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
  const GetWebPubSubSharedPrivateLinkResourceResult({
    this.azureApiVersion,
    this.groupId,
    this.id,
    this.name,
    this.privateLinkResourceId,
    this.provisioningState,
    this.requestMessage,
    this.status,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'groupId': ?groupId,
      'id': ?id,
      'name': ?name,
      'privateLinkResourceId': ?privateLinkResourceId,
      'provisioningState': ?provisioningState,
      'requestMessage': ?requestMessage,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWebPubSubSharedPrivateLinkResourceResult.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubSharedPrivateLinkResourceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
