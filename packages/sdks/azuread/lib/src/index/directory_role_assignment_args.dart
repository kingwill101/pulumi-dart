// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_directory_role_assignment_directory_role_assignment_args_doc}
/// The set of arguments for DirectoryRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_directory_role_assignment_directory_role_assignment_args_doc}
class DirectoryRoleAssignmentArgs {
  /// Identifier of the app-specific scope when the assignment scope is app-specific. Cannot be used with `directory_scope_id`. See [official documentation](https://docs.microsoft.com/en-us/graph/api/rbacapplication-post-roleassignments?view=graph-rest-1.0&tabs=http) for example usage. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appScopeId;
  /// Identifier of the directory object representing the scope of the assignment. Cannot be used with `app_scope_id`. See [official documentation](https://docs.microsoft.com/en-us/graph/api/rbacapplication-post-roleassignments?view=graph-rest-1.0&tabs=http) for example usage. Changing this forces a new resource to be created.
  final pulumi.Input<String>? directoryScopeId;
  /// The object ID of the principal for you want to create a role assignment. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalObjectId;
  /// The template ID (in the case of built-in roles) or object ID (in the case of custom roles) of the directory role you want to assign. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleId;

  /// Creates a new [DirectoryRoleAssignmentArgs].
  /// [appScopeId] Identifier of the app-specific scope when the assignment scope is app-specific. Cannot be used with `directory_scope_id`. See [official documentation](https://docs.microsoft.com/en-us/graph/api/rbacapplication-post-roleassignments?view=graph-rest-1.0&tabs=http) for example usage. Changing this forces a new resource to be created.
  /// [directoryScopeId] Identifier of the directory object representing the scope of the assignment. Cannot be used with `app_scope_id`. See [official documentation](https://docs.microsoft.com/en-us/graph/api/rbacapplication-post-roleassignments?view=graph-rest-1.0&tabs=http) for example usage. Changing this forces a new resource to be created.
  /// [principalObjectId] The object ID of the principal for you want to create a role assignment. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  /// [roleId] The template ID (in the case of built-in roles) or object ID (in the case of custom roles) of the directory role you want to assign. Changing this forces a new resource to be created.
  const DirectoryRoleAssignmentArgs({
    this.appScopeId,
    this.directoryScopeId,
    required this.principalObjectId,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appScopeId': ?appScopeId,
      'directoryScopeId': ?directoryScopeId,
      'principalObjectId': principalObjectId,
      'roleId': roleId,
    };
  }

  factory DirectoryRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryRoleAssignmentArgs(
      appScopeId: (() { final guardedValue = map['appScopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryScopeId: (() { final guardedValue = map['directoryScopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalObjectId: pulumi.Input.fromValue(map['principalObjectId'] as String),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
    );
  }
}

