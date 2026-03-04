// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_private_endpoint_connection.dart';

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// Specifies the Azure Region where the Healthcare Workspace should be created. Changing this forces a new Healthcare Workspace to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<List<WorkspacePrivateEndpointConnection>>?
  privateEndpointConnections;

  /// Specifies the name of the Resource Group where the Healthcare Workspace should exist. Changing this forces a new Healthcare Workspace to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// A mapping of tags to assign to the Healthcare Workspace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkspaceState].
  /// [location] Specifies the Azure Region where the Healthcare Workspace should be created. Changing this forces a new Healthcare Workspace to be created.
  /// [name] Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created.
  /// [privateEndpointConnections] Optional.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Healthcare Workspace should exist. Changing this forces a new Healthcare Workspace to be created.
  /// [tags] A mapping of tags to assign to the Healthcare Workspace.
  WorkspaceState({
    this.location,
    this.name,
    this.privateEndpointConnections,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'privateEndpointConnections':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkspacePrivateEndpointConnection>,
            List<Map<String, dynamic>>
          >(
            privateEndpointConnections,
            (value) =>
                pulumi.Input.encodeList<
                  WorkspacePrivateEndpointConnection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpointConnections: (() {
        final guardedValue = map['privateEndpointConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkspacePrivateEndpointConnection>(
            guardedValue,
            (value) => WorkspacePrivateEndpointConnection.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
