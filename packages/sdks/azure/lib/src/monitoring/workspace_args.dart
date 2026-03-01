// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_workspace_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_monitoring_workspace_workspace_args_doc}
class WorkspaceArgs {
  /// Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Is public network access enabled? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Monitor Workspace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkspaceArgs].
  /// [location] Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Is public network access enabled? Defaults to `true`.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Monitor Workspace.
  WorkspaceArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

