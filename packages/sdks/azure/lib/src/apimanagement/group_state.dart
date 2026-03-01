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
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? externalId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? type,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      externalId = pulumi.Input.asOptionalInput<String>(externalId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      externalId: map['externalId'] == null ? null : pulumi.Output.create<String>(map['externalId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

