// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Definition resources.
class DefinitionState {
  /// The description of the policy definition.
  final pulumi.Input<String>? description;
  /// The display name of the policy definition.
  final pulumi.Input<String>? displayName;
  /// The id of the Management Group where this policy should be defined. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managementGroupId;
  /// The metadata for the policy definition. This is a JSON string representing additional metadata that should be stored with the policy definition.
  final pulumi.Input<String>? metadata;
  /// The policy resource manager mode that allows you to specify which resource types will be evaluated. Possible values are `All`, `Indexed`, `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data` and `Microsoft.Synapse.Data`.
  ///
  /// > **Note:** Other resource provider modes only support built-in policy definitions but may later become available in custom definitions, these include; `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data` and `Microsoft.Synapse.Data`. [See here](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/definition-structure#resource-provider-modes) for more details.
  final pulumi.Input<String>? mode;
  /// The name of the policy definition. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Parameters for the policy definition. This field is a JSON string that allows you to parameterize your policy definition. Reducing the number of parameters forces a new resource to be created.
  final pulumi.Input<String>? parameters;
  /// The policy rule for the policy definition. This is a JSON string representing the rule that contains an if and a then block.
  final pulumi.Input<String>? policyRule;
  /// The policy type. Possible values are `BuiltIn`, `Custom`, `NotSpecified` and `Static`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? policyType;
  /// A list of role definition id extracted from `policy_rule` required for remediation.
  final pulumi.Input<List<String>>? roleDefinitionIds;

  /// Creates a new [DefinitionState].
  /// [description] The description of the policy definition.
  /// [displayName] The display name of the policy definition.
  /// [managementGroupId] The id of the Management Group where this policy should be defined. Changing this forces a new resource to be created.
  /// [metadata] The metadata for the policy definition. This is a JSON string representing additional metadata that should be stored with the policy definition.
  /// [mode] The policy resource manager mode that allows you to specify which resource types will be evaluated. Possible values are `All`, `Indexed`, `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data` and `Microsoft.Synapse.Data`.
  /// [name] The name of the policy definition. Changing this forces a new resource to be created.
  /// [parameters] Parameters for the policy definition. This field is a JSON string that allows you to parameterize your policy definition. Reducing the number of parameters forces a new resource to be created.
  /// [policyRule] The policy rule for the policy definition. This is a JSON string representing the rule that contains an if and a then block.
  /// [policyType] The policy type. Possible values are `BuiltIn`, `Custom`, `NotSpecified` and `Static`. Changing this forces a new resource to be created.
  /// [roleDefinitionIds] A list of role definition id extracted from `policy_rule` required for remediation.
  DefinitionState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? managementGroupId,
    pulumi.Output<String>? metadata,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parameters,
    pulumi.Output<String>? policyRule,
    pulumi.Output<String>? policyType,
    pulumi.Output<List<String>>? roleDefinitionIds,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      managementGroupId = pulumi.Input.asOptionalInput<String>(managementGroupId),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      policyRule = pulumi.Input.asOptionalInput<String>(policyRule),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      roleDefinitionIds = pulumi.Input.asOptionalInput<List<String>>(roleDefinitionIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'managementGroupId': ?managementGroupId,
      'metadata': ?metadata,
      'mode': ?mode,
      'name': ?name,
      'parameters': ?parameters,
      'policyRule': ?policyRule,
      'policyType': ?policyType,
      'roleDefinitionIds': ?roleDefinitionIds,
    };
  }

  factory DefinitionState.fromMap(Map<String, dynamic> map) {
    return DefinitionState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      managementGroupId: map['managementGroupId'] == null ? null : pulumi.Output.create<String>(map['managementGroupId'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<String>(map['metadata'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<String>(map['parameters'] as String),
      policyRule: map['policyRule'] == null ? null : pulumi.Output.create<String>(map['policyRule'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
      roleDefinitionIds: map['roleDefinitionIds'] == null ? null : pulumi.Output.create<List<String>>((map['roleDefinitionIds'] as List).cast<String>()),
    );
  }
}

