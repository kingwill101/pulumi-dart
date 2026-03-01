// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_group_user_group_user_args_doc}
/// The set of arguments for GroupUser.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_group_user_group_user_args_doc}
class GroupUserArgs {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> groupName;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the API Management User which should be assigned to this API Management Group. Changing this forces a new resource to be created.
  final pulumi.Input<String> userId;

  /// Creates a new [GroupUserArgs].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [groupName] The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [userId] The ID of the API Management User which should be assigned to this API Management Group. Changing this forces a new resource to be created.
  GroupUserArgs({
    required pulumi.Output<String> apiManagementName,
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> userId,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      groupName = pulumi.Input.asInput<String>(groupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'groupName': groupName,
      'resourceGroupName': resourceGroupName,
      'userId': userId,
    };
  }

  factory GroupUserArgs.fromMap(Map<String, dynamic> map) {
    return GroupUserArgs(
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

