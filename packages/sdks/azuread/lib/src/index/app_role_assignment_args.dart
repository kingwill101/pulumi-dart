// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_app_role_assignment_app_role_assignment_args_doc}
/// The set of arguments for AppRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_app_role_assignment_app_role_assignment_args_doc}
class AppRoleAssignmentArgs {
  /// The ID of the app role to be assigned, or the default role ID `00000000-0000-0000-0000-000000000000`. Changing this forces a new resource to be created.
  final pulumi.Input<String> appRoleId;
  /// The object ID of the user, group or service principal to be assigned this app role. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalObjectId;
  /// The object ID of the service principal representing the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceObjectId;

  /// Creates a new [AppRoleAssignmentArgs].
  /// [appRoleId] The ID of the app role to be assigned, or the default role ID `00000000-0000-0000-0000-000000000000`. Changing this forces a new resource to be created.
  /// [principalObjectId] The object ID of the user, group or service principal to be assigned this app role. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  /// [resourceObjectId] The object ID of the service principal representing the resource. Changing this forces a new resource to be created.
  const AppRoleAssignmentArgs({
    required this.appRoleId,
    required this.principalObjectId,
    required this.resourceObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appRoleId': appRoleId,
      'principalObjectId': principalObjectId,
      'resourceObjectId': resourceObjectId,
    };
  }

  factory AppRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AppRoleAssignmentArgs(
      appRoleId: pulumi.Input.fromValue(map['appRoleId'] as String),
      principalObjectId: pulumi.Input.fromValue(map['principalObjectId'] as String),
      resourceObjectId: pulumi.Input.fromValue(map['resourceObjectId'] as String),
    );
  }
}

