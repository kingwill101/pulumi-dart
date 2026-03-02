// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_private_link_association_private_link_association_args_doc}
/// The set of arguments for PrivateLinkAssociation.
/// {@endtemplate}
/// {@macro pulumi_management_private_link_association_private_link_association_args_doc}
class PrivateLinkAssociationArgs {
  /// Specifies the Management Group ID within which this Private Link Association should exist. Changing this forces a new Private Link Association to be created.
  ///
  /// > **Note:** For now, `management_group_id` must be the ID of [Root Management Group](https://learn.microsoft.com/en-us/azure/governance/management-groups/overview#root-management-group-for-each-directory).
  final pulumi.Input<String> managementGroupId;
  /// Specifies the name of this Private Link Association, which should be a UUID. If `name` is not provided, a UUID will be generated, you should use the `ignore_changes` attribute to ignore changes to this field. Changing this forces a new Private Link Association to be created.
  final pulumi.Input<String>? name;
  /// Whether public network access is allowed. Changing this forces a new Private Link Association to be created.
  final pulumi.Input<bool> publicNetworkAccessEnabled;
  /// The Resource ID of Resource Management Private Link. Changing this forces a new Private Link Association to be created.
  final pulumi.Input<String> resourceManagementPrivateLinkId;

  /// Creates a new [PrivateLinkAssociationArgs].
  /// [managementGroupId] Specifies the Management Group ID within which this Private Link Association should exist. Changing this forces a new Private Link Association to be created.
  /// [name] Specifies the name of this Private Link Association, which should be a UUID. If `name` is not provided, a UUID will be generated, you should use the `ignore_changes` attribute to ignore changes to this field. Changing this forces a new Private Link Association to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed. Changing this forces a new Private Link Association to be created.
  /// [resourceManagementPrivateLinkId] The Resource ID of Resource Management Private Link. Changing this forces a new Private Link Association to be created.
  PrivateLinkAssociationArgs({
    required this.managementGroupId,
    this.name,
    required this.publicNetworkAccessEnabled,
    required this.resourceManagementPrivateLinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'name': ?name,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'resourceManagementPrivateLinkId': resourceManagementPrivateLinkId,
    };
  }

  factory PrivateLinkAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkAssociationArgs(
      managementGroupId: (map['managementGroupId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: (map['publicNetworkAccessEnabled'] as bool).input(),
      resourceManagementPrivateLinkId: (map['resourceManagementPrivateLinkId'] as String).input(),
    );
  }
}

