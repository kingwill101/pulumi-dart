// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';

/// Describes a Shared Private Link Resource
class SharedPrivateLinkResourceResponse {
  /// The group id from the provider of resource the shared private link resource is for
  final pulumi.Input<String> groupId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// The resource id of the resource the shared private link resource is for
  final pulumi.Input<String> privateLinkResourceId;
  /// Provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// The request message for requesting approval of the shared private link resource
  final pulumi.Input<String>? requestMessage;
  /// Status of the shared private link resource
  final pulumi.Input<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [SharedPrivateLinkResourceResponse].
  /// [groupId] The group id from the provider of resource the shared private link resource is for
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [privateLinkResourceId] The resource id of the resource the shared private link resource is for
  /// [provisioningState] Provisioning state of the resource.
  /// [requestMessage] The request message for requesting approval of the shared private link resource
  /// [status] Status of the shared private link resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const SharedPrivateLinkResourceResponse({
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
      'groupId': groupId,
      'id': id,
      'name': name,
      'privateLinkResourceId': privateLinkResourceId,
      'provisioningState': provisioningState,
      'requestMessage': ?requestMessage,
      'status': status,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory SharedPrivateLinkResourceResponse.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceResponse(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateLinkResourceId: pulumi.Input.fromValue(map['privateLinkResourceId'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
