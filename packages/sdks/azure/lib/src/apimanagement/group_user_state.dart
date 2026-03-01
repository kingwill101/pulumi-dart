// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupUser resources.
class GroupUserState {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? groupName;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the API Management User which should be assigned to this API Management Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? userId;

  /// Creates a new [GroupUserState].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [groupName] The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [userId] The ID of the API Management User which should be assigned to this API Management Group. Changing this forces a new resource to be created.
  GroupUserState({
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? userId,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'groupName': ?groupName,
      'resourceGroupName': ?resourceGroupName,
      'userId': ?userId,
    };
  }

  factory GroupUserState.fromMap(Map<String, dynamic> map) {
    return GroupUserState(
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

