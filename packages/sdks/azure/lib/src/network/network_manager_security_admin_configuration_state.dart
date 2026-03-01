// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerSecurityAdminConfiguration resources.
class NetworkManagerSecurityAdminConfigurationState {
  /// A list of network intent policy based services. Possible values are `All`, `None` and `AllowRulesOnly`. Exactly one value should be set. The `All` option requires `Microsoft.Network/AllowAdminRulesOnNipBasedServices` feature registration to Subscription. Please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#network-intent-policies-and-security-admin-rules) for more information.
  final pulumi.Input<String>? applyOnNetworkIntentPolicyBasedServices;
  /// A description of the Security Admin Configuration.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created.
  final pulumi.Input<String>? networkManagerId;

  /// Creates a new [NetworkManagerSecurityAdminConfigurationState].
  /// [applyOnNetworkIntentPolicyBasedServices] A list of network intent policy based services. Possible values are `All`, `None` and `AllowRulesOnly`. Exactly one value should be set. The `All` option requires `Microsoft.Network/AllowAdminRulesOnNipBasedServices` feature registration to Subscription. Please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#network-intent-policies-and-security-admin-rules) for more information.
  /// [description] A description of the Security Admin Configuration.
  /// [name] Specifies the name which should be used for this Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created.
  NetworkManagerSecurityAdminConfigurationState({
    pulumi.Output<String>? applyOnNetworkIntentPolicyBasedServices,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkManagerId,
  }) :
      applyOnNetworkIntentPolicyBasedServices = pulumi.Input.asOptionalInput<String>(applyOnNetworkIntentPolicyBasedServices),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asOptionalInput<String>(networkManagerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOnNetworkIntentPolicyBasedServices': ?applyOnNetworkIntentPolicyBasedServices,
      'description': ?description,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
    };
  }

  factory NetworkManagerSecurityAdminConfigurationState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerSecurityAdminConfigurationState(
      applyOnNetworkIntentPolicyBasedServices: map['applyOnNetworkIntentPolicyBasedServices'] == null ? null : pulumi.Output.create<String>(map['applyOnNetworkIntentPolicyBasedServices'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: map['networkManagerId'] == null ? null : pulumi.Output.create<String>(map['networkManagerId'] as String),
    );
  }
}

