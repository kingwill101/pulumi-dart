// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the properties of an existing shared private link resource managed by the Azure AI Search service.
class SharedPrivateLinkResourceProperties {
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

  /// Creates a new [SharedPrivateLinkResourceProperties].
  /// [groupId] The group ID from the provider of resource the shared private link resource is for.
  /// [privateLinkResourceId] The resource ID of the resource the shared private link resource is for.
  /// [provisioningState] The provisioning state of the shared private link resource. Valid values are Updating, Deleting, Failed, Succeeded or Incomplete.
  /// [requestMessage] The message for requesting approval of the shared private link resource.
  /// [resourceRegion] Optional. Can be used to specify the Azure Resource Manager location of the resource for which a shared private link is being created. This is only required for those resources whose DNS configuration are regional (such as Azure Kubernetes Service).
  /// [status] Status of the shared private link resource. Valid values are Pending, Approved, Rejected or Disconnected.
  SharedPrivateLinkResourceProperties({
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

  factory SharedPrivateLinkResourceProperties.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceProperties(
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : (map['privateLinkResourceId']! as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      requestMessage: map['requestMessage'] == null ? null : (map['requestMessage']! as String).input(),
      resourceRegion: map['resourceRegion'] == null ? null : (map['resourceRegion']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

