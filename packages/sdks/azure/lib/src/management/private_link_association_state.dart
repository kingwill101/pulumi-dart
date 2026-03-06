// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateLinkAssociation resources.
class PrivateLinkAssociationState {
  /// Specifies the Management Group ID within which this Private Link Association should exist. Changing this forces a new Private Link Association to be created.
  ///
  /// &gt; **Note:** For now, `management_group_id` must be the ID of [Root Management Group](https://learn.microsoft.com/en-us/azure/governance/management-groups/overview#root-management-group-for-each-directory).
  final pulumi.Input<String>? managementGroupId;
  /// Specifies the name of this Private Link Association, which should be a UUID. If `name` is not provided, a UUID will be generated, you should use the `ignore_changes` attribute to ignore changes to this field. Changing this forces a new Private Link Association to be created.
  final pulumi.Input<String>? name;
  /// Whether public network access is allowed. Changing this forces a new Private Link Association to be created.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The Resource ID of Resource Management Private Link. Changing this forces a new Private Link Association to be created.
  final pulumi.Input<String>? resourceManagementPrivateLinkId;
  /// The Tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [PrivateLinkAssociationState].
  /// [managementGroupId] Specifies the Management Group ID within which this Private Link Association should exist. Changing this forces a new Private Link Association to be created.
  /// [name] Specifies the name of this Private Link Association, which should be a UUID. If `name` is not provided, a UUID will be generated, you should use the `ignore_changes` attribute to ignore changes to this field. Changing this forces a new Private Link Association to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed. Changing this forces a new Private Link Association to be created.
  /// [resourceManagementPrivateLinkId] The Resource ID of Resource Management Private Link. Changing this forces a new Private Link Association to be created.
  /// [tenantId] The Tenant ID.
  const PrivateLinkAssociationState({
    this.managementGroupId,
    this.name,
    this.publicNetworkAccessEnabled,
    this.resourceManagementPrivateLinkId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': ?managementGroupId,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceManagementPrivateLinkId': ?resourceManagementPrivateLinkId,
      'tenantId': ?tenantId,
    };
  }

  factory PrivateLinkAssociationState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkAssociationState(
      managementGroupId: (() { final guardedValue = map['managementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceManagementPrivateLinkId: (() { final guardedValue = map['resourceManagementPrivateLinkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

