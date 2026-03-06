// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayUrlPathMapPathRule {
  /// The ID of the associated Backend Address Pool.
  final pulumi.Input<String> backendAddressPoolId;
  /// The Name of the Backend Address Pool which is used for this Routing Rule.
  final pulumi.Input<String> backendAddressPoolName;
  /// The ID of the associated Backend HTTP Settings Configuration.
  final pulumi.Input<String> backendHttpSettingsId;
  /// The Name of the Backend HTTP Settings Collection which is used for this Routing Rule.
  final pulumi.Input<String> backendHttpSettingsName;
  /// The ID of the Web Application Firewall Policy which is used as an HTTP Listener for this Path Rule.
  final pulumi.Input<String> firewallPolicyId;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// A list of Paths used in this Path Rule.
  final pulumi.Input<List<String>> paths;
  /// The ID of the associated Redirect Configuration.
  final pulumi.Input<String> redirectConfigurationId;
  /// The Name of the Redirect Configuration which is used for this Routing Rule.
  final pulumi.Input<String> redirectConfigurationName;
  /// The ID of the associated Rewrite Rule Set.
  final pulumi.Input<String> rewriteRuleSetId;
  /// The Name of the Rewrite Rule Set which is used for this Routing Rule.
  final pulumi.Input<String> rewriteRuleSetName;

  /// Creates a new [GetApplicationGatewayUrlPathMapPathRule].
  /// [backendAddressPoolId] The ID of the associated Backend Address Pool.
  /// [backendAddressPoolName] The Name of the Backend Address Pool which is used for this Routing Rule.
  /// [backendHttpSettingsId] The ID of the associated Backend HTTP Settings Configuration.
  /// [backendHttpSettingsName] The Name of the Backend HTTP Settings Collection which is used for this Routing Rule.
  /// [firewallPolicyId] The ID of the Web Application Firewall Policy which is used as an HTTP Listener for this Path Rule.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [paths] A list of Paths used in this Path Rule.
  /// [redirectConfigurationId] The ID of the associated Redirect Configuration.
  /// [redirectConfigurationName] The Name of the Redirect Configuration which is used for this Routing Rule.
  /// [rewriteRuleSetId] The ID of the associated Rewrite Rule Set.
  /// [rewriteRuleSetName] The Name of the Rewrite Rule Set which is used for this Routing Rule.
  const GetApplicationGatewayUrlPathMapPathRule({
    required this.backendAddressPoolId,
    required this.backendAddressPoolName,
    required this.backendHttpSettingsId,
    required this.backendHttpSettingsName,
    required this.firewallPolicyId,
    required this.id,
    required this.name,
    required this.paths,
    required this.redirectConfigurationId,
    required this.redirectConfigurationName,
    required this.rewriteRuleSetId,
    required this.rewriteRuleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': backendAddressPoolId,
      'backendAddressPoolName': backendAddressPoolName,
      'backendHttpSettingsId': backendHttpSettingsId,
      'backendHttpSettingsName': backendHttpSettingsName,
      'firewallPolicyId': firewallPolicyId,
      'id': id,
      'name': name,
      'paths': paths,
      'redirectConfigurationId': redirectConfigurationId,
      'redirectConfigurationName': redirectConfigurationName,
      'rewriteRuleSetId': rewriteRuleSetId,
      'rewriteRuleSetName': rewriteRuleSetName,
    };
  }

  factory GetApplicationGatewayUrlPathMapPathRule.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayUrlPathMapPathRule(
      backendAddressPoolId: pulumi.Input.fromValue(map['backendAddressPoolId'] as String),
      backendAddressPoolName: pulumi.Input.fromValue(map['backendAddressPoolName'] as String),
      backendHttpSettingsId: pulumi.Input.fromValue(map['backendHttpSettingsId'] as String),
      backendHttpSettingsName: pulumi.Input.fromValue(map['backendHttpSettingsName'] as String),
      firewallPolicyId: pulumi.Input.fromValue(map['firewallPolicyId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      redirectConfigurationId: pulumi.Input.fromValue(map['redirectConfigurationId'] as String),
      redirectConfigurationName: pulumi.Input.fromValue(map['redirectConfigurationName'] as String),
      rewriteRuleSetId: pulumi.Input.fromValue(map['rewriteRuleSetId'] as String),
      rewriteRuleSetName: pulumi.Input.fromValue(map['rewriteRuleSetName'] as String),
    );
  }
}

