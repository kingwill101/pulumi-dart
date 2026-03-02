// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspacePrivateEndpointConnection {
  /// The ID of the Healthcare Workspace.
  final pulumi.Input<String>? id;
  /// Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [WorkspacePrivateEndpointConnection].
  /// [id] The ID of the Healthcare Workspace.
  /// [name] Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created.
  WorkspacePrivateEndpointConnection({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory WorkspacePrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return WorkspacePrivateEndpointConnection(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

