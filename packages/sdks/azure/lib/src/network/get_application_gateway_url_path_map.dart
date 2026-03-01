// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_url_path_map_path_rule.dart';

class GetApplicationGatewayUrlPathMap {
  /// The ID of the Default Backend Address Pool.
  final String defaultBackendAddressPoolId;
  /// The Name of the Default Backend Address Pool which is used for this URL Path Map.
  final String defaultBackendAddressPoolName;
  /// The ID of the Default Backend HTTP Settings Collection.
  final String defaultBackendHttpSettingsId;
  /// The Name of the Default Backend HTTP Settings Collection which is used for this URL Path Map.
  final String defaultBackendHttpSettingsName;
  /// The ID of the Default Redirect Configuration.
  final String defaultRedirectConfigurationId;
  /// The Name of the Default Redirect Configuration which is used for this URL Path Map.
  final String defaultRedirectConfigurationName;
  final String defaultRewriteRuleSetId;
  /// The Name of the Default Rewrite Rule Set which is used for this URL Path Map.
  final String defaultRewriteRuleSetName;
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;
  /// One or more `path_rule` blocks as defined above.
  final List<GetApplicationGatewayUrlPathMapPathRule> pathRules;

  /// Creates a new [GetApplicationGatewayUrlPathMap].
  /// [defaultBackendAddressPoolId] The ID of the Default Backend Address Pool.
  /// [defaultBackendAddressPoolName] The Name of the Default Backend Address Pool which is used for this URL Path Map.
  /// [defaultBackendHttpSettingsId] The ID of the Default Backend HTTP Settings Collection.
  /// [defaultBackendHttpSettingsName] The Name of the Default Backend HTTP Settings Collection which is used for this URL Path Map.
  /// [defaultRedirectConfigurationId] The ID of the Default Redirect Configuration.
  /// [defaultRedirectConfigurationName] The Name of the Default Redirect Configuration which is used for this URL Path Map.
  /// [defaultRewriteRuleSetId] Required.
  /// [defaultRewriteRuleSetName] The Name of the Default Rewrite Rule Set which is used for this URL Path Map.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [pathRules] One or more `path_rule` blocks as defined above.
  GetApplicationGatewayUrlPathMap({
    required this.defaultBackendAddressPoolId,
    required this.defaultBackendAddressPoolName,
    required this.defaultBackendHttpSettingsId,
    required this.defaultBackendHttpSettingsName,
    required this.defaultRedirectConfigurationId,
    required this.defaultRedirectConfigurationName,
    required this.defaultRewriteRuleSetId,
    required this.defaultRewriteRuleSetName,
    required this.id,
    required this.name,
    required this.pathRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBackendAddressPoolId': defaultBackendAddressPoolId,
      'defaultBackendAddressPoolName': defaultBackendAddressPoolName,
      'defaultBackendHttpSettingsId': defaultBackendHttpSettingsId,
      'defaultBackendHttpSettingsName': defaultBackendHttpSettingsName,
      'defaultRedirectConfigurationId': defaultRedirectConfigurationId,
      'defaultRedirectConfigurationName': defaultRedirectConfigurationName,
      'defaultRewriteRuleSetId': defaultRewriteRuleSetId,
      'defaultRewriteRuleSetName': defaultRewriteRuleSetName,
      'id': id,
      'name': name,
      'pathRules': pulumi.Input.encodeList<GetApplicationGatewayUrlPathMapPathRule, Map<String, dynamic>>(pathRules, (value) => value.toMap()),
    };
  }

  factory GetApplicationGatewayUrlPathMap.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayUrlPathMap(
      defaultBackendAddressPoolId: map['defaultBackendAddressPoolId'] as String,
      defaultBackendAddressPoolName: map['defaultBackendAddressPoolName'] as String,
      defaultBackendHttpSettingsId: map['defaultBackendHttpSettingsId'] as String,
      defaultBackendHttpSettingsName: map['defaultBackendHttpSettingsName'] as String,
      defaultRedirectConfigurationId: map['defaultRedirectConfigurationId'] as String,
      defaultRedirectConfigurationName: map['defaultRedirectConfigurationName'] as String,
      defaultRewriteRuleSetId: map['defaultRewriteRuleSetId'] as String,
      defaultRewriteRuleSetName: map['defaultRewriteRuleSetName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      pathRules: pulumi.Input.decodeList<GetApplicationGatewayUrlPathMapPathRule>(map['pathRules'], (value) => GetApplicationGatewayUrlPathMapPathRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

