// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// A description for the Virtual Desktop Workspace.
  final pulumi.Input<String>? description;
  /// A friendly name for the Virtual Desktop Workspace.
  final pulumi.Input<String>? friendlyName;
  /// The location/region where the Virtual Desktop Workspace is located. Changing the location/region forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether public network access is allowed for this Virtual Desktop Workspace. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkspaceState].
  /// [description] A description for the Virtual Desktop Workspace.
  /// [friendlyName] A friendly name for the Virtual Desktop Workspace.
  /// [location] The location/region where the Virtual Desktop Workspace is located. Changing the location/region forces a new resource to be created.
  /// [name] The name of the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for this Virtual Desktop Workspace. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  WorkspaceState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'friendlyName': ?friendlyName,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

