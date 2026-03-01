// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_private_endpoint_connection.dart';

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// Specifies the Azure Region where the Healthcare Workspace should be created. Changing this forces a new Healthcare Workspace to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<List<WorkspacePrivateEndpointConnection>>? privateEndpointConnections;
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
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<WorkspacePrivateEndpointConnection>>? privateEndpointConnections,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateEndpointConnections = pulumi.Input.asOptionalInput<List<WorkspacePrivateEndpointConnection>>(privateEndpointConnections),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<WorkspacePrivateEndpointConnection>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<WorkspacePrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Output.create<List<WorkspacePrivateEndpointConnection>>(pulumi.Input.decodeList<WorkspacePrivateEndpointConnection>(map['privateEndpointConnections'], (value) => WorkspacePrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

