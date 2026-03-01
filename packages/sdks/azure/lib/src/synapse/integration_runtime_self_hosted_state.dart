// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationRuntimeSelfHosted resources.
class IntegrationRuntimeSelfHostedState {
  /// The primary integration runtime authentication key.
  final pulumi.Input<String>? authorizationKeyPrimary;
  /// The secondary integration runtime authentication key.
  final pulumi.Input<String>? authorizationKeySecondary;
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  final pulumi.Input<String>? name;
  /// The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  final pulumi.Input<String>? synapseWorkspaceId;

  /// Creates a new [IntegrationRuntimeSelfHostedState].
  /// [authorizationKeyPrimary] The primary integration runtime authentication key.
  /// [authorizationKeySecondary] The secondary integration runtime authentication key.
  /// [description] Integration runtime description.
  /// [name] The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  /// [synapseWorkspaceId] The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  IntegrationRuntimeSelfHostedState({
    pulumi.Output<String>? authorizationKeyPrimary,
    pulumi.Output<String>? authorizationKeySecondary,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? synapseWorkspaceId,
  }) :
      authorizationKeyPrimary = pulumi.Input.asOptionalInput<String>(authorizationKeyPrimary),
      authorizationKeySecondary = pulumi.Input.asOptionalInput<String>(authorizationKeySecondary),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      synapseWorkspaceId = pulumi.Input.asOptionalInput<String>(synapseWorkspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKeyPrimary': ?authorizationKeyPrimary,
      'authorizationKeySecondary': ?authorizationKeySecondary,
      'description': ?description,
      'name': ?name,
      'synapseWorkspaceId': ?synapseWorkspaceId,
    };
  }

  factory IntegrationRuntimeSelfHostedState.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSelfHostedState(
      authorizationKeyPrimary: map['authorizationKeyPrimary'] == null ? null : pulumi.Output.create<String>(map['authorizationKeyPrimary'] as String),
      authorizationKeySecondary: map['authorizationKeySecondary'] == null ? null : pulumi.Output.create<String>(map['authorizationKeySecondary'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      synapseWorkspaceId: map['synapseWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['synapseWorkspaceId'] as String),
    );
  }
}

