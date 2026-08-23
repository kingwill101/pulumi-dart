// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the properties of an existing shared private link resource managed by the Azure AI Search service.
class SharedPrivateLinkResourcePropertiesResponse {
  /// The group ID from the provider of resource the shared private link resource is for.
  final pulumi.Input<String>? groupId;
  /// The resource ID of the resource the shared private link resource is for.
  final pulumi.Input<String>? privateLinkResourceId;
  /// The provisioning state of the shared private link resource. Valid values are Updating, Deleting, Failed, Succeeded or Incomplete.
  final pulumi.Input<String>? provisioningState;
  /// The message for requesting approval of the shared private link resource.
  final pulumi.Input<String>? requestMessage;
  /// Optional. Can be used to specify the Azure Resource Manager location of the resource for which a shared private link is being created. This is only required for those resources whose DNS configuration are regional (such as Azure Kubernetes Service).
  final pulumi.Input<String>? resourceRegion;
  /// Status of the shared private link resource. Valid values are Pending, Approved, Rejected or Disconnected.
  final pulumi.Input<String>? status;

  /// Creates a new [SharedPrivateLinkResourcePropertiesResponse].
  /// [groupId] The group ID from the provider of resource the shared private link resource is for.
  /// [privateLinkResourceId] The resource ID of the resource the shared private link resource is for.
  /// [provisioningState] The provisioning state of the shared private link resource. Valid values are Updating, Deleting, Failed, Succeeded or Incomplete.
  /// [requestMessage] The message for requesting approval of the shared private link resource.
  /// [resourceRegion] Optional. Can be used to specify the Azure Resource Manager location of the resource for which a shared private link is being created. This is only required for those resources whose DNS configuration are regional (such as Azure Kubernetes Service).
  /// [status] Status of the shared private link resource. Valid values are Pending, Approved, Rejected or Disconnected.
  const SharedPrivateLinkResourcePropertiesResponse({
    this.groupId,
    this.privateLinkResourceId,
    this.provisioningState,
    this.requestMessage,
    this.resourceRegion,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'privateLinkResourceId': ?privateLinkResourceId,
      'provisioningState': ?provisioningState,
      'requestMessage': ?requestMessage,
      'resourceRegion': ?resourceRegion,
      'status': ?status,
    };
  }

  factory SharedPrivateLinkResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourcePropertiesResponse(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRegion: (() { final guardedValue = map['resourceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
