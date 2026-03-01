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
  AppRoleAssignmentState({
    pulumi.Output<String>? appRoleId,
    pulumi.Output<String>? principalDisplayName,
    pulumi.Output<String>? principalObjectId,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? resourceDisplayName,
    pulumi.Output<String>? resourceObjectId,
  }) :
      appRoleId = pulumi.Input.asOptionalInput<String>(appRoleId),
      principalDisplayName = pulumi.Input.asOptionalInput<String>(principalDisplayName),
      principalObjectId = pulumi.Input.asOptionalInput<String>(principalObjectId),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      resourceDisplayName = pulumi.Input.asOptionalInput<String>(resourceDisplayName),
      resourceObjectId = pulumi.Input.asOptionalInput<String>(resourceObjectId);

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
      appRoleId: map['appRoleId'] == null ? null : pulumi.Output.create<String>(map['appRoleId'] as String),
      principalDisplayName: map['principalDisplayName'] == null ? null : pulumi.Output.create<String>(map['principalDisplayName'] as String),
      principalObjectId: map['principalObjectId'] == null ? null : pulumi.Output.create<String>(map['principalObjectId'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      resourceDisplayName: map['resourceDisplayName'] == null ? null : pulumi.Output.create<String>(map['resourceDisplayName'] as String),
      resourceObjectId: map['resourceObjectId'] == null ? null : pulumi.Output.create<String>(map['resourceObjectId'] as String),
    );
  }
}

