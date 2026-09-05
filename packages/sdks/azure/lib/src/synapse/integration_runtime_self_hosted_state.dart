// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationRuntimeSelfHosted resources.
class IntegrationRuntimeSelfHostedState {
  /// The primary integration runtime authentication key.
  final pulumi.Input<String?>? authorizationKeyPrimary;
  /// The secondary integration runtime authentication key.
  final pulumi.Input<String?>? authorizationKeySecondary;
  /// Integration runtime description.
  final pulumi.Input<String?>? description;
  /// The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  final pulumi.Input<String?>? name;
  /// The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  final pulumi.Input<String?>? synapseWorkspaceId;

  /// Creates a new [IntegrationRuntimeSelfHostedState].
  /// [authorizationKeyPrimary] The primary integration runtime authentication key.
  /// [authorizationKeySecondary] The secondary integration runtime authentication key.
  /// [description] Integration runtime description.
  /// [name] The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  /// [synapseWorkspaceId] The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  const IntegrationRuntimeSelfHostedState({
    this.authorizationKeyPrimary,
    this.authorizationKeySecondary,
    this.description,
    this.name,
    this.synapseWorkspaceId,
  });

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
      authorizationKeyPrimary: (() { final guardedValue = map['authorizationKeyPrimary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationKeySecondary: (() { final guardedValue = map['authorizationKeySecondary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synapseWorkspaceId: (() { final guardedValue = map['synapseWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
