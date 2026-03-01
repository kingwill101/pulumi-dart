// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerVerifierWorkspace resources.
class NetworkManagerVerifierWorkspaceState {
  /// The Description of the Network Manager Verifier Workspace.
  final pulumi.Input<String>? description;
  /// The Azure Region where the Network Manager Verifier Workspace should exist. Changing this forces a new Network Manager Verifier Workspace to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Network Manager. Changing this forces a new Network Manager Verifier Workspace to be created.
  final pulumi.Input<String>? networkManagerId;
  /// A mapping of tags which should be assigned to the Network Manager Verifier Workspace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkManagerVerifierWorkspaceState].
  /// [description] The Description of the Network Manager Verifier Workspace.
  /// [location] The Azure Region where the Network Manager Verifier Workspace should exist. Changing this forces a new Network Manager Verifier Workspace to be created.
  /// [name] The name which should be used for this Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace to be created.
  /// [networkManagerId] The ID of the Network Manager. Changing this forces a new Network Manager Verifier Workspace to be created.
  /// [tags] A mapping of tags which should be assigned to the Network Manager Verifier Workspace.
  NetworkManagerVerifierWorkspaceState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkManagerId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asOptionalInput<String>(networkManagerId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
      'tags': ?tags,
    };
  }

  factory NetworkManagerVerifierWorkspaceState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerVerifierWorkspaceState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: map['networkManagerId'] == null ? null : pulumi.Output.create<String>(map['networkManagerId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

