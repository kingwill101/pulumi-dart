// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_authentication_certificate.dart';
import 'application_gateway_autoscale_configuration.dart';
import 'application_gateway_backend.dart';
import 'application_gateway_backend_address_pool.dart';
import 'application_gateway_backend_http_setting.dart';
import 'application_gateway_custom_error_configuration.dart';
import 'application_gateway_frontend_ip_configuration.dart';
import 'application_gateway_frontend_port.dart';
import 'application_gateway_gateway_ip_configuration.dart';
import 'application_gateway_global.dart';
import 'application_gateway_http_listener.dart';
import 'application_gateway_identity.dart';
import 'application_gateway_listener.dart';
import 'application_gateway_private_link_configuration.dart';
import 'application_gateway_probe.dart';
import 'application_gateway_redirect_configuration.dart';
import 'application_gateway_request_routing_rule.dart';
import 'application_gateway_rewrite_rule_set.dart';
import 'application_gateway_routing_rule.dart';
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
  /// One or more `authenticationCertificate` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayAuthenticationCertificate>?>? authenticationCertificates;
  /// An `autoscaleConfiguration` block as defined below.
  final pulumi.Input<ApplicationGatewayAutoscaleConfiguration?>? autoscaleConfiguration;
  /// One or more `backendAddressPool` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayBackendAddressPool>> backendAddressPools;
  /// One or more `backendHttpSettings` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `backendHttpSettings` or `backend` must be specified.
  final pulumi.Input<List<ApplicationGatewayBackendHttpSetting>?>? backendHttpSettings;
  /// One or more `backend` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `backendHttpSettings` or `backend` must be specified.
  final pulumi.Input<List<ApplicationGatewayBackend>?>? backends;
  /// One or more `customErrorConfiguration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayCustomErrorConfiguration>?>? customErrorConfigurations;
  final pulumi.Input<bool?>? enableHttp2;
  /// Is FIPS enabled on the Application Gateway?
  final pulumi.Input<bool?>? fipsEnabled;
  /// The ID of the Web Application Firewall Policy.
  final pulumi.Input<String?>? firewallPolicyId;
  /// Is the Firewall Policy associated with the Application Gateway?
  final pulumi.Input<bool?>? forceFirewallPolicyAssociation;
  /// One or more `frontendIpConfiguration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayFrontendIpConfiguration>> frontendIpConfigurations;
  /// One or more `frontendPort` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayFrontendPort>> frontendPorts;
  /// One or more `gatewayIpConfiguration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayGatewayIpConfiguration>> gatewayIpConfigurations;
  /// A `global` block as defined below.
  final pulumi.Input<ApplicationGatewayGlobal?>? global;
  /// Is HTTP2 enabled on the application gateway resource? Defaults to `false`.
  final pulumi.Input<bool?>? http2Enabled;
  /// One or more `httpListener` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `httpListener` or `listener` must be specified.
  final pulumi.Input<List<ApplicationGatewayHttpListener>?>? httpListeners;
  /// An `identity` block as defined below.
  final pulumi.Input<ApplicationGatewayIdentity?>? identity;
  /// One or more `listener` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `httpListener` or `listener` must be specified.
  final pulumi.Input<List<ApplicationGatewayListener>?>? listeners;
  /// The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the Application Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// One or more `privateLinkConfiguration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayPrivateLinkConfiguration>?>? privateLinkConfigurations;
  /// One or more `probe` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayProbe>?>? probes;
  /// One or more `redirectConfiguration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayRedirectConfiguration>?>? redirectConfigurations;
  /// One or more `requestRoutingRule` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `requestRoutingRule` or `routingRule` must be specified.
  final pulumi.Input<List<ApplicationGatewayRequestRoutingRule>?>? requestRoutingRules;
  /// The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `rewriteRuleSet` blocks as defined below. Only valid for v2 WAF and Standard SKUs.
  final pulumi.Input<List<ApplicationGatewayRewriteRuleSet>?>? rewriteRuleSets;
  /// One or more `routingRule` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `requestRoutingRule` or `routingRule` must be specified.
  final pulumi.Input<List<ApplicationGatewayRoutingRule>?>? routingRules;
  /// A `sku` block as defined below.
  final pulumi.Input<ApplicationGatewaySku> sku;
  /// One or more `sslCertificate` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewaySslCertificate>?>? sslCertificates;
  /// a `sslPolicy` block as defined below.
  final pulumi.Input<ApplicationGatewaySslPolicy?>? sslPolicy;
  /// One or more `sslProfile` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewaySslProfile>?>? sslProfiles;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// One or more `trustedClientCertificate` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayTrustedClientCertificate>?>? trustedClientCertificates;
  /// One or more `trustedRootCertificate` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayTrustedRootCertificate>?>? trustedRootCertificates;
  /// One or more `urlPathMap` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayUrlPathMap>?>? urlPathMaps;
  /// A `wafConfiguration` block as defined below.
  final pulumi.Input<ApplicationGatewayWafConfiguration?>? wafConfiguration;
  /// Specifies a list of Availability Zones in which this Application Gateway should be located. Changing this forces a new Application Gateway to be created.
  ///
  /// &gt; **Note:** Availability Zones are not supported in all regions at this time, please check the [official documentation](https://docs.microsoft.com/azure/availability-zones/az-overview) for more information. They are also only supported for [v2 SKUs](https://docs.microsoft.com/azure/application-gateway/application-gateway-autoscaling-zone-redundant)
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [ApplicationGatewayArgs].
  /// [authenticationCertificates] One or more `authenticationCertificate` blocks as defined below.
  /// [autoscaleConfiguration] An `autoscaleConfiguration` block as defined below.
  /// [backendAddressPools] One or more `backendAddressPool` blocks as defined below.
  /// [backendHttpSettings] One or more `backendHttpSettings` blocks as defined below.
  /// [backends] One or more `backend` blocks as defined below.
  /// [customErrorConfigurations] One or more `customErrorConfiguration` blocks as defined below.
  /// [enableHttp2] Optional.
  /// [fipsEnabled] Is FIPS enabled on the Application Gateway?
  /// [firewallPolicyId] The ID of the Web Application Firewall Policy.
  /// [forceFirewallPolicyAssociation] Is the Firewall Policy associated with the Application Gateway?
  /// [frontendIpConfigurations] One or more `frontendIpConfiguration` blocks as defined below.
  /// [frontendPorts] One or more `frontendPort` blocks as defined below.
  /// [gatewayIpConfigurations] One or more `gatewayIpConfiguration` blocks as defined below.
  /// [global] A `global` block as defined below.
  /// [http2Enabled] Is HTTP2 enabled on the application gateway resource? Defaults to `false`.
  /// [httpListeners] One or more `httpListener` blocks as defined below.
  /// [identity] An `identity` block as defined below.
  /// [listeners] One or more `listener` blocks as defined below.
  /// [location] The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Application Gateway. Changing this forces a new resource to be created.
  /// [privateLinkConfigurations] One or more `privateLinkConfiguration` blocks as defined below.
  /// [probes] One or more `probe` blocks as defined below.
  /// [redirectConfigurations] One or more `redirectConfiguration` blocks as defined below.
  /// [requestRoutingRules] One or more `requestRoutingRule` blocks as defined below.
  /// [resourceGroupName] The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created.
  /// [rewriteRuleSets] One or more `rewriteRuleSet` blocks as defined below. Only valid for v2 WAF and Standard SKUs.
  /// [routingRules] One or more `routingRule` blocks as defined below.
  /// [sku] A `sku` block as defined below.
  /// [sslCertificates] One or more `sslCertificate` blocks as defined below.
  /// [sslPolicy] a `sslPolicy` block as defined below.
  /// [sslProfiles] One or more `sslProfile` blocks as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trustedClientCertificates] One or more `trustedClientCertificate` blocks as defined below.
  /// [trustedRootCertificates] One or more `trustedRootCertificate` blocks as defined below.
  /// [urlPathMaps] One or more `urlPathMap` blocks as defined below.
  /// [wafConfiguration] A `wafConfiguration` block as defined below.
  /// [zones] Specifies a list of Availability Zones in which this Application Gateway should be located. Changing this forces a new Application Gateway to be created.
  const ApplicationGatewayArgs({
    this.authenticationCertificates,
    this.autoscaleConfiguration,
    required this.backendAddressPools,
    this.backendHttpSettings,
    this.backends,
    this.customErrorConfigurations,
    this.enableHttp2,
    this.fipsEnabled,
    this.firewallPolicyId,
    this.forceFirewallPolicyAssociation,
    required this.frontendIpConfigurations,
    required this.frontendPorts,
    required this.gatewayIpConfigurations,
    this.global,
    this.http2Enabled,
    this.httpListeners,
    this.identity,
    this.listeners,
    this.location,
    this.name,
    this.privateLinkConfigurations,
    this.probes,
    this.redirectConfigurations,
    this.requestRoutingRules,
    required this.resourceGroupName,
    this.rewriteRuleSets,
    this.routingRules,
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
      'backendHttpSettings': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendHttpSetting>, List<Map<String, dynamic>>>(backendHttpSettings, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendHttpSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backends': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackend>, List<Map<String, dynamic>>>(backends, (value) => pulumi.Input.encodeList<ApplicationGatewayBackend, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customErrorConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayCustomErrorConfiguration>, List<Map<String, dynamic>>>(customErrorConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayCustomErrorConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableHttp2': ?enableHttp2,
      'fipsEnabled': ?fipsEnabled,
      'firewallPolicyId': ?firewallPolicyId,
      'forceFirewallPolicyAssociation': ?forceFirewallPolicyAssociation,
      'frontendIpConfigurations': pulumi.Input.mapInputValue<List<ApplicationGatewayFrontendIpConfiguration>, List<Map<String, dynamic>>>(frontendIpConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayFrontendIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'frontendPorts': pulumi.Input.mapInputValue<List<ApplicationGatewayFrontendPort>, List<Map<String, dynamic>>>(frontendPorts, (value) => pulumi.Input.encodeList<ApplicationGatewayFrontendPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayIpConfigurations': pulumi.Input.mapInputValue<List<ApplicationGatewayGatewayIpConfiguration>, List<Map<String, dynamic>>>(gatewayIpConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayGatewayIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'global': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayGlobal, Map<String, dynamic>>(global, (value) => value.toMap()),
      'http2Enabled': ?http2Enabled,
      'httpListeners': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayHttpListener>, List<Map<String, dynamic>>>(httpListeners, (value) => pulumi.Input.encodeList<ApplicationGatewayHttpListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'listeners': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<ApplicationGatewayListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'privateLinkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayPrivateLinkConfiguration>, List<Map<String, dynamic>>>(privateLinkConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayPrivateLinkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'probes': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayProbe>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<ApplicationGatewayProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redirectConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRedirectConfiguration>, List<Map<String, dynamic>>>(redirectConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayRedirectConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestRoutingRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRequestRoutingRule>, List<Map<String, dynamic>>>(requestRoutingRules, (value) => pulumi.Input.encodeList<ApplicationGatewayRequestRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'rewriteRuleSets': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRewriteRuleSet>, List<Map<String, dynamic>>>(rewriteRuleSets, (value) => pulumi.Input.encodeList<ApplicationGatewayRewriteRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRoutingRule>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<ApplicationGatewayRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      authenticationCertificates: (() { final guardedValue = map['authenticationCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificate>(guardedValue, (value) => ApplicationGatewayAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoscaleConfiguration: (() { final guardedValue = map['autoscaleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayAutoscaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backendAddressPools: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(map['backendAddressPools']!, (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>()))),
      backendHttpSettings: (() { final guardedValue = map['backendHttpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendHttpSetting>(guardedValue, (value) => ApplicationGatewayBackendHttpSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backends: (() { final guardedValue = map['backends']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackend>(guardedValue, (value) => ApplicationGatewayBackend.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customErrorConfigurations: (() { final guardedValue = map['customErrorConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayCustomErrorConfiguration>(guardedValue, (value) => ApplicationGatewayCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableHttp2: (() { final guardedValue = map['enableHttp2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fipsEnabled: (() { final guardedValue = map['fipsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firewallPolicyId: (() { final guardedValue = map['firewallPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceFirewallPolicyAssociation: (() { final guardedValue = map['forceFirewallPolicyAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontendIpConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayFrontendIpConfiguration>(map['frontendIpConfigurations']!, (value) => ApplicationGatewayFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      frontendPorts: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayFrontendPort>(map['frontendPorts']!, (value) => ApplicationGatewayFrontendPort.fromMap((value as Map).cast<String, dynamic>()))),
      gatewayIpConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayGatewayIpConfiguration>(map['gatewayIpConfigurations']!, (value) => ApplicationGatewayGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      global: (() { final guardedValue = map['global']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayGlobal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpListeners: (() { final guardedValue = map['httpListeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayHttpListener>(guardedValue, (value) => ApplicationGatewayHttpListener.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listeners: (() { final guardedValue = map['listeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayListener>(guardedValue, (value) => ApplicationGatewayListener.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkConfigurations: (() { final guardedValue = map['privateLinkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfiguration>(guardedValue, (value) => ApplicationGatewayPrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      probes: (() { final guardedValue = map['probes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayProbe>(guardedValue, (value) => ApplicationGatewayProbe.fromMap((value as Map).cast<String, dynamic>()))); })(),
      redirectConfigurations: (() { final guardedValue = map['redirectConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRedirectConfiguration>(guardedValue, (value) => ApplicationGatewayRedirectConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestRoutingRules: (() { final guardedValue = map['requestRoutingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRule>(guardedValue, (value) => ApplicationGatewayRequestRoutingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rewriteRuleSets: (() { final guardedValue = map['rewriteRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSet>(guardedValue, (value) => ApplicationGatewayRewriteRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routingRules: (() { final guardedValue = map['routingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRoutingRule>(guardedValue, (value) => ApplicationGatewayRoutingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sku: pulumi.Input.fromValue(ApplicationGatewaySku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      sslCertificates: (() { final guardedValue = map['sslCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewaySslCertificate>(guardedValue, (value) => ApplicationGatewaySslCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sslPolicy: (() { final guardedValue = map['sslPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewaySslPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslProfiles: (() { final guardedValue = map['sslProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewaySslProfile>(guardedValue, (value) => ApplicationGatewaySslProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trustedClientCertificates: (() { final guardedValue = map['trustedClientCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificate>(guardedValue, (value) => ApplicationGatewayTrustedClientCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trustedRootCertificates: (() { final guardedValue = map['trustedRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificate>(guardedValue, (value) => ApplicationGatewayTrustedRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      urlPathMaps: (() { final guardedValue = map['urlPathMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayUrlPathMap>(guardedValue, (value) => ApplicationGatewayUrlPathMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wafConfiguration: (() { final guardedValue = map['wafConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayWafConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
