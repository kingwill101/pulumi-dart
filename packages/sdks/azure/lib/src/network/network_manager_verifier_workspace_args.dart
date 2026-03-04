// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_verifier_workspace_network_manager_verifier_workspace_args_doc}
/// The set of arguments for NetworkManagerVerifierWorkspace.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_verifier_workspace_network_manager_verifier_workspace_args_doc}
class NetworkManagerVerifierWorkspaceArgs {
  /// The Description of the Network Manager Verifier Workspace.
  final pulumi.Input<String>? description;

  /// The Azure Region where the Network Manager Verifier Workspace should exist. Changing this forces a new Network Manager Verifier Workspace to be created.
  final pulumi.Input<String>? location;

  /// The name which should be used for this Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace to be created.
  final pulumi.Input<String>? name;

  /// The ID of the Network Manager. Changing this forces a new Network Manager Verifier Workspace to be created.
  final pulumi.Input<String> networkManagerId;

  /// A mapping of tags which should be assigned to the Network Manager Verifier Workspace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkManagerVerifierWorkspaceArgs].
  /// [description] The Description of the Network Manager Verifier Workspace.
  /// [location] The Azure Region where the Network Manager Verifier Workspace should exist. Changing this forces a new Network Manager Verifier Workspace to be created.
  /// [name] The name which should be used for this Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace to be created.
  /// [networkManagerId] The ID of the Network Manager. Changing this forces a new Network Manager Verifier Workspace to be created.
  /// [tags] A mapping of tags which should be assigned to the Network Manager Verifier Workspace.
  NetworkManagerVerifierWorkspaceArgs({
    this.description,
    this.location,
    this.name,
    required this.networkManagerId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'networkManagerId': networkManagerId,
      'tags': ?tags,
    };
  }

  factory NetworkManagerVerifierWorkspaceArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkManagerVerifierWorkspaceArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      networkManagerId: pulumi.Input.fromValue(
        map['networkManagerId'] as String,
      ),
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
