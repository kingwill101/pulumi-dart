// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayRequestRoutingRule {
  /// The ID of the associated Backend Address Pool.
  final pulumi.Input<String>? backendAddressPoolId;
  /// The Name of the Backend Address Pool which should be used for this Routing Rule. Cannot be set if `redirect_configuration_name` is set.
  final pulumi.Input<String>? backendAddressPoolName;
  /// The ID of the associated Backend HTTP Settings Configuration.
  final pulumi.Input<String>? backendHttpSettingsId;
  /// The Name of the Backend HTTP Settings Collection which should be used for this Routing Rule. Cannot be set if `redirect_configuration_name` is set.
  final pulumi.Input<String>? backendHttpSettingsName;
  /// The ID of the associated HTTP Listener.
  final pulumi.Input<String>? httpListenerId;
  /// The Name of the HTTP Listener which should be used for this Routing Rule.
  final pulumi.Input<String> httpListenerName;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The Name of this Request Routing Rule.
  final pulumi.Input<String> name;
  /// Rule evaluation order can be dictated by specifying an integer value from `1` to `20000` with `1` being the highest priority and `20000` being the lowest priority.
  ///
  /// &gt; **Note:** `priority` is required when `sku[0].tier` is set to `*_v2`.
  final pulumi.Input<int>? priority;
  /// The ID of the associated Redirect Configuration.
  final pulumi.Input<String>? redirectConfigurationId;
  /// The Name of the Redirect Configuration which should be used for this Routing Rule. Cannot be set if either `backend_address_pool_name` or `backend_http_settings_name` is set.
  final pulumi.Input<String>? redirectConfigurationName;
  /// The ID of the associated Rewrite Rule Set.
  final pulumi.Input<String>? rewriteRuleSetId;
  /// The Name of the Rewrite Rule Set which should be used for this Routing Rule. Only valid for v2 SKUs.
  ///
  /// &gt; **Note:** `backend_address_pool_name`, `backend_http_settings_name`, `redirect_configuration_name`, and `rewrite_rule_set_name` are applicable only when `rule_type` is `Basic`.
  final pulumi.Input<String>? rewriteRuleSetName;
  /// The Type of Routing that should be used for this Rule. Possible values are `Basic` and `PathBasedRouting`.
  final pulumi.Input<String> ruleType;
  /// The ID of the associated URL Path Map.
  final pulumi.Input<String>? urlPathMapId;
  /// The Name of the URL Path Map which should be associated with this Routing Rule.
  final pulumi.Input<String>? urlPathMapName;

  /// Creates a new [ApplicationGatewayRequestRoutingRule].
  /// [backendAddressPoolId] The ID of the associated Backend Address Pool.
  /// [backendAddressPoolName] The Name of the Backend Address Pool which should be used for this Routing Rule. Cannot be set if `redirect_configuration_name` is set.
  /// [backendHttpSettingsId] The ID of the associated Backend HTTP Settings Configuration.
  /// [backendHttpSettingsName] The Name of the Backend HTTP Settings Collection which should be used for this Routing Rule. Cannot be set if `redirect_configuration_name` is set.
  /// [httpListenerId] The ID of the associated HTTP Listener.
  /// [httpListenerName] The Name of the HTTP Listener which should be used for this Routing Rule.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of this Request Routing Rule.
  /// [priority] Rule evaluation order can be dictated by specifying an integer value from `1` to `20000` with `1` being the highest priority and `20000` being the lowest priority.
  /// [redirectConfigurationId] The ID of the associated Redirect Configuration.
  /// [redirectConfigurationName] The Name of the Redirect Configuration which should be used for this Routing Rule. Cannot be set if either `backend_address_pool_name` or `backend_http_settings_name` is set.
  /// [rewriteRuleSetId] The ID of the associated Rewrite Rule Set.
  /// [rewriteRuleSetName] The Name of the Rewrite Rule Set which should be used for this Routing Rule. Only valid for v2 SKUs.
  /// [ruleType] The Type of Routing that should be used for this Rule. Possible values are `Basic` and `PathBasedRouting`.
  /// [urlPathMapId] The ID of the associated URL Path Map.
  /// [urlPathMapName] The Name of the URL Path Map which should be associated with this Routing Rule.
  const ApplicationGatewayRequestRoutingRule({
    this.backendAddressPoolId,
    this.backendAddressPoolName,
    this.backendHttpSettingsId,
    this.backendHttpSettingsName,
    this.httpListenerId,
    required this.httpListenerName,
    this.id,
    required this.name,
    this.priority,
    this.redirectConfigurationId,
    this.redirectConfigurationName,
    this.rewriteRuleSetId,
    this.rewriteRuleSetName,
    required this.ruleType,
    this.urlPathMapId,
    this.urlPathMapName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': ?backendAddressPoolId,
      'backendAddressPoolName': ?backendAddressPoolName,
      'backendHttpSettingsId': ?backendHttpSettingsId,
      'backendHttpSettingsName': ?backendHttpSettingsName,
      'httpListenerId': ?httpListenerId,
      'httpListenerName': httpListenerName,
      'id': ?id,
      'name': name,
      'priority': ?priority,
      'redirectConfigurationId': ?redirectConfigurationId,
      'redirectConfigurationName': ?redirectConfigurationName,
      'rewriteRuleSetId': ?rewriteRuleSetId,
      'rewriteRuleSetName': ?rewriteRuleSetName,
      'ruleType': ruleType,
      'urlPathMapId': ?urlPathMapId,
      'urlPathMapName': ?urlPathMapName,
    };
  }

  factory ApplicationGatewayRequestRoutingRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRequestRoutingRule(
      backendAddressPoolId: (() { final guardedValue = map['backendAddressPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendAddressPoolName: (() { final guardedValue = map['backendAddressPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendHttpSettingsId: (() { final guardedValue = map['backendHttpSettingsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendHttpSettingsName: (() { final guardedValue = map['backendHttpSettingsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpListenerId: (() { final guardedValue = map['httpListenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpListenerName: pulumi.Input.fromValue(map['httpListenerName'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      redirectConfigurationId: (() { final guardedValue = map['redirectConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectConfigurationName: (() { final guardedValue = map['redirectConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rewriteRuleSetId: (() { final guardedValue = map['rewriteRuleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rewriteRuleSetName: (() { final guardedValue = map['rewriteRuleSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
      urlPathMapId: (() { final guardedValue = map['urlPathMapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlPathMapName: (() { final guardedValue = map['urlPathMapName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

