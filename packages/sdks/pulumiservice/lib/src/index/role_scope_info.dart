// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoleScopeInfo {
  /// Human-readable description of what the scope grants.
  final pulumi.Input<String> description;
  /// The scope group label as shown in the Pulumi Cloud console (e.g. `Stacks`).
  final pulumi.Input<String> groupName;
  /// The scope name (e.g. `stack:read`).
  final pulumi.Input<String> name;
  /// The resource-type bucket the scope belongs to (e.g. `stack`, `team`).
  final pulumi.Input<String> resourceType;

  /// Creates a new [RoleScopeInfo].
  /// [description] Human-readable description of what the scope grants.
  /// [groupName] The scope group label as shown in the Pulumi Cloud console (e.g. `Stacks`).
  /// [name] The scope name (e.g. `stack:read`).
  /// [resourceType] The resource-type bucket the scope belongs to (e.g. `stack`, `team`).
  const RoleScopeInfo({
    required this.description,
    required this.groupName,
    required this.name,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'groupName': groupName,
      'name': name,
      'resourceType': resourceType,
    };
  }

  factory RoleScopeInfo.fromMap(Map<String, dynamic> map) {
    return RoleScopeInfo(
      description: pulumi.Input.fromValue(map['description'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
