// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_url_path_map_path_rule.dart';

class GetApplicationGatewayUrlPathMap {
  /// The ID of the Default Backend Address Pool.
  final pulumi.Input<String> defaultBackendAddressPoolId;
  /// The Name of the Default Backend Address Pool which is used for this URL Path Map.
  final pulumi.Input<String> defaultBackendAddressPoolName;
  /// The ID of the Default Backend HTTP Settings Collection.
  final pulumi.Input<String> defaultBackendHttpSettingsId;
  /// The Name of the Default Backend HTTP Settings Collection which is used for this URL Path Map.
  final pulumi.Input<String> defaultBackendHttpSettingsName;
  /// The ID of the Default Redirect Configuration.
  final pulumi.Input<String> defaultRedirectConfigurationId;
  /// The Name of the Default Redirect Configuration which is used for this URL Path Map.
  final pulumi.Input<String> defaultRedirectConfigurationName;
  final pulumi.Input<String> defaultRewriteRuleSetId;
  /// The Name of the Default Rewrite Rule Set which is used for this URL Path Map.
  final pulumi.Input<String> defaultRewriteRuleSetName;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// One or more `path_rule` blocks as defined above.
  final pulumi.Input<List<GetApplicationGatewayUrlPathMapPathRule>> pathRules;

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
      'pathRules': pulumi.Input.mapInputValue<List<GetApplicationGatewayUrlPathMapPathRule>, List<Map<String, dynamic>>>(pathRules, (value) => pulumi.Input.encodeList<GetApplicationGatewayUrlPathMapPathRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetApplicationGatewayUrlPathMap.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayUrlPathMap(
      defaultBackendAddressPoolId: (map['defaultBackendAddressPoolId'] as String).input(),
      defaultBackendAddressPoolName: (map['defaultBackendAddressPoolName'] as String).input(),
      defaultBackendHttpSettingsId: (map['defaultBackendHttpSettingsId'] as String).input(),
      defaultBackendHttpSettingsName: (map['defaultBackendHttpSettingsName'] as String).input(),
      defaultRedirectConfigurationId: (map['defaultRedirectConfigurationId'] as String).input(),
      defaultRedirectConfigurationName: (map['defaultRedirectConfigurationName'] as String).input(),
      defaultRewriteRuleSetId: (map['defaultRewriteRuleSetId'] as String).input(),
      defaultRewriteRuleSetName: (map['defaultRewriteRuleSetName'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      pathRules: (pulumi.Input.decodeList<GetApplicationGatewayUrlPathMapPathRule>(map['pathRules'], (value) => GetApplicationGatewayUrlPathMapPathRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

