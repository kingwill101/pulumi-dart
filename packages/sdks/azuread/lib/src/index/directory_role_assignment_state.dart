// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DirectoryRoleAssignment resources.
class DirectoryRoleAssignmentState {
  /// Identifier of the app-specific scope when the assignment scope is app-specific. Cannot be used with `directory_scope_id`. See [official documentation](https://docs.microsoft.com/en-us/graph/api/rbacapplication-post-roleassignments?view=graph-rest-1.0&tabs=http) for example usage. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appScopeId;
  /// Identifier of the directory object representing the scope of the assignment. Cannot be used with `app_scope_id`. See [official documentation](https://docs.microsoft.com/en-us/graph/api/rbacapplication-post-roleassignments?view=graph-rest-1.0&tabs=http) for example usage. Changing this forces a new resource to be created.
  final pulumi.Input<String>? directoryScopeId;
  /// The object ID of the principal for you want to create a role assignment. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalObjectId;
  /// The template ID (in the case of built-in roles) or object ID (in the case of custom roles) of the directory role you want to assign. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleId;

  /// Creates a new [DirectoryRoleAssignmentState].
  /// [appScopeId] Identifier of the app-specific scope when the assignment scope is app-specific. Cannot be used with `directory_scope_id`. See [official documentation](https://docs.microsoft.com/en-us/graph/api/rbacapplication-post-roleassignments?view=graph-rest-1.0&tabs=http) for example usage. Changing this forces a new resource to be created.
  /// [directoryScopeId] Identifier of the directory object representing the scope of the assignment. Cannot be used with `app_scope_id`. See [official documentation](https://docs.microsoft.com/en-us/graph/api/rbacapplication-post-roleassignments?view=graph-rest-1.0&tabs=http) for example usage. Changing this forces a new resource to be created.
  /// [principalObjectId] The object ID of the principal for you want to create a role assignment. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  /// [roleId] The template ID (in the case of built-in roles) or object ID (in the case of custom roles) of the directory role you want to assign. Changing this forces a new resource to be created.
  DirectoryRoleAssignmentState({
    pulumi.Output<String>? appScopeId,
    pulumi.Output<String>? directoryScopeId,
    pulumi.Output<String>? principalObjectId,
    pulumi.Output<String>? roleId,
  }) :
      appScopeId = pulumi.Input.asOptionalInput<String>(appScopeId),
      directoryScopeId = pulumi.Input.asOptionalInput<String>(directoryScopeId),
      principalObjectId = pulumi.Input.asOptionalInput<String>(principalObjectId),
      roleId = pulumi.Input.asOptionalInput<String>(roleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appScopeId': ?appScopeId,
      'directoryScopeId': ?directoryScopeId,
      'principalObjectId': ?principalObjectId,
      'roleId': ?roleId,
    };
  }

  factory DirectoryRoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return DirectoryRoleAssignmentState(
      appScopeId: map['appScopeId'] == null ? null : pulumi.Output.create<String>(map['appScopeId'] as String),
      directoryScopeId: map['directoryScopeId'] == null ? null : pulumi.Output.create<String>(map['directoryScopeId'] as String),
      principalObjectId: map['principalObjectId'] == null ? null : pulumi.Output.create<String>(map['principalObjectId'] as String),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
    );
  }
}

