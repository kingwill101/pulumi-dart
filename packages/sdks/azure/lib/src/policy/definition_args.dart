// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policy_definition_definition_args_doc}
/// The set of arguments for Definition.
/// {@endtemplate}
/// {@macro pulumi_policy_definition_definition_args_doc}
class DefinitionArgs {
  /// The description of the policy definition.
  final pulumi.Input<String>? description;
  /// The display name of the policy definition.
  final pulumi.Input<String> displayName;
  /// The id of the Management Group where this policy should be defined. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managementGroupId;
  /// The metadata for the policy definition. This is a JSON string representing additional metadata that should be stored with the policy definition.
  final pulumi.Input<String>? metadata;
  /// The policy resource manager mode that allows you to specify which resource types will be evaluated. Possible values are `All`, `Indexed`, `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data` and `Microsoft.Synapse.Data`.
  ///
  /// &gt; **Note:** Other resource provider modes only support built-in policy definitions but may later become available in custom definitions, these include; `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data` and `Microsoft.Synapse.Data`. [See here](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/definition-structure#resource-provider-modes) for more details.
  final pulumi.Input<String> mode;
  /// The name of the policy definition. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Parameters for the policy definition. This field is a JSON string that allows you to parameterize your policy definition. Reducing the number of parameters forces a new resource to be created.
  final pulumi.Input<String>? parameters;
  /// The policy rule for the policy definition. This is a JSON string representing the rule that contains an if and a then block.
  final pulumi.Input<String>? policyRule;
  /// The policy type. Possible values are `BuiltIn`, `Custom`, `NotSpecified` and `Static`. Changing this forces a new resource to be created.
  final pulumi.Input<String> policyType;

  /// Creates a new [DefinitionArgs].
  /// [description] The description of the policy definition.
  /// [displayName] The display name of the policy definition.
  /// [managementGroupId] The id of the Management Group where this policy should be defined. Changing this forces a new resource to be created.
  /// [metadata] The metadata for the policy definition. This is a JSON string representing additional metadata that should be stored with the policy definition.
  /// [mode] The policy resource manager mode that allows you to specify which resource types will be evaluated. Possible values are `All`, `Indexed`, `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data` and `Microsoft.Synapse.Data`.
  /// [name] The name of the policy definition. Changing this forces a new resource to be created.
  /// [parameters] Parameters for the policy definition. This field is a JSON string that allows you to parameterize your policy definition. Reducing the number of parameters forces a new resource to be created.
  /// [policyRule] The policy rule for the policy definition. This is a JSON string representing the rule that contains an if and a then block.
  /// [policyType] The policy type. Possible values are `BuiltIn`, `Custom`, `NotSpecified` and `Static`. Changing this forces a new resource to be created.
  DefinitionArgs({
    this.description,
    required this.displayName,
    this.managementGroupId,
    this.metadata,
    required this.mode,
    this.name,
    this.parameters,
    this.policyRule,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'managementGroupId': ?managementGroupId,
      'metadata': ?metadata,
      'mode': mode,
      'name': ?name,
      'parameters': ?parameters,
      'policyRule': ?policyRule,
      'policyType': policyType,
    };
  }

  factory DefinitionArgs.fromMap(Map<String, dynamic> map) {
    return DefinitionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      managementGroupId: (() { final guardedValue = map['managementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyRule: (() { final guardedValue = map['policyRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
    );
  }
}

