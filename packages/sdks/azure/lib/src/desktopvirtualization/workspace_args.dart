// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_workspace_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_workspace_workspace_args_doc}
class WorkspaceArgs {
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
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkspaceArgs].
  /// [description] A description for the Virtual Desktop Workspace.
  /// [friendlyName] A friendly name for the Virtual Desktop Workspace.
  /// [location] The location/region where the Virtual Desktop Workspace is located. Changing the location/region forces a new resource to be created.
  /// [name] The name of the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for this Virtual Desktop Workspace. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  WorkspaceArgs({
    this.description,
    this.friendlyName,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'friendlyName': ?friendlyName,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

