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
    this.apiManagementName,
    this.groupName,
    this.resourceGroupName,
    this.userId,
  });

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
      apiManagementName: map['apiManagementName'] == null ? null : (map['apiManagementName']! as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}

