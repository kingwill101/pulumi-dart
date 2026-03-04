// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_url_path_map_path_rule.dart';

class ApplicationGatewayUrlPathMap {
  /// The ID of the Default Backend Address Pool.
  final pulumi.Input<String>? defaultBackendAddressPoolId;

  /// The Name of the Default Backend Address Pool which should be used for this URL Path Map. Cannot be set if `default_redirect_configuration_name` is set.
  final pulumi.Input<String>? defaultBackendAddressPoolName;

  /// The ID of the Default Backend HTTP Settings Collection.
  final pulumi.Input<String>? defaultBackendHttpSettingsId;

  /// The Name of the Default Backend HTTP Settings Collection which should be used for this URL Path Map. Cannot be set if `default_redirect_configuration_name` is set.
  final pulumi.Input<String>? defaultBackendHttpSettingsName;

  /// The ID of the Default Redirect Configuration.
  final pulumi.Input<String>? defaultRedirectConfigurationId;

  /// The Name of the Default Redirect Configuration which should be used for this URL Path Map. Cannot be set if either `default_backend_address_pool_name` or `default_backend_http_settings_name` is set.
  ///
  /// &gt; **Note:** Both `default_backend_address_pool_name` and `default_backend_http_settings_name` or `default_redirect_configuration_name` should be specified.
  final pulumi.Input<String>? defaultRedirectConfigurationName;
  final pulumi.Input<String>? defaultRewriteRuleSetId;

  /// The Name of the Default Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs.
  final pulumi.Input<String>? defaultRewriteRuleSetName;

  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;

  /// The Name of the URL Path Map.
  final pulumi.Input<String> name;

  /// One or more `path_rule` blocks as defined above.
  final pulumi.Input<List<ApplicationGatewayUrlPathMapPathRule>> pathRules;

  /// Creates a new [ApplicationGatewayUrlPathMap].
  /// [defaultBackendAddressPoolId] The ID of the Default Backend Address Pool.
  /// [defaultBackendAddressPoolName] The Name of the Default Backend Address Pool which should be used for this URL Path Map. Cannot be set if `default_redirect_configuration_name` is set.
  /// [defaultBackendHttpSettingsId] The ID of the Default Backend HTTP Settings Collection.
  /// [defaultBackendHttpSettingsName] The Name of the Default Backend HTTP Settings Collection which should be used for this URL Path Map. Cannot be set if `default_redirect_configuration_name` is set.
  /// [defaultRedirectConfigurationId] The ID of the Default Redirect Configuration.
  /// [defaultRedirectConfigurationName] The Name of the Default Redirect Configuration which should be used for this URL Path Map. Cannot be set if either `default_backend_address_pool_name` or `default_backend_http_settings_name` is set.
  /// [defaultRewriteRuleSetId] Optional.
  /// [defaultRewriteRuleSetName] The Name of the Default Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of the URL Path Map.
  /// [pathRules] One or more `path_rule` blocks as defined above.
  ApplicationGatewayUrlPathMap({
    this.defaultBackendAddressPoolId,
    this.defaultBackendAddressPoolName,
    this.defaultBackendHttpSettingsId,
    this.defaultBackendHttpSettingsName,
    this.defaultRedirectConfigurationId,
    this.defaultRedirectConfigurationName,
    this.defaultRewriteRuleSetId,
    this.defaultRewriteRuleSetName,
    this.id,
    required this.name,
    required this.pathRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBackendAddressPoolId': ?defaultBackendAddressPoolId,
      'defaultBackendAddressPoolName': ?defaultBackendAddressPoolName,
      'defaultBackendHttpSettingsId': ?defaultBackendHttpSettingsId,
      'defaultBackendHttpSettingsName': ?defaultBackendHttpSettingsName,
      'defaultRedirectConfigurationId': ?defaultRedirectConfigurationId,
      'defaultRedirectConfigurationName': ?defaultRedirectConfigurationName,
      'defaultRewriteRuleSetId': ?defaultRewriteRuleSetId,
      'defaultRewriteRuleSetName': ?defaultRewriteRuleSetName,
      'id': ?id,
      'name': name,
      'pathRules':
          pulumi.Input.mapInputValue<
            List<ApplicationGatewayUrlPathMapPathRule>,
            List<Map<String, dynamic>>
          >(
            pathRules,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGatewayUrlPathMapPathRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ApplicationGatewayUrlPathMap.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayUrlPathMap(
      defaultBackendAddressPoolId: (() {
        final guardedValue = map['defaultBackendAddressPoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultBackendAddressPoolName: (() {
        final guardedValue = map['defaultBackendAddressPoolName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultBackendHttpSettingsId: (() {
        final guardedValue = map['defaultBackendHttpSettingsId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultBackendHttpSettingsName: (() {
        final guardedValue = map['defaultBackendHttpSettingsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultRedirectConfigurationId: (() {
        final guardedValue = map['defaultRedirectConfigurationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultRedirectConfigurationName: (() {
        final guardedValue = map['defaultRedirectConfigurationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultRewriteRuleSetId: (() {
        final guardedValue = map['defaultRewriteRuleSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultRewriteRuleSetName: (() {
        final guardedValue = map['defaultRewriteRuleSetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      pathRules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ApplicationGatewayUrlPathMapPathRule>(
          map['pathRules']!,
          (value) => ApplicationGatewayUrlPathMapPathRule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
