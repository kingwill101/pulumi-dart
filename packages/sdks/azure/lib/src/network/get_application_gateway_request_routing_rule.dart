// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayRequestRoutingRule {
  /// The ID of the associated Backend Address Pool.
  final pulumi.Input<String> backendAddressPoolId;
  /// The Name of the Backend Address Pool which is used for this Routing Rule.
  final pulumi.Input<String> backendAddressPoolName;
  /// The ID of the associated Backend HTTP Settings Configuration.
  final pulumi.Input<String> backendHttpSettingsId;
  /// The Name of the Backend HTTP Settings Collection which is used for this Routing Rule.
  final pulumi.Input<String> backendHttpSettingsName;
  /// The ID of the associated HTTP Listener.
  final pulumi.Input<String> httpListenerId;
  /// The Name of the HTTP Listener which is used for this Routing Rule.
  final pulumi.Input<String> httpListenerName;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The Priority of this Routing Rule.
  final pulumi.Input<int> priority;
  /// The ID of the associated Redirect Configuration.
  final pulumi.Input<String> redirectConfigurationId;
  /// The Name of the Redirect Configuration which is used for this Routing Rule.
  final pulumi.Input<String> redirectConfigurationName;
  /// The ID of the associated Rewrite Rule Set.
  final pulumi.Input<String> rewriteRuleSetId;
  /// The Name of the Rewrite Rule Set which is used for this Routing Rule.
  final pulumi.Input<String> rewriteRuleSetName;
  /// The Type of Routing that is used for this Rule.
  final pulumi.Input<String> ruleType;
  /// The ID of the associated URL Path Map.
  final pulumi.Input<String> urlPathMapId;
  /// The Name of the URL Path Map which is associated with this Routing Rule.
  final pulumi.Input<String> urlPathMapName;

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
  const GetApplicationGatewayRequestRoutingRule({
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
      backendAddressPoolId: pulumi.Input.fromValue(map['backendAddressPoolId'] as String),
      backendAddressPoolName: pulumi.Input.fromValue(map['backendAddressPoolName'] as String),
      backendHttpSettingsId: pulumi.Input.fromValue(map['backendHttpSettingsId'] as String),
      backendHttpSettingsName: pulumi.Input.fromValue(map['backendHttpSettingsName'] as String),
      httpListenerId: pulumi.Input.fromValue(map['httpListenerId'] as String),
      httpListenerName: pulumi.Input.fromValue(map['httpListenerName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      redirectConfigurationId: pulumi.Input.fromValue(map['redirectConfigurationId'] as String),
      redirectConfigurationName: pulumi.Input.fromValue(map['redirectConfigurationName'] as String),
      rewriteRuleSetId: pulumi.Input.fromValue(map['rewriteRuleSetId'] as String),
      rewriteRuleSetName: pulumi.Input.fromValue(map['rewriteRuleSetName'] as String),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
      urlPathMapId: pulumi.Input.fromValue(map['urlPathMapId'] as String),
      urlPathMapName: pulumi.Input.fromValue(map['urlPathMapName'] as String),
    );
  }
}
