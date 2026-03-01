// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateLinkAssociation resources.
class PrivateLinkAssociationState {
  /// Specifies the Management Group ID within which this Private Link Association should exist. Changing this forces a new Private Link Association to be created.
  ///
  /// > **Note:** For now, `management_group_id` must be the ID of [Root Management Group](https://learn.microsoft.com/en-us/azure/governance/management-groups/overview#root-management-group-for-each-directory).
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
  PrivateLinkAssociationState({
    pulumi.Output<String>? managementGroupId,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceManagementPrivateLinkId,
    pulumi.Output<String>? tenantId,
  }) :
      managementGroupId = pulumi.Input.asOptionalInput<String>(managementGroupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceManagementPrivateLinkId = pulumi.Input.asOptionalInput<String>(resourceManagementPrivateLinkId),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      managementGroupId: map['managementGroupId'] == null ? null : pulumi.Output.create<String>(map['managementGroupId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceManagementPrivateLinkId: map['resourceManagementPrivateLinkId'] == null ? null : pulumi.Output.create<String>(map['resourceManagementPrivateLinkId'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

