// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_integration_runtime_self_hosted_integration_runtime_self_hosted_args_doc}
/// The set of arguments for IntegrationRuntimeSelfHosted.
/// {@endtemplate}
/// {@macro pulumi_synapse_integration_runtime_self_hosted_integration_runtime_self_hosted_args_doc}
class IntegrationRuntimeSelfHostedArgs {
  /// Integration runtime description.
  final pulumi.Input<String?>? description;
  /// The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  final pulumi.Input<String?>? name;
  /// The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  final pulumi.Input<String> synapseWorkspaceId;

  /// Creates a new [IntegrationRuntimeSelfHostedArgs].
  /// [description] Integration runtime description.
  /// [name] The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  /// [synapseWorkspaceId] The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created.
  const IntegrationRuntimeSelfHostedArgs({
    this.description,
    this.name,
    required this.synapseWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'synapseWorkspaceId': synapseWorkspaceId,
    };
  }

  factory IntegrationRuntimeSelfHostedArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSelfHostedArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synapseWorkspaceId: pulumi.Input.fromValue(map['synapseWorkspaceId'] as String),
    );
  }
}
