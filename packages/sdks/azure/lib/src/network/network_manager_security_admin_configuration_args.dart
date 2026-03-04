// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_security_admin_configuration_network_manager_security_admin_configuration_args_doc}
/// The set of arguments for NetworkManagerSecurityAdminConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_security_admin_configuration_network_manager_security_admin_configuration_args_doc}
class NetworkManagerSecurityAdminConfigurationArgs {
  /// A list of network intent policy based services. Possible values are `All`, `None` and `AllowRulesOnly`. Exactly one value should be set. The `All` option requires `Microsoft.Network/AllowAdminRulesOnNipBasedServices` feature registration to Subscription. Please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#network-intent-policies-and-security-admin-rules) for more information.
  final pulumi.Input<String>? applyOnNetworkIntentPolicyBasedServices;

  /// A description of the Security Admin Configuration.
  final pulumi.Input<String>? description;

  /// Specifies the name which should be used for this Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created.
  final pulumi.Input<String>? name;

  /// Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created.
  final pulumi.Input<String> networkManagerId;

  /// Creates a new [NetworkManagerSecurityAdminConfigurationArgs].
  /// [applyOnNetworkIntentPolicyBasedServices] A list of network intent policy based services. Possible values are `All`, `None` and `AllowRulesOnly`. Exactly one value should be set. The `All` option requires `Microsoft.Network/AllowAdminRulesOnNipBasedServices` feature registration to Subscription. Please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#network-intent-policies-and-security-admin-rules) for more information.
  /// [description] A description of the Security Admin Configuration.
  /// [name] Specifies the name which should be used for this Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created.
  NetworkManagerSecurityAdminConfigurationArgs({
    this.applyOnNetworkIntentPolicyBasedServices,
    this.description,
    this.name,
    required this.networkManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOnNetworkIntentPolicyBasedServices':
          ?applyOnNetworkIntentPolicyBasedServices,
      'description': ?description,
      'name': ?name,
      'networkManagerId': networkManagerId,
    };
  }

  factory NetworkManagerSecurityAdminConfigurationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkManagerSecurityAdminConfigurationArgs(
      applyOnNetworkIntentPolicyBasedServices: (() {
        final guardedValue = map['applyOnNetworkIntentPolicyBasedServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
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
    );
  }
}
