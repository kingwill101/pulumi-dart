// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppRoleAssignment resources.
class AppRoleAssignmentState {
  /// The ID of the app role to be assigned, or the default role ID `00000000-0000-0000-0000-000000000000`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appRoleId;
  /// The display name of the principal to which the app role is assigned.
  final pulumi.Input<String>? principalDisplayName;
  /// The object ID of the user, group or service principal to be assigned this app role. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalObjectId;
  /// The object type of the principal to which the app role is assigned.
  final pulumi.Input<String>? principalType;
  /// The display name of the application representing the resource.
  final pulumi.Input<String>? resourceDisplayName;
  /// The object ID of the service principal representing the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceObjectId;

  /// Creates a new [AppRoleAssignmentState].
  /// [appRoleId] The ID of the app role to be assigned, or the default role ID `00000000-0000-0000-0000-000000000000`. Changing this forces a new resource to be created.
  /// [principalDisplayName] The display name of the principal to which the app role is assigned.
  /// [principalObjectId] The object ID of the user, group or service principal to be assigned this app role. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  /// [principalType] The object type of the principal to which the app role is assigned.
  /// [resourceDisplayName] The display name of the application representing the resource.
  /// [resourceObjectId] The object ID of the service principal representing the resource. Changing this forces a new resource to be created.
  const AppRoleAssignmentState({
    this.appRoleId,
    this.principalDisplayName,
    this.principalObjectId,
    this.principalType,
    this.resourceDisplayName,
    this.resourceObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appRoleId': ?appRoleId,
      'principalDisplayName': ?principalDisplayName,
      'principalObjectId': ?principalObjectId,
      'principalType': ?principalType,
      'resourceDisplayName': ?resourceDisplayName,
      'resourceObjectId': ?resourceObjectId,
    };
  }

  factory AppRoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return AppRoleAssignmentState(
      appRoleId: (() { final guardedValue = map['appRoleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalDisplayName: (() { final guardedValue = map['principalDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalObjectId: (() { final guardedValue = map['principalObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceDisplayName: (() { final guardedValue = map['resourceDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceObjectId: (() { final guardedValue = map['resourceObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

