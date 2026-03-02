// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// The name of the API Management Service in which the API Management Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The description of this API Management Group.
  final pulumi.Input<String>? description;
  /// The display name of this API Management Group.
  final pulumi.Input<String>? displayName;
  /// The identifier of the external Group. For example, an Azure Active Directory group `aad://<tenant id>/groups/<group object id>`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? externalId;
  /// The name of the API Management Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the API Management Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The type of this API Management Group. Possible values are `custom`, `external` and `system`. Default is `custom`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;

  /// Creates a new [GroupState].
  /// [apiManagementName] The name of the API Management Service in which the API Management Group should exist. Changing this forces a new resource to be created.
  /// [description] The description of this API Management Group.
  /// [displayName] The display name of this API Management Group.
  /// [externalId] The identifier of the external Group. For example, an Azure Active Directory group `aad://<tenant id>/groups/<group object id>`. Changing this forces a new resource to be created.
  /// [name] The name of the API Management Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Group should exist. Changing this forces a new resource to be created.
  /// [type] The type of this API Management Group. Possible values are `custom`, `external` and `system`. Default is `custom`. Changing this forces a new resource to be created.
  GroupState({
    this.apiManagementName,
    this.description,
    this.displayName,
    this.externalId,
    this.name,
    this.resourceGroupName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'description': ?description,
      'displayName': ?displayName,
      'externalId': ?externalId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'type': ?type,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      apiManagementName: map['apiManagementName'] == null ? null : (map['apiManagementName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

