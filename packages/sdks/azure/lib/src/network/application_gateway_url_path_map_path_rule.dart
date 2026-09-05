// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayUrlPathMapPathRule {
  /// The ID of the associated Backend Address Pool.
  final pulumi.Input<String?>? backendAddressPoolId;
  /// The Name of the Backend Address Pool to use for this Path Rule. Cannot be set if `redirectConfigurationName` is set.
  final pulumi.Input<String?>? backendAddressPoolName;
  /// The ID of the associated Backend HTTP Settings Configuration.
  final pulumi.Input<String?>? backendHttpSettingsId;
  /// The Name of the Backend HTTP Settings Collection to use for this Path Rule. Cannot be set if `redirectConfigurationName` is set.
  final pulumi.Input<String?>? backendHttpSettingsName;
  /// The ID of the Web Application Firewall Policy which should be used as an HTTP Listener.
  final pulumi.Input<String?>? firewallPolicyId;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String?>? id;
  /// The Name of the Path Rule.
  final pulumi.Input<String> name;
  /// A list of Paths used in this Path Rule.
  final pulumi.Input<List<String>> paths;
  /// The ID of the associated Redirect Configuration.
  final pulumi.Input<String?>? redirectConfigurationId;
  /// The Name of a Redirect Configuration to use for this Path Rule. Cannot be set if `backendAddressPoolName` or `backendHttpSettingsName` is set.
  final pulumi.Input<String?>? redirectConfigurationName;
  /// The ID of the associated Rewrite Rule Set.
  final pulumi.Input<String?>? rewriteRuleSetId;
  /// The Name of the Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs.
  final pulumi.Input<String?>? rewriteRuleSetName;

  /// Creates a new [ApplicationGatewayUrlPathMapPathRule].
  /// [backendAddressPoolId] The ID of the associated Backend Address Pool.
  /// [backendAddressPoolName] The Name of the Backend Address Pool to use for this Path Rule. Cannot be set if `redirectConfigurationName` is set.
  /// [backendHttpSettingsId] The ID of the associated Backend HTTP Settings Configuration.
  /// [backendHttpSettingsName] The Name of the Backend HTTP Settings Collection to use for this Path Rule. Cannot be set if `redirectConfigurationName` is set.
  /// [firewallPolicyId] The ID of the Web Application Firewall Policy which should be used as an HTTP Listener.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of the Path Rule.
  /// [paths] A list of Paths used in this Path Rule.
  /// [redirectConfigurationId] The ID of the associated Redirect Configuration.
  /// [redirectConfigurationName] The Name of a Redirect Configuration to use for this Path Rule. Cannot be set if `backendAddressPoolName` or `backendHttpSettingsName` is set.
  /// [rewriteRuleSetId] The ID of the associated Rewrite Rule Set.
  /// [rewriteRuleSetName] The Name of the Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs.
  const ApplicationGatewayUrlPathMapPathRule({
    this.backendAddressPoolId,
    this.backendAddressPoolName,
    this.backendHttpSettingsId,
    this.backendHttpSettingsName,
    this.firewallPolicyId,
    this.id,
    required this.name,
    required this.paths,
    this.redirectConfigurationId,
    this.redirectConfigurationName,
    this.rewriteRuleSetId,
    this.rewriteRuleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': ?backendAddressPoolId,
      'backendAddressPoolName': ?backendAddressPoolName,
      'backendHttpSettingsId': ?backendHttpSettingsId,
      'backendHttpSettingsName': ?backendHttpSettingsName,
      'firewallPolicyId': ?firewallPolicyId,
      'id': ?id,
      'name': name,
      'paths': paths,
      'redirectConfigurationId': ?redirectConfigurationId,
      'redirectConfigurationName': ?redirectConfigurationName,
      'rewriteRuleSetId': ?rewriteRuleSetId,
      'rewriteRuleSetName': ?rewriteRuleSetName,
    };
  }

  factory ApplicationGatewayUrlPathMapPathRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayUrlPathMapPathRule(
      backendAddressPoolId: (() { final guardedValue = map['backendAddressPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendAddressPoolName: (() { final guardedValue = map['backendAddressPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendHttpSettingsId: (() { final guardedValue = map['backendHttpSettingsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendHttpSettingsName: (() { final guardedValue = map['backendHttpSettingsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicyId: (() { final guardedValue = map['firewallPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      redirectConfigurationId: (() { final guardedValue = map['redirectConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectConfigurationName: (() { final guardedValue = map['redirectConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rewriteRuleSetId: (() { final guardedValue = map['rewriteRuleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rewriteRuleSetName: (() { final guardedValue = map['rewriteRuleSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
