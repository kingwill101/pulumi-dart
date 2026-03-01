// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayUrlPathMapPathRule {
  /// The ID of the associated Backend Address Pool.
  final String backendAddressPoolId;
  /// The Name of the Backend Address Pool which is used for this Routing Rule.
  final String backendAddressPoolName;
  /// The ID of the associated Backend HTTP Settings Configuration.
  final String backendHttpSettingsId;
  /// The Name of the Backend HTTP Settings Collection which is used for this Routing Rule.
  final String backendHttpSettingsName;
  /// The ID of the Web Application Firewall Policy which is used as an HTTP Listener for this Path Rule.
  final String firewallPolicyId;
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;
  /// A list of Paths used in this Path Rule.
  final List<String> paths;
  /// The ID of the associated Redirect Configuration.
  final String redirectConfigurationId;
  /// The Name of the Redirect Configuration which is used for this Routing Rule.
  final String redirectConfigurationName;
  /// The ID of the associated Rewrite Rule Set.
  final String rewriteRuleSetId;
  /// The Name of the Rewrite Rule Set which is used for this Routing Rule.
  final String rewriteRuleSetName;

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
  GetApplicationGatewayUrlPathMapPathRule({
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
      backendAddressPoolId: map['backendAddressPoolId'] as String,
      backendAddressPoolName: map['backendAddressPoolName'] as String,
      backendHttpSettingsId: map['backendHttpSettingsId'] as String,
      backendHttpSettingsName: map['backendHttpSettingsName'] as String,
      firewallPolicyId: map['firewallPolicyId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      paths: (map['paths'] as List).cast<String>(),
      redirectConfigurationId: map['redirectConfigurationId'] as String,
      redirectConfigurationName: map['redirectConfigurationName'] as String,
      rewriteRuleSetId: map['rewriteRuleSetId'] as String,
      rewriteRuleSetName: map['rewriteRuleSetName'] as String,
    );
  }
}

