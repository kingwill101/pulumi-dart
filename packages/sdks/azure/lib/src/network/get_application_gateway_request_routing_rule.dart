// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayRequestRoutingRule {
  /// The ID of the associated Backend Address Pool.
  final String backendAddressPoolId;
  /// The Name of the Backend Address Pool which is used for this Routing Rule.
  final String backendAddressPoolName;
  /// The ID of the associated Backend HTTP Settings Configuration.
  final String backendHttpSettingsId;
  /// The Name of the Backend HTTP Settings Collection which is used for this Routing Rule.
  final String backendHttpSettingsName;
  /// The ID of the associated HTTP Listener.
  final String httpListenerId;
  /// The Name of the HTTP Listener which is used for this Routing Rule.
  final String httpListenerName;
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;
  /// The Priority of this Routing Rule.
  final int priority;
  /// The ID of the associated Redirect Configuration.
  final String redirectConfigurationId;
  /// The Name of the Redirect Configuration which is used for this Routing Rule.
  final String redirectConfigurationName;
  /// The ID of the associated Rewrite Rule Set.
  final String rewriteRuleSetId;
  /// The Name of the Rewrite Rule Set which is used for this Routing Rule.
  final String rewriteRuleSetName;
  /// The Type of Routing that is used for this Rule.
  final String ruleType;
  /// The ID of the associated URL Path Map.
  final String urlPathMapId;
  /// The Name of the URL Path Map which is associated with this Routing Rule.
  final String urlPathMapName;

  /// Creates a new [GetApplicationGatewayRequestRoutingRule].
  /// [backendAddressPoolId] The ID of the associated Backend Address Pool.
  /// [backendAddressPoolName] The Name of the Backend Address Pool which is used for this Routing Rule.
  /// [backendHttpSettingsId] The ID of the associated Backend HTTP Settings Configuration.
  /// [backendHttpSettingsName] The Name of the Backend HTTP Settings Collection which is used for this Routing Rule.
  /// [httpListenerId] The ID of the associated HTTP Listener.
  /// [httpListenerName] The Name of the HTTP Listener which is used for this Routing Rule.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [priority] The Priority of this Routing Rule.
  /// [redirectConfigurationId] The ID of the associated Redirect Configuration.
  /// [redirectConfigurationName] The Name of the Redirect Configuration which is used for this Routing Rule.
  /// [rewriteRuleSetId] The ID of the associated Rewrite Rule Set.
  /// [rewriteRuleSetName] The Name of the Rewrite Rule Set which is used for this Routing Rule.
  /// [ruleType] The Type of Routing that is used for this Rule.
  /// [urlPathMapId] The ID of the associated URL Path Map.
  /// [urlPathMapName] The Name of the URL Path Map which is associated with this Routing Rule.
  GetApplicationGatewayRequestRoutingRule({
    required this.backendAddressPoolId,
    required this.backendAddressPoolName,
    required this.backendHttpSettingsId,
    required this.backendHttpSettingsName,
    required this.httpListenerId,
    required this.httpListenerName,
    required this.id,
    required this.name,
    required this.priority,
    required this.redirectConfigurationId,
    required this.redirectConfigurationName,
    required this.rewriteRuleSetId,
    required this.rewriteRuleSetName,
    required this.ruleType,
    required this.urlPathMapId,
    required this.urlPathMapName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': backendAddressPoolId,
      'backendAddressPoolName': backendAddressPoolName,
      'backendHttpSettingsId': backendHttpSettingsId,
      'backendHttpSettingsName': backendHttpSettingsName,
      'httpListenerId': httpListenerId,
      'httpListenerName': httpListenerName,
      'id': id,
      'name': name,
      'priority': priority,
      'redirectConfigurationId': redirectConfigurationId,
      'redirectConfigurationName': redirectConfigurationName,
      'rewriteRuleSetId': rewriteRuleSetId,
      'rewriteRuleSetName': rewriteRuleSetName,
      'ruleType': ruleType,
      'urlPathMapId': urlPathMapId,
      'urlPathMapName': urlPathMapName,
    };
  }

  factory GetApplicationGatewayRequestRoutingRule.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRequestRoutingRule(
      backendAddressPoolId: map['backendAddressPoolId'] as String,
      backendAddressPoolName: map['backendAddressPoolName'] as String,
      backendHttpSettingsId: map['backendHttpSettingsId'] as String,
      backendHttpSettingsName: map['backendHttpSettingsName'] as String,
      httpListenerId: map['httpListenerId'] as String,
      httpListenerName: map['httpListenerName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      redirectConfigurationId: map['redirectConfigurationId'] as String,
      redirectConfigurationName: map['redirectConfigurationName'] as String,
      rewriteRuleSetId: map['rewriteRuleSetId'] as String,
      rewriteRuleSetName: map['rewriteRuleSetName'] as String,
      ruleType: map['ruleType'] as String,
      urlPathMapId: map['urlPathMapId'] as String,
      urlPathMapName: map['urlPathMapName'] as String,
    );
  }
}

