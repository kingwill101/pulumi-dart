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
  final List<GetApplicationGatewayAuthenticationCertificate>? authenticationCertificates;
  /// An `autoscaleConfiguration` block as defined below.
  final List<GetApplicationGatewayAutoscaleConfiguration>? autoscaleConfigurations;
  /// One or more `backendAddressPool` blocks as defined below.
  final List<GetApplicationGatewayBackendAddressPool>? backendAddressPools;
  /// One or more `backendHttpSettings` blocks as defined below.
  final List<GetApplicationGatewayBackendHttpSetting>? backendHttpSettings;
  /// One or more `backend` blocks as defined below.
  final List<GetApplicationGatewayBackend>? backends;
  /// One or more `customErrorConfiguration` blocks as defined below.
  final List<GetApplicationGatewayCustomErrorConfiguration>? customErrorConfigurations;
  /// Is FIPS enabled on the Application Gateway?
  final bool? fipsEnabled;
  /// The ID of the Web Application Firewall Policy which is used as an HTTP Listener for this Path Rule.
  final String? firewallPolicyId;
  /// Is the Firewall Policy associated with the Application Gateway?
  final bool? forceFirewallPolicyAssociation;
  /// One or more `frontendIpConfiguration` blocks as defined below.
  final List<GetApplicationGatewayFrontendIpConfiguration>? frontendIpConfigurations;
  /// One or more `frontendPort` blocks as defined below.
  final List<GetApplicationGatewayFrontendPort>? frontendPorts;
  /// One or more `gatewayIpConfiguration` blocks as defined below.
  final List<GetApplicationGatewayGatewayIpConfiguration>? gatewayIpConfigurations;
  /// A `global` block as defined below.
  final List<GetApplicationGatewayGlobal>? globals;
  /// Is HTTP2 enabled on the application gateway resource?
  final bool? http2Enabled;
  /// One or more `httpListener` blocks as defined below.
  final List<GetApplicationGatewayHttpListener>? httpListeners;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetApplicationGatewayIdentity>? identities;
  /// One or more `listener` blocks as defined below.
  final List<GetApplicationGatewayListener>? listeners;
  /// The Azure region where the Application Gateway exists.
  final String? location;
  /// Unique name of the Rewrite Rule
  final String? name;
  final List<GetApplicationGatewayPrivateEndpointConnection>? privateEndpointConnections;
  /// One or more `privateLinkConfiguration` blocks as defined below.
  final List<GetApplicationGatewayPrivateLinkConfiguration>? privateLinkConfigurations;
  /// One or more `probe` blocks as defined below.
  final List<GetApplicationGatewayProbe>? probes;
  /// One or more `redirectConfiguration` blocks as defined below.
  final List<GetApplicationGatewayRedirectConfiguration>? redirectConfigurations;
  /// One or more `requestRoutingRule` blocks as defined below.
  final List<GetApplicationGatewayRequestRoutingRule>? requestRoutingRules;
  final String? resourceGroupName;
  /// One or more `rewriteRuleSet` blocks as defined below.
  final List<GetApplicationGatewayRewriteRuleSet>? rewriteRuleSets;
  /// One or more `routingRule` blocks as defined below.
  final List<GetApplicationGatewayRoutingRule>? routingRules;
  /// A `sku` block as defined below.
  final List<GetApplicationGatewaySkus>? skus;
  /// One or more `sslCertificate` blocks as defined below.
  final List<GetApplicationGatewaySslCertificate>? sslCertificates;
  /// a `sslPolicy` block as defined below.
  final List<GetApplicationGatewaySslPolicy>? sslPolicies;
  /// One or more `sslProfile` blocks as defined below.
  final List<GetApplicationGatewaySslProfile>? sslProfiles;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// One or more `trustedClientCertificate` blocks as defined below.
  final List<GetApplicationGatewayTrustedClientCertificate>? trustedClientCertificates;
  /// One or more `trustedRootCertificate` blocks as defined below.
  final List<GetApplicationGatewayTrustedRootCertificate>? trustedRootCertificates;
  /// One or more `urlPathMap` blocks as defined below.
  final List<GetApplicationGatewayUrlPathMap>? urlPathMaps;
  /// A `wafConfiguration` block as defined below.
  final List<GetApplicationGatewayWafConfiguration>? wafConfigurations;
  /// The list of Availability Zones in which this Application Gateway can use.
  final List<String>? zones;

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
  /// [privateEndpointConnections] Optional.
  /// [privateLinkConfigurations] One or more `privateLinkConfiguration` blocks as defined below.
  /// [probes] One or more `probe` blocks as defined below.
  /// [redirectConfigurations] One or more `redirectConfiguration` blocks as defined below.
  /// [requestRoutingRules] One or more `requestRoutingRule` blocks as defined below.
  /// [resourceGroupName] Optional.
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
    this.authenticationCertificates,
    this.autoscaleConfigurations,
    this.backendAddressPools,
    this.backendHttpSettings,
    this.backends,
    this.customErrorConfigurations,
    this.fipsEnabled,
    this.firewallPolicyId,
    this.forceFirewallPolicyAssociation,
    this.frontendIpConfigurations,
    this.frontendPorts,
    this.gatewayIpConfigurations,
    this.globals,
    this.http2Enabled,
    this.httpListeners,
    this.id,
    this.identities,
    this.listeners,
    this.location,
    this.name,
    this.privateEndpointConnections,
    this.privateLinkConfigurations,
    this.probes,
    this.redirectConfigurations,
    this.requestRoutingRules,
    this.resourceGroupName,
    this.rewriteRuleSets,
    this.routingRules,
    this.skus,
    this.sslCertificates,
    this.sslPolicies,
    this.sslProfiles,
    this.tags,
    this.trustedClientCertificates,
    this.trustedRootCertificates,
    this.urlPathMaps,
    this.wafConfigurations,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationCertificates': ?(() { final guardedValue = authenticationCertificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayAuthenticationCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autoscaleConfigurations': ?(() { final guardedValue = autoscaleConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayAutoscaleConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backendAddressPools': ?(() { final guardedValue = backendAddressPools; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayBackendAddressPool, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backendHttpSettings': ?(() { final guardedValue = backendHttpSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayBackendHttpSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backends': ?(() { final guardedValue = backends; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayBackend, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customErrorConfigurations': ?(() { final guardedValue = customErrorConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayCustomErrorConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fipsEnabled': ?fipsEnabled,
      'firewallPolicyId': ?firewallPolicyId,
      'forceFirewallPolicyAssociation': ?forceFirewallPolicyAssociation,
      'frontendIpConfigurations': ?(() { final guardedValue = frontendIpConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayFrontendIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'frontendPorts': ?(() { final guardedValue = frontendPorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayFrontendPort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayIpConfigurations': ?(() { final guardedValue = gatewayIpConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayGatewayIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'globals': ?(() { final guardedValue = globals; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayGlobal, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'http2Enabled': ?http2Enabled,
      'httpListeners': ?(() { final guardedValue = httpListeners; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayHttpListener, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'listeners': ?(() { final guardedValue = listeners; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayListener, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayPrivateEndpointConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateLinkConfigurations': ?(() { final guardedValue = privateLinkConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayPrivateLinkConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'probes': ?(() { final guardedValue = probes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayProbe, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'redirectConfigurations': ?(() { final guardedValue = redirectConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayRedirectConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'requestRoutingRules': ?(() { final guardedValue = requestRoutingRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayRequestRoutingRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'rewriteRuleSets': ?(() { final guardedValue = rewriteRuleSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayRewriteRuleSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'routingRules': ?(() { final guardedValue = routingRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayRoutingRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'skus': ?(() { final guardedValue = skus; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewaySkus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sslCertificates': ?(() { final guardedValue = sslCertificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewaySslCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sslPolicies': ?(() { final guardedValue = sslPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewaySslPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sslProfiles': ?(() { final guardedValue = sslProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewaySslProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'trustedClientCertificates': ?(() { final guardedValue = trustedClientCertificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayTrustedClientCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'trustedRootCertificates': ?(() { final guardedValue = trustedRootCertificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayTrustedRootCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'urlPathMaps': ?(() { final guardedValue = urlPathMaps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayUrlPathMap, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'wafConfigurations': ?(() { final guardedValue = wafConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationGatewayWafConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zones': ?zones,
    };
  }

  factory GetApplicationGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayResult(
      authenticationCertificates: (() { final guardedValue = map['authenticationCertificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayAuthenticationCertificate>(guardedValue, (value) => GetApplicationGatewayAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      autoscaleConfigurations: (() { final guardedValue = map['autoscaleConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayAutoscaleConfiguration>(guardedValue, (value) => GetApplicationGatewayAutoscaleConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      backendAddressPools: (() { final guardedValue = map['backendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayBackendAddressPool>(guardedValue, (value) => GetApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>())); })(),
      backendHttpSettings: (() { final guardedValue = map['backendHttpSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayBackendHttpSetting>(guardedValue, (value) => GetApplicationGatewayBackendHttpSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      backends: (() { final guardedValue = map['backends']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayBackend>(guardedValue, (value) => GetApplicationGatewayBackend.fromMap((value as Map).cast<String, dynamic>())); })(),
      customErrorConfigurations: (() { final guardedValue = map['customErrorConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayCustomErrorConfiguration>(guardedValue, (value) => GetApplicationGatewayCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      fipsEnabled: (() { final guardedValue = map['fipsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      firewallPolicyId: (() { final guardedValue = map['firewallPolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forceFirewallPolicyAssociation: (() { final guardedValue = map['forceFirewallPolicyAssociation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      frontendIpConfigurations: (() { final guardedValue = map['frontendIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayFrontendIpConfiguration>(guardedValue, (value) => GetApplicationGatewayFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      frontendPorts: (() { final guardedValue = map['frontendPorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayFrontendPort>(guardedValue, (value) => GetApplicationGatewayFrontendPort.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayIpConfigurations: (() { final guardedValue = map['gatewayIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayGatewayIpConfiguration>(guardedValue, (value) => GetApplicationGatewayGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      globals: (() { final guardedValue = map['globals']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayGlobal>(guardedValue, (value) => GetApplicationGatewayGlobal.fromMap((value as Map).cast<String, dynamic>())); })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      httpListeners: (() { final guardedValue = map['httpListeners']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayHttpListener>(guardedValue, (value) => GetApplicationGatewayHttpListener.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayIdentity>(guardedValue, (value) => GetApplicationGatewayIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      listeners: (() { final guardedValue = map['listeners']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayListener>(guardedValue, (value) => GetApplicationGatewayListener.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayPrivateEndpointConnection>(guardedValue, (value) => GetApplicationGatewayPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateLinkConfigurations: (() { final guardedValue = map['privateLinkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayPrivateLinkConfiguration>(guardedValue, (value) => GetApplicationGatewayPrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      probes: (() { final guardedValue = map['probes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayProbe>(guardedValue, (value) => GetApplicationGatewayProbe.fromMap((value as Map).cast<String, dynamic>())); })(),
      redirectConfigurations: (() { final guardedValue = map['redirectConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayRedirectConfiguration>(guardedValue, (value) => GetApplicationGatewayRedirectConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      requestRoutingRules: (() { final guardedValue = map['requestRoutingRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayRequestRoutingRule>(guardedValue, (value) => GetApplicationGatewayRequestRoutingRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rewriteRuleSets: (() { final guardedValue = map['rewriteRuleSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayRewriteRuleSet>(guardedValue, (value) => GetApplicationGatewayRewriteRuleSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      routingRules: (() { final guardedValue = map['routingRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayRoutingRule>(guardedValue, (value) => GetApplicationGatewayRoutingRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      skus: (() { final guardedValue = map['skus']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewaySkus>(guardedValue, (value) => GetApplicationGatewaySkus.fromMap((value as Map).cast<String, dynamic>())); })(),
      sslCertificates: (() { final guardedValue = map['sslCertificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewaySslCertificate>(guardedValue, (value) => GetApplicationGatewaySslCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      sslPolicies: (() { final guardedValue = map['sslPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewaySslPolicy>(guardedValue, (value) => GetApplicationGatewaySslPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      sslProfiles: (() { final guardedValue = map['sslProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewaySslProfile>(guardedValue, (value) => GetApplicationGatewaySslProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trustedClientCertificates: (() { final guardedValue = map['trustedClientCertificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayTrustedClientCertificate>(guardedValue, (value) => GetApplicationGatewayTrustedClientCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      trustedRootCertificates: (() { final guardedValue = map['trustedRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayTrustedRootCertificate>(guardedValue, (value) => GetApplicationGatewayTrustedRootCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      urlPathMaps: (() { final guardedValue = map['urlPathMaps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayUrlPathMap>(guardedValue, (value) => GetApplicationGatewayUrlPathMap.fromMap((value as Map).cast<String, dynamic>())); })(),
      wafConfigurations: (() { final guardedValue = map['wafConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationGatewayWafConfiguration>(guardedValue, (value) => GetApplicationGatewayWafConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
