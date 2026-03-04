// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_group_group_args_doc}
class GroupArgs {
  /// The name of the API Management Service in which the API Management Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;

  /// The description of this API Management Group.
  final pulumi.Input<String>? description;

  /// The display name of this API Management Group.
  final pulumi.Input<String> displayName;

  /// The identifier of the external Group. For example, an Azure Active Directory group `aad://&lt;tenant id&gt;/groups/&lt;group object id&gt;`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? externalId;

  /// The name of the API Management Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the Resource Group in which the API Management Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The type of this API Management Group. Possible values are `custom`, `external` and `system`. Default is `custom`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;

  /// Creates a new [GroupArgs].
  /// [apiManagementName] The name of the API Management Service in which the API Management Group should exist. Changing this forces a new resource to be created.
  /// [description] The description of this API Management Group.
  /// [displayName] The display name of this API Management Group.
  /// [externalId] The identifier of the external Group. For example, an Azure Active Directory group `aad://&lt;tenant id&gt;/groups/&lt;group object id&gt;`. Changing this forces a new resource to be created.
  /// [name] The name of the API Management Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Group should exist. Changing this forces a new resource to be created.
  /// [type] The type of this API Management Group. Possible values are `custom`, `external` and `system`. Default is `custom`. Changing this forces a new resource to be created.
  GroupArgs({
    required this.apiManagementName,
    this.description,
    required this.displayName,
    this.externalId,
    this.name,
    required this.resourceGroupName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'description': ?description,
      'displayName': displayName,
      'externalId': ?externalId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'type': ?type,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      apiManagementName: pulumi.Input.fromValue(
        map['apiManagementName'] as String,
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      externalId: (() {
        final guardedValue = map['externalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
