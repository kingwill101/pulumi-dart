// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_authentication_certificate.dart';
import 'get_application_gateway_autoscale_configuration.dart';
import 'get_application_gateway_backend.dart';
import 'get_application_gateway_backend_address_pool.dart';
import 'get_application_gateway_backend_http_setting.dart';
import 'get_application_gateway_custom_error_configuration.dart';
import 'get_application_gateway_frontend_ip_configuration.dart';
import 'get_application_gateway_frontend_port.dart';
import 'get_application_gateway_gateway_ip_configuration.dart';
import 'get_application_gateway_global.dart';
import 'get_application_gateway_http_listener.dart';
import 'get_application_gateway_identity.dart';
import 'get_application_gateway_listener.dart';
import 'get_application_gateway_private_endpoint_connection.dart';
import 'get_application_gateway_private_link_configuration.dart';
import 'get_application_gateway_probe.dart';
import 'get_application_gateway_redirect_configuration.dart';
import 'get_application_gateway_request_routing_rule.dart';
import 'get_application_gateway_rewrite_rule_set.dart';
import 'get_application_gateway_routing_rule.dart';
import 'get_application_gateway_skus.dart';
import 'get_application_gateway_ssl_certificate.dart';
import 'get_application_gateway_ssl_policy.dart';
import 'get_application_gateway_ssl_profile.dart';
import 'get_application_gateway_trusted_client_certificate.dart';
import 'get_application_gateway_trusted_root_certificate.dart';
import 'get_application_gateway_url_path_map.dart';
import 'get_application_gateway_waf_configuration.dart';

/// Result data returned by getApplicationGateway.
class GetApplicationGatewayResult {
  /// One or more `authenticationCertificate` blocks as defined below.
  final List<GetApplicationGatewayAuthenticationCertificate> authenticationCertificates;
  /// An `autoscaleConfiguration` block as defined below.
  final List<GetApplicationGatewayAutoscaleConfiguration> autoscaleConfigurations;
  /// One or more `backendAddressPool` blocks as defined below.
  final List<GetApplicationGatewayBackendAddressPool> backendAddressPools;
  /// One or more `backendHttpSettings` blocks as defined below.
  final List<GetApplicationGatewayBackendHttpSetting> backendHttpSettings;
  /// One or more `backend` blocks as defined below.
  final List<GetApplicationGatewayBackend> backends;
  /// One or more `customErrorConfiguration` blocks as defined below.
  final List<GetApplicationGatewayCustomErrorConfiguration> customErrorConfigurations;
  /// Is FIPS enabled on the Application Gateway?
  final bool fipsEnabled;
  /// The ID of the Web Application Firewall Policy which is used as an HTTP Listener for this Path Rule.
  final String firewallPolicyId;
  /// Is the Firewall Policy associated with the Application Gateway?
  final bool forceFirewallPolicyAssociation;
  /// One or more `frontendIpConfiguration` blocks as defined below.
  final List<GetApplicationGatewayFrontendIpConfiguration> frontendIpConfigurations;
  /// One or more `frontendPort` blocks as defined below.
  final List<GetApplicationGatewayFrontendPort> frontendPorts;
  /// One or more `gatewayIpConfiguration` blocks as defined below.
  final List<GetApplicationGatewayGatewayIpConfiguration> gatewayIpConfigurations;
  /// A `global` block as defined below.
  final List<GetApplicationGatewayGlobal> globals;
  /// Is HTTP2 enabled on the application gateway resource?
  final bool http2Enabled;
  /// One or more `httpListener` blocks as defined below.
  final List<GetApplicationGatewayHttpListener> httpListeners;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetApplicationGatewayIdentity> identities;
  /// One or more `listener` blocks as defined below.
  final List<GetApplicationGatewayListener> listeners;
  /// The Azure region where the Application Gateway exists.
  final String location;
  /// Unique name of the Rewrite Rule
  final String name;
  final List<GetApplicationGatewayPrivateEndpointConnection> privateEndpointConnections;
  /// One or more `privateLinkConfiguration` blocks as defined below.
  final List<GetApplicationGatewayPrivateLinkConfiguration> privateLinkConfigurations;
  /// One or more `probe` blocks as defined below.
  final List<GetApplicationGatewayProbe> probes;
  /// One or more `redirectConfiguration` blocks as defined below.
  final List<GetApplicationGatewayRedirectConfiguration> redirectConfigurations;
  /// One or more `requestRoutingRule` blocks as defined below.
  final List<GetApplicationGatewayRequestRoutingRule> requestRoutingRules;
  final String resourceGroupName;
  /// One or more `rewriteRuleSet` blocks as defined below.
  final List<GetApplicationGatewayRewriteRuleSet> rewriteRuleSets;
  /// One or more `routingRule` blocks as defined below.
  final List<GetApplicationGatewayRoutingRule> routingRules;
  /// A `sku` block as defined below.
  final List<GetApplicationGatewaySkus> skus;
  /// One or more `sslCertificate` blocks as defined below.
  final List<GetApplicationGatewaySslCertificate> sslCertificates;
  /// a `sslPolicy` block as defined below.
  final List<GetApplicationGatewaySslPolicy> sslPolicies;
  /// One or more `sslProfile` blocks as defined below.
  final List<GetApplicationGatewaySslProfile> sslProfiles;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// One or more `trustedClientCertificate` blocks as defined below.
  final List<GetApplicationGatewayTrustedClientCertificate> trustedClientCertificates;
  /// One or more `trustedRootCertificate` blocks as defined below.
  final List<GetApplicationGatewayTrustedRootCertificate> trustedRootCertificates;
  /// One or more `urlPathMap` blocks as defined below.
  final List<GetApplicationGatewayUrlPathMap> urlPathMaps;
  /// A `wafConfiguration` block as defined below.
  final List<GetApplicationGatewayWafConfiguration> wafConfigurations;
  /// The list of Availability Zones in which this Application Gateway can use.
  final List<String> zones;

  /// Creates a new [GetApplicationGatewayResult].
  /// [authenticationCertificates] One or more `authenticationCertificate` blocks as defined below.
  /// [autoscaleConfigurations] An `autoscaleConfiguration` block as defined below.
  /// [backendAddressPools] One or more `backendAddressPool` blocks as defined below.
  /// [backendHttpSettings] One or more `backendHttpSettings` blocks as defined below.
  /// [backends] One or more `backend` blocks as defined below.
  /// [customErrorConfigurations] One or more `customErrorConfiguration` blocks as defined below.
  /// [fipsEnabled] Is FIPS enabled on the Application Gateway?
  /// [firewallPolicyId] The ID of the Web Application Firewall Policy which is used as an HTTP Listener for this Path Rule.
  /// [forceFirewallPolicyAssociation] Is the Firewall Policy associated with the Application Gateway?
  /// [frontendIpConfigurations] One or more `frontendIpConfiguration` blocks as defined below.
  /// [frontendPorts] One or more `frontendPort` blocks as defined below.
  /// [gatewayIpConfigurations] One or more `gatewayIpConfiguration` blocks as defined below.
  /// [globals] A `global` block as defined below.
  /// [http2Enabled] Is HTTP2 enabled on the application gateway resource?
  /// [httpListeners] One or more `httpListener` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [listeners] One or more `listener` blocks as defined below.
  /// [location] The Azure region where the Application Gateway exists.
  /// [name] Unique name of the Rewrite Rule
  /// [privateEndpointConnections] Required.
  /// [privateLinkConfigurations] One or more `privateLinkConfiguration` blocks as defined below.
  /// [probes] One or more `probe` blocks as defined below.
  /// [redirectConfigurations] One or more `redirectConfiguration` blocks as defined below.
  /// [requestRoutingRules] One or more `requestRoutingRule` blocks as defined below.
  /// [resourceGroupName] Required.
  /// [rewriteRuleSets] One or more `rewriteRuleSet` blocks as defined below.
  /// [routingRules] One or more `routingRule` blocks as defined below.
  /// [skus] A `sku` block as defined below.
  /// [sslCertificates] One or more `sslCertificate` blocks as defined below.
  /// [sslPolicies] a `sslPolicy` block as defined below.
  /// [sslProfiles] One or more `sslProfile` blocks as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trustedClientCertificates] One or more `trustedClientCertificate` blocks as defined below.
  /// [trustedRootCertificates] One or more `trustedRootCertificate` blocks as defined below.
  /// [urlPathMaps] One or more `urlPathMap` blocks as defined below.
  /// [wafConfigurations] A `wafConfiguration` block as defined below.
  /// [zones] The list of Availability Zones in which this Application Gateway can use.
  const GetApplicationGatewayResult({
    required this.authenticationCertificates,
    required this.autoscaleConfigurations,
    required this.backendAddressPools,
    required this.backendHttpSettings,
    required this.backends,
    required this.customErrorConfigurations,
    required this.fipsEnabled,
    required this.firewallPolicyId,
    required this.forceFirewallPolicyAssociation,
    required this.frontendIpConfigurations,
    required this.frontendPorts,
    required this.gatewayIpConfigurations,
    required this.globals,
    required this.http2Enabled,
    required this.httpListeners,
    required this.id,
    required this.identities,
    required this.listeners,
    required this.location,
    required this.name,
    required this.privateEndpointConnections,
    required this.privateLinkConfigurations,
    required this.probes,
    required this.redirectConfigurations,
    required this.requestRoutingRules,
    required this.resourceGroupName,
    required this.rewriteRuleSets,
    required this.routingRules,
    required this.skus,
    required this.sslCertificates,
    required this.sslPolicies,
    required this.sslProfiles,
    required this.tags,
    required this.trustedClientCertificates,
    required this.trustedRootCertificates,
    required this.urlPathMaps,
    required this.wafConfigurations,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationCertificates': pulumi.Input.encodeList<GetApplicationGatewayAuthenticationCertificate, Map<String, dynamic>>(authenticationCertificates, (value) => value.toMap()),
      'autoscaleConfigurations': pulumi.Input.encodeList<GetApplicationGatewayAutoscaleConfiguration, Map<String, dynamic>>(autoscaleConfigurations, (value) => value.toMap()),
      'backendAddressPools': pulumi.Input.encodeList<GetApplicationGatewayBackendAddressPool, Map<String, dynamic>>(backendAddressPools, (value) => value.toMap()),
      'backendHttpSettings': pulumi.Input.encodeList<GetApplicationGatewayBackendHttpSetting, Map<String, dynamic>>(backendHttpSettings, (value) => value.toMap()),
      'backends': pulumi.Input.encodeList<GetApplicationGatewayBackend, Map<String, dynamic>>(backends, (value) => value.toMap()),
      'customErrorConfigurations': pulumi.Input.encodeList<GetApplicationGatewayCustomErrorConfiguration, Map<String, dynamic>>(customErrorConfigurations, (value) => value.toMap()),
      'fipsEnabled': fipsEnabled,
      'firewallPolicyId': firewallPolicyId,
      'forceFirewallPolicyAssociation': forceFirewallPolicyAssociation,
      'frontendIpConfigurations': pulumi.Input.encodeList<GetApplicationGatewayFrontendIpConfiguration, Map<String, dynamic>>(frontendIpConfigurations, (value) => value.toMap()),
      'frontendPorts': pulumi.Input.encodeList<GetApplicationGatewayFrontendPort, Map<String, dynamic>>(frontendPorts, (value) => value.toMap()),
      'gatewayIpConfigurations': pulumi.Input.encodeList<GetApplicationGatewayGatewayIpConfiguration, Map<String, dynamic>>(gatewayIpConfigurations, (value) => value.toMap()),
      'globals': pulumi.Input.encodeList<GetApplicationGatewayGlobal, Map<String, dynamic>>(globals, (value) => value.toMap()),
      'http2Enabled': http2Enabled,
      'httpListeners': pulumi.Input.encodeList<GetApplicationGatewayHttpListener, Map<String, dynamic>>(httpListeners, (value) => value.toMap()),
      'id': id,
      'identities': pulumi.Input.encodeList<GetApplicationGatewayIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'listeners': pulumi.Input.encodeList<GetApplicationGatewayListener, Map<String, dynamic>>(listeners, (value) => value.toMap()),
      'location': location,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<GetApplicationGatewayPrivateEndpointConnection, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'privateLinkConfigurations': pulumi.Input.encodeList<GetApplicationGatewayPrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfigurations, (value) => value.toMap()),
      'probes': pulumi.Input.encodeList<GetApplicationGatewayProbe, Map<String, dynamic>>(probes, (value) => value.toMap()),
      'redirectConfigurations': pulumi.Input.encodeList<GetApplicationGatewayRedirectConfiguration, Map<String, dynamic>>(redirectConfigurations, (value) => value.toMap()),
      'requestRoutingRules': pulumi.Input.encodeList<GetApplicationGatewayRequestRoutingRule, Map<String, dynamic>>(requestRoutingRules, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'rewriteRuleSets': pulumi.Input.encodeList<GetApplicationGatewayRewriteRuleSet, Map<String, dynamic>>(rewriteRuleSets, (value) => value.toMap()),
      'routingRules': pulumi.Input.encodeList<GetApplicationGatewayRoutingRule, Map<String, dynamic>>(routingRules, (value) => value.toMap()),
      'skus': pulumi.Input.encodeList<GetApplicationGatewaySkus, Map<String, dynamic>>(skus, (value) => value.toMap()),
      'sslCertificates': pulumi.Input.encodeList<GetApplicationGatewaySslCertificate, Map<String, dynamic>>(sslCertificates, (value) => value.toMap()),
      'sslPolicies': pulumi.Input.encodeList<GetApplicationGatewaySslPolicy, Map<String, dynamic>>(sslPolicies, (value) => value.toMap()),
      'sslProfiles': pulumi.Input.encodeList<GetApplicationGatewaySslProfile, Map<String, dynamic>>(sslProfiles, (value) => value.toMap()),
      'tags': tags,
      'trustedClientCertificates': pulumi.Input.encodeList<GetApplicationGatewayTrustedClientCertificate, Map<String, dynamic>>(trustedClientCertificates, (value) => value.toMap()),
      'trustedRootCertificates': pulumi.Input.encodeList<GetApplicationGatewayTrustedRootCertificate, Map<String, dynamic>>(trustedRootCertificates, (value) => value.toMap()),
      'urlPathMaps': pulumi.Input.encodeList<GetApplicationGatewayUrlPathMap, Map<String, dynamic>>(urlPathMaps, (value) => value.toMap()),
      'wafConfigurations': pulumi.Input.encodeList<GetApplicationGatewayWafConfiguration, Map<String, dynamic>>(wafConfigurations, (value) => value.toMap()),
      'zones': zones,
    };
  }

  factory GetApplicationGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayResult(
      authenticationCertificates: pulumi.Input.decodeList<GetApplicationGatewayAuthenticationCertificate>(map['authenticationCertificates']!, (value) => GetApplicationGatewayAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>())),
      autoscaleConfigurations: pulumi.Input.decodeList<GetApplicationGatewayAutoscaleConfiguration>(map['autoscaleConfigurations']!, (value) => GetApplicationGatewayAutoscaleConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      backendAddressPools: pulumi.Input.decodeList<GetApplicationGatewayBackendAddressPool>(map['backendAddressPools']!, (value) => GetApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>())),
      backendHttpSettings: pulumi.Input.decodeList<GetApplicationGatewayBackendHttpSetting>(map['backendHttpSettings']!, (value) => GetApplicationGatewayBackendHttpSetting.fromMap((value as Map).cast<String, dynamic>())),
      backends: pulumi.Input.decodeList<GetApplicationGatewayBackend>(map['backends']!, (value) => GetApplicationGatewayBackend.fromMap((value as Map).cast<String, dynamic>())),
      customErrorConfigurations: pulumi.Input.decodeList<GetApplicationGatewayCustomErrorConfiguration>(map['customErrorConfigurations']!, (value) => GetApplicationGatewayCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      fipsEnabled: map['fipsEnabled'] as bool,
      firewallPolicyId: map['firewallPolicyId'] as String,
      forceFirewallPolicyAssociation: map['forceFirewallPolicyAssociation'] as bool,
      frontendIpConfigurations: pulumi.Input.decodeList<GetApplicationGatewayFrontendIpConfiguration>(map['frontendIpConfigurations']!, (value) => GetApplicationGatewayFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      frontendPorts: pulumi.Input.decodeList<GetApplicationGatewayFrontendPort>(map['frontendPorts']!, (value) => GetApplicationGatewayFrontendPort.fromMap((value as Map).cast<String, dynamic>())),
      gatewayIpConfigurations: pulumi.Input.decodeList<GetApplicationGatewayGatewayIpConfiguration>(map['gatewayIpConfigurations']!, (value) => GetApplicationGatewayGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      globals: pulumi.Input.decodeList<GetApplicationGatewayGlobal>(map['globals']!, (value) => GetApplicationGatewayGlobal.fromMap((value as Map).cast<String, dynamic>())),
      http2Enabled: map['http2Enabled'] as bool,
      httpListeners: pulumi.Input.decodeList<GetApplicationGatewayHttpListener>(map['httpListeners']!, (value) => GetApplicationGatewayHttpListener.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetApplicationGatewayIdentity>(map['identities']!, (value) => GetApplicationGatewayIdentity.fromMap((value as Map).cast<String, dynamic>())),
      listeners: pulumi.Input.decodeList<GetApplicationGatewayListener>(map['listeners']!, (value) => GetApplicationGatewayListener.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<GetApplicationGatewayPrivateEndpointConnection>(map['privateEndpointConnections']!, (value) => GetApplicationGatewayPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkConfigurations: pulumi.Input.decodeList<GetApplicationGatewayPrivateLinkConfiguration>(map['privateLinkConfigurations']!, (value) => GetApplicationGatewayPrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      probes: pulumi.Input.decodeList<GetApplicationGatewayProbe>(map['probes']!, (value) => GetApplicationGatewayProbe.fromMap((value as Map).cast<String, dynamic>())),
      redirectConfigurations: pulumi.Input.decodeList<GetApplicationGatewayRedirectConfiguration>(map['redirectConfigurations']!, (value) => GetApplicationGatewayRedirectConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      requestRoutingRules: pulumi.Input.decodeList<GetApplicationGatewayRequestRoutingRule>(map['requestRoutingRules']!, (value) => GetApplicationGatewayRequestRoutingRule.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      rewriteRuleSets: pulumi.Input.decodeList<GetApplicationGatewayRewriteRuleSet>(map['rewriteRuleSets']!, (value) => GetApplicationGatewayRewriteRuleSet.fromMap((value as Map).cast<String, dynamic>())),
      routingRules: pulumi.Input.decodeList<GetApplicationGatewayRoutingRule>(map['routingRules']!, (value) => GetApplicationGatewayRoutingRule.fromMap((value as Map).cast<String, dynamic>())),
      skus: pulumi.Input.decodeList<GetApplicationGatewaySkus>(map['skus']!, (value) => GetApplicationGatewaySkus.fromMap((value as Map).cast<String, dynamic>())),
      sslCertificates: pulumi.Input.decodeList<GetApplicationGatewaySslCertificate>(map['sslCertificates']!, (value) => GetApplicationGatewaySslCertificate.fromMap((value as Map).cast<String, dynamic>())),
      sslPolicies: pulumi.Input.decodeList<GetApplicationGatewaySslPolicy>(map['sslPolicies']!, (value) => GetApplicationGatewaySslPolicy.fromMap((value as Map).cast<String, dynamic>())),
      sslProfiles: pulumi.Input.decodeList<GetApplicationGatewaySslProfile>(map['sslProfiles']!, (value) => GetApplicationGatewaySslProfile.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      trustedClientCertificates: pulumi.Input.decodeList<GetApplicationGatewayTrustedClientCertificate>(map['trustedClientCertificates']!, (value) => GetApplicationGatewayTrustedClientCertificate.fromMap((value as Map).cast<String, dynamic>())),
      trustedRootCertificates: pulumi.Input.decodeList<GetApplicationGatewayTrustedRootCertificate>(map['trustedRootCertificates']!, (value) => GetApplicationGatewayTrustedRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      urlPathMaps: pulumi.Input.decodeList<GetApplicationGatewayUrlPathMap>(map['urlPathMaps']!, (value) => GetApplicationGatewayUrlPathMap.fromMap((value as Map).cast<String, dynamic>())),
      wafConfigurations: pulumi.Input.decodeList<GetApplicationGatewayWafConfiguration>(map['wafConfigurations']!, (value) => GetApplicationGatewayWafConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
