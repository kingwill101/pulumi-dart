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
      'pathRules':
          pulumi.Input.mapInputValue<
            List<GetApplicationGatewayUrlPathMapPathRule>,
            List<Map<String, dynamic>>
          >(
            pathRules,
            (value) =>
                pulumi.Input.encodeList<
                  GetApplicationGatewayUrlPathMapPathRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetApplicationGatewayUrlPathMap.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayUrlPathMap(
      defaultBackendAddressPoolId: pulumi.Input.fromValue(
        map['defaultBackendAddressPoolId'] as String,
      ),
      defaultBackendAddressPoolName: pulumi.Input.fromValue(
        map['defaultBackendAddressPoolName'] as String,
      ),
      defaultBackendHttpSettingsId: pulumi.Input.fromValue(
        map['defaultBackendHttpSettingsId'] as String,
      ),
      defaultBackendHttpSettingsName: pulumi.Input.fromValue(
        map['defaultBackendHttpSettingsName'] as String,
      ),
      defaultRedirectConfigurationId: pulumi.Input.fromValue(
        map['defaultRedirectConfigurationId'] as String,
      ),
      defaultRedirectConfigurationName: pulumi.Input.fromValue(
        map['defaultRedirectConfigurationName'] as String,
      ),
      defaultRewriteRuleSetId: pulumi.Input.fromValue(
        map['defaultRewriteRuleSetId'] as String,
      ),
      defaultRewriteRuleSetName: pulumi.Input.fromValue(
        map['defaultRewriteRuleSetName'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      pathRules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetApplicationGatewayUrlPathMapPathRule>(
          map['pathRules']!,
          (value) => GetApplicationGatewayUrlPathMapPathRule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
