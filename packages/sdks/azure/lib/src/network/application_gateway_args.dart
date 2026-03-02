// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_authentication_certificate.dart';
import 'application_gateway_autoscale_configuration.dart';
import 'application_gateway_backend_address_pool.dart';
import 'application_gateway_backend_http_setting.dart';
import 'application_gateway_custom_error_configuration.dart';
import 'application_gateway_frontend_ip_configuration.dart';
import 'application_gateway_frontend_port.dart';
import 'application_gateway_gateway_ip_configuration.dart';
import 'application_gateway_global.dart';
import 'application_gateway_http_listener.dart';
import 'application_gateway_identity.dart';
import 'application_gateway_private_link_configuration.dart';
import 'application_gateway_probe.dart';
import 'application_gateway_redirect_configuration.dart';
import 'application_gateway_request_routing_rule.dart';
import 'application_gateway_rewrite_rule_set.dart';
import 'application_gateway_sku.dart';
import 'application_gateway_ssl_certificate.dart';
import 'application_gateway_ssl_policy.dart';
import 'application_gateway_ssl_profile.dart';
import 'application_gateway_trusted_client_certificate.dart';
import 'application_gateway_trusted_root_certificate.dart';
import 'application_gateway_url_path_map.dart';
import 'application_gateway_waf_configuration.dart';

/// {@template pulumi_network_application_gateway_application_gateway_args_doc}
/// The set of arguments for ApplicationGateway.
/// {@endtemplate}
/// {@macro pulumi_network_application_gateway_application_gateway_args_doc}
class ApplicationGatewayArgs {
  /// One or more `authentication_certificate` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayAuthenticationCertificate>>? authenticationCertificates;
  /// An `autoscale_configuration` block as defined below.
  final pulumi.Input<ApplicationGatewayAutoscaleConfiguration>? autoscaleConfiguration;
  /// One or more `backend_address_pool` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayBackendAddressPool>> backendAddressPools;
  /// One or more `backend_http_settings` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayBackendHttpSetting>> backendHttpSettings;
  /// One or more `custom_error_configuration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayCustomErrorConfiguration>>? customErrorConfigurations;
  /// Is HTTP2 enabled on the application gateway resource? Defaults to `false`.
  final pulumi.Input<bool>? enableHttp2;
  /// Is FIPS enabled on the Application Gateway?
  final pulumi.Input<bool>? fipsEnabled;
  /// The ID of the Web Application Firewall Policy.
  final pulumi.Input<String>? firewallPolicyId;
  /// Is the Firewall Policy associated with the Application Gateway?
  final pulumi.Input<bool>? forceFirewallPolicyAssociation;
  /// One or more `frontend_ip_configuration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayFrontendIpConfiguration>> frontendIpConfigurations;
  /// One or more `frontend_port` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayFrontendPort>> frontendPorts;
  /// One or more `gateway_ip_configuration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayGatewayIpConfiguration>> gatewayIpConfigurations;
  /// A `global` block as defined below.
  final pulumi.Input<ApplicationGatewayGlobal>? global;
  /// One or more `http_listener` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayHttpListener>> httpListeners;
  /// An `identity` block as defined below.
  final pulumi.Input<ApplicationGatewayIdentity>? identity;
  /// The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Application Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `private_link_configuration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayPrivateLinkConfiguration>>? privateLinkConfigurations;
  /// One or more `probe` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayProbe>>? probes;
  /// One or more `redirect_configuration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayRedirectConfiguration>>? redirectConfigurations;
  /// One or more `request_routing_rule` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayRequestRoutingRule>> requestRoutingRules;
  /// The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `rewrite_rule_set` blocks as defined below. Only valid for v2 WAF and Standard SKUs.
  final pulumi.Input<List<ApplicationGatewayRewriteRuleSet>>? rewriteRuleSets;
  /// A `sku` block as defined below.
  final pulumi.Input<ApplicationGatewaySku> sku;
  /// One or more `ssl_certificate` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewaySslCertificate>>? sslCertificates;
  /// a `ssl_policy` block as defined below.
  final pulumi.Input<ApplicationGatewaySslPolicy>? sslPolicy;
  /// One or more `ssl_profile` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewaySslProfile>>? sslProfiles;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more `trusted_client_certificate` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayTrustedClientCertificate>>? trustedClientCertificates;
  /// One or more `trusted_root_certificate` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayTrustedRootCertificate>>? trustedRootCertificates;
  /// One or more `url_path_map` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayUrlPathMap>>? urlPathMaps;
  /// A `waf_configuration` block as defined below.
  final pulumi.Input<ApplicationGatewayWafConfiguration>? wafConfiguration;
  /// Specifies a list of Availability Zones in which this Application Gateway should be located. Changing this forces a new Application Gateway to be created.
  ///
  /// > **Note:** Availability Zones are not supported in all regions at this time, please check the [official documentation](https://docs.microsoft.com/azure/availability-zones/az-overview) for more information. They are also only supported for [v2 SKUs](https://docs.microsoft.com/azure/application-gateway/application-gateway-autoscaling-zone-redundant)
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ApplicationGatewayArgs].
  /// [authenticationCertificates] One or more `authentication_certificate` blocks as defined below.
  /// [autoscaleConfiguration] An `autoscale_configuration` block as defined below.
  /// [backendAddressPools] One or more `backend_address_pool` blocks as defined below.
  /// [backendHttpSettings] One or more `backend_http_settings` blocks as defined below.
  /// [customErrorConfigurations] One or more `custom_error_configuration` blocks as defined below.
  /// [enableHttp2] Is HTTP2 enabled on the application gateway resource? Defaults to `false`.
  /// [fipsEnabled] Is FIPS enabled on the Application Gateway?
  /// [firewallPolicyId] The ID of the Web Application Firewall Policy.
  /// [forceFirewallPolicyAssociation] Is the Firewall Policy associated with the Application Gateway?
  /// [frontendIpConfigurations] One or more `frontend_ip_configuration` blocks as defined below.
  /// [frontendPorts] One or more `frontend_port` blocks as defined below.
  /// [gatewayIpConfigurations] One or more `gateway_ip_configuration` blocks as defined below.
  /// [global] A `global` block as defined below.
  /// [httpListeners] One or more `http_listener` blocks as defined below.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Application Gateway. Changing this forces a new resource to be created.
  /// [privateLinkConfigurations] One or more `private_link_configuration` blocks as defined below.
  /// [probes] One or more `probe` blocks as defined below.
  /// [redirectConfigurations] One or more `redirect_configuration` blocks as defined below.
  /// [requestRoutingRules] One or more `request_routing_rule` blocks as defined below.
  /// [resourceGroupName] The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created.
  /// [rewriteRuleSets] One or more `rewrite_rule_set` blocks as defined below. Only valid for v2 WAF and Standard SKUs.
  /// [sku] A `sku` block as defined below.
  /// [sslCertificates] One or more `ssl_certificate` blocks as defined below.
  /// [sslPolicy] a `ssl_policy` block as defined below.
  /// [sslProfiles] One or more `ssl_profile` blocks as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trustedClientCertificates] One or more `trusted_client_certificate` blocks as defined below.
  /// [trustedRootCertificates] One or more `trusted_root_certificate` blocks as defined below.
  /// [urlPathMaps] One or more `url_path_map` blocks as defined below.
  /// [wafConfiguration] A `waf_configuration` block as defined below.
  /// [zones] Specifies a list of Availability Zones in which this Application Gateway should be located. Changing this forces a new Application Gateway to be created.
  ApplicationGatewayArgs({
    this.authenticationCertificates,
    this.autoscaleConfiguration,
    required this.backendAddressPools,
    required this.backendHttpSettings,
    this.customErrorConfigurations,
    this.enableHttp2,
    this.fipsEnabled,
    this.firewallPolicyId,
    this.forceFirewallPolicyAssociation,
    required this.frontendIpConfigurations,
    required this.frontendPorts,
    required this.gatewayIpConfigurations,
    this.global,
    required this.httpListeners,
    this.identity,
    this.location,
    this.name,
    this.privateLinkConfigurations,
    this.probes,
    this.redirectConfigurations,
    required this.requestRoutingRules,
    required this.resourceGroupName,
    this.rewriteRuleSets,
    required this.sku,
    this.sslCertificates,
    this.sslPolicy,
    this.sslProfiles,
    this.tags,
    this.trustedClientCertificates,
    this.trustedRootCertificates,
    this.urlPathMaps,
    this.wafConfiguration,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayAuthenticationCertificate>, List<Map<String, dynamic>>>(authenticationCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewayAuthenticationCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoscaleConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayAutoscaleConfiguration, Map<String, dynamic>>(autoscaleConfiguration, (value) => value.toMap()),
      'backendAddressPools': pulumi.Input.mapInputValue<List<ApplicationGatewayBackendAddressPool>, List<Map<String, dynamic>>>(backendAddressPools, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendHttpSettings': pulumi.Input.mapInputValue<List<ApplicationGatewayBackendHttpSetting>, List<Map<String, dynamic>>>(backendHttpSettings, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendHttpSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customErrorConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayCustomErrorConfiguration>, List<Map<String, dynamic>>>(customErrorConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayCustomErrorConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableHttp2': ?enableHttp2,
      'fipsEnabled': ?fipsEnabled,
      'firewallPolicyId': ?firewallPolicyId,
      'forceFirewallPolicyAssociation': ?forceFirewallPolicyAssociation,
      'frontendIpConfigurations': pulumi.Input.mapInputValue<List<ApplicationGatewayFrontendIpConfiguration>, List<Map<String, dynamic>>>(frontendIpConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayFrontendIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'frontendPorts': pulumi.Input.mapInputValue<List<ApplicationGatewayFrontendPort>, List<Map<String, dynamic>>>(frontendPorts, (value) => pulumi.Input.encodeList<ApplicationGatewayFrontendPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayIpConfigurations': pulumi.Input.mapInputValue<List<ApplicationGatewayGatewayIpConfiguration>, List<Map<String, dynamic>>>(gatewayIpConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayGatewayIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'global': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayGlobal, Map<String, dynamic>>(global, (value) => value.toMap()),
      'httpListeners': pulumi.Input.mapInputValue<List<ApplicationGatewayHttpListener>, List<Map<String, dynamic>>>(httpListeners, (value) => pulumi.Input.encodeList<ApplicationGatewayHttpListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'privateLinkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayPrivateLinkConfiguration>, List<Map<String, dynamic>>>(privateLinkConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayPrivateLinkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'probes': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayProbe>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<ApplicationGatewayProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redirectConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRedirectConfiguration>, List<Map<String, dynamic>>>(redirectConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayRedirectConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestRoutingRules': pulumi.Input.mapInputValue<List<ApplicationGatewayRequestRoutingRule>, List<Map<String, dynamic>>>(requestRoutingRules, (value) => pulumi.Input.encodeList<ApplicationGatewayRequestRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'rewriteRuleSets': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRewriteRuleSet>, List<Map<String, dynamic>>>(rewriteRuleSets, (value) => pulumi.Input.encodeList<ApplicationGatewayRewriteRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': pulumi.Input.mapInputValue<ApplicationGatewaySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'sslCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewaySslCertificate>, List<Map<String, dynamic>>>(sslCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewaySslCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewaySslPolicy, Map<String, dynamic>>(sslPolicy, (value) => value.toMap()),
      'sslProfiles': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewaySslProfile>, List<Map<String, dynamic>>>(sslProfiles, (value) => pulumi.Input.encodeList<ApplicationGatewaySslProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'trustedClientCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayTrustedClientCertificate>, List<Map<String, dynamic>>>(trustedClientCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewayTrustedClientCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustedRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayTrustedRootCertificate>, List<Map<String, dynamic>>>(trustedRootCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewayTrustedRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlPathMaps': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayUrlPathMap>, List<Map<String, dynamic>>>(urlPathMaps, (value) => pulumi.Input.encodeList<ApplicationGatewayUrlPathMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wafConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayWafConfiguration, Map<String, dynamic>>(wafConfiguration, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory ApplicationGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayArgs(
      authenticationCertificates: map['authenticationCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificate>(map['authenticationCertificates']!, (value) => ApplicationGatewayAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : (ApplicationGatewayAutoscaleConfiguration.fromMap((map['autoscaleConfiguration']! as Map).cast<String, dynamic>())).input(),
      backendAddressPools: (pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(map['backendAddressPools'], (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backendHttpSettings: (pulumi.Input.decodeList<ApplicationGatewayBackendHttpSetting>(map['backendHttpSettings'], (value) => ApplicationGatewayBackendHttpSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayCustomErrorConfiguration>(map['customErrorConfigurations']!, (value) => ApplicationGatewayCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableHttp2: map['enableHttp2'] == null ? null : (map['enableHttp2']! as bool).input(),
      fipsEnabled: map['fipsEnabled'] == null ? null : (map['fipsEnabled']! as bool).input(),
      firewallPolicyId: map['firewallPolicyId'] == null ? null : (map['firewallPolicyId']! as String).input(),
      forceFirewallPolicyAssociation: map['forceFirewallPolicyAssociation'] == null ? null : (map['forceFirewallPolicyAssociation']! as bool).input(),
      frontendIpConfigurations: (pulumi.Input.decodeList<ApplicationGatewayFrontendIpConfiguration>(map['frontendIpConfigurations'], (value) => ApplicationGatewayFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      frontendPorts: (pulumi.Input.decodeList<ApplicationGatewayFrontendPort>(map['frontendPorts'], (value) => ApplicationGatewayFrontendPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gatewayIpConfigurations: (pulumi.Input.decodeList<ApplicationGatewayGatewayIpConfiguration>(map['gatewayIpConfigurations'], (value) => ApplicationGatewayGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      global: map['global'] == null ? null : (ApplicationGatewayGlobal.fromMap((map['global']! as Map).cast<String, dynamic>())).input(),
      httpListeners: (pulumi.Input.decodeList<ApplicationGatewayHttpListener>(map['httpListeners'], (value) => ApplicationGatewayHttpListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (ApplicationGatewayIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfiguration>(map['privateLinkConfigurations']!, (value) => ApplicationGatewayPrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      probes: map['probes'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayProbe>(map['probes']!, (value) => ApplicationGatewayProbe.fromMap((value as Map).cast<String, dynamic>()))).input(),
      redirectConfigurations: map['redirectConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayRedirectConfiguration>(map['redirectConfigurations']!, (value) => ApplicationGatewayRedirectConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestRoutingRules: (pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRule>(map['requestRoutingRules'], (value) => ApplicationGatewayRequestRoutingRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      rewriteRuleSets: map['rewriteRuleSets'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSet>(map['rewriteRuleSets']!, (value) => ApplicationGatewayRewriteRuleSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sku: (ApplicationGatewaySku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      sslCertificates: map['sslCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewaySslCertificate>(map['sslCertificates']!, (value) => ApplicationGatewaySslCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sslPolicy: map['sslPolicy'] == null ? null : (ApplicationGatewaySslPolicy.fromMap((map['sslPolicy']! as Map).cast<String, dynamic>())).input(),
      sslProfiles: map['sslProfiles'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewaySslProfile>(map['sslProfiles']!, (value) => ApplicationGatewaySslProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      trustedClientCertificates: map['trustedClientCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificate>(map['trustedClientCertificates']!, (value) => ApplicationGatewayTrustedClientCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trustedRootCertificates: map['trustedRootCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificate>(map['trustedRootCertificates']!, (value) => ApplicationGatewayTrustedRootCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      urlPathMaps: map['urlPathMaps'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayUrlPathMap>(map['urlPathMaps']!, (value) => ApplicationGatewayUrlPathMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
      wafConfiguration: map['wafConfiguration'] == null ? null : (ApplicationGatewayWafConfiguration.fromMap((map['wafConfiguration']! as Map).cast<String, dynamic>())).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

