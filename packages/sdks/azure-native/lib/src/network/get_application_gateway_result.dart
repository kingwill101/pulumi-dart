// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_authentication_certificate_response.dart';
import 'application_gateway_autoscale_configuration_response.dart';
import 'application_gateway_backend_address_pool_response.dart';
import 'application_gateway_backend_http_settings_response.dart';
import 'application_gateway_backend_settings_response.dart';
import 'application_gateway_custom_error_response.dart';
import 'application_gateway_frontend_ipconfiguration_response.dart';
import 'application_gateway_frontend_port_response.dart';
import 'application_gateway_global_configuration_response.dart';
import 'application_gateway_http_listener_response.dart';
import 'application_gateway_ipconfiguration_response.dart';
import 'application_gateway_listener_response.dart';
import 'application_gateway_load_distribution_policy_response.dart';
import 'application_gateway_private_endpoint_connection_response.dart';
import 'application_gateway_private_link_configuration_response.dart';
import 'application_gateway_probe_response.dart';
import 'application_gateway_redirect_configuration_response.dart';
import 'application_gateway_request_routing_rule_response.dart';
import 'application_gateway_rewrite_rule_set_response.dart';
import 'application_gateway_routing_rule_response.dart';
import 'application_gateway_sku_response.dart';
import 'application_gateway_ssl_certificate_response.dart';
import 'application_gateway_ssl_policy_response.dart';
import 'application_gateway_ssl_profile_response.dart';
import 'application_gateway_trusted_client_certificate_response.dart';
import 'application_gateway_trusted_root_certificate_response.dart';
import 'application_gateway_url_path_map_response.dart';
import 'application_gateway_web_application_firewall_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getApplicationGateway.
class GetApplicationGatewayResult {
  /// Authentication certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayAuthenticationCertificateResponse>? authenticationCertificates;
  /// Autoscale Configuration.
  final ApplicationGatewayAutoscaleConfigurationResponse? autoscaleConfiguration;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Backend address pool of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayBackendAddressPoolResponse>? backendAddressPools;
  /// Backend http settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayBackendHttpSettingsResponse>? backendHttpSettingsCollection;
  /// Backend settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayBackendSettingsResponse>? backendSettingsCollection;
  /// Custom error configurations of the application gateway resource.
  final List<ApplicationGatewayCustomErrorResponse>? customErrorConfigurations;
  /// The default predefined SSL Policy applied on the application gateway resource.
  final String defaultPredefinedSslPolicy;
  /// Whether FIPS is enabled on the application gateway resource.
  final bool? enableFips;
  /// Whether HTTP2 is enabled on the application gateway resource.
  final bool? enableHttp2;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Reference to the FirewallPolicy resource.
  final SubResourceResponse? firewallPolicy;
  /// If true, associates a firewall policy with an application gateway regardless whether the policy differs from the WAF Config.
  final bool? forceFirewallPolicyAssociation;
  /// Frontend IP addresses of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayFrontendIPConfigurationResponse>? frontendIPConfigurations;
  /// Frontend ports of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayFrontendPortResponse>? frontendPorts;
  /// Subnets of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayIPConfigurationResponse>? gatewayIPConfigurations;
  /// Global Configuration.
  final ApplicationGatewayGlobalConfigurationResponse? globalConfiguration;
  /// Http listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayHttpListenerResponse>? httpListeners;
  /// Resource ID.
  final String? id;
  /// The identity of the application gateway, if configured.
  final ManagedServiceIdentityResponse? identity;
  /// Listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayListenerResponse>? listeners;
  /// Load distribution policies of the application gateway resource.
  final List<ApplicationGatewayLoadDistributionPolicyResponse>? loadDistributionPolicies;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Operational state of the application gateway resource.
  final String operationalState;
  /// Private Endpoint connections on application gateway.
  final List<ApplicationGatewayPrivateEndpointConnectionResponse> privateEndpointConnections;
  /// PrivateLink configurations on application gateway.
  final List<ApplicationGatewayPrivateLinkConfigurationResponse>? privateLinkConfigurations;
  /// Probes of the application gateway resource.
  final List<ApplicationGatewayProbeResponse>? probes;
  /// The provisioning state of the application gateway resource.
  final String provisioningState;
  /// Redirect configurations of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayRedirectConfigurationResponse>? redirectConfigurations;
  /// Request routing rules of the application gateway resource.
  final List<ApplicationGatewayRequestRoutingRuleResponse>? requestRoutingRules;
  /// The resource GUID property of the application gateway resource.
  final String resourceGuid;
  /// Rewrite rules for the application gateway resource.
  final List<ApplicationGatewayRewriteRuleSetResponse>? rewriteRuleSets;
  /// Routing rules of the application gateway resource.
  final List<ApplicationGatewayRoutingRuleResponse>? routingRules;
  /// SKU of the application gateway resource.
  final ApplicationGatewaySkuResponse? sku;
  /// SSL certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewaySslCertificateResponse>? sslCertificates;
  /// SSL policy of the application gateway resource.
  final ApplicationGatewaySslPolicyResponse? sslPolicy;
  /// SSL profiles of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewaySslProfileResponse>? sslProfiles;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Trusted client certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayTrustedClientCertificateResponse>? trustedClientCertificates;
  /// Trusted Root certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayTrustedRootCertificateResponse>? trustedRootCertificates;
  /// Resource type.
  final String type;
  /// URL path map of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayUrlPathMapResponse>? urlPathMaps;
  /// Web application firewall configuration.
  final ApplicationGatewayWebApplicationFirewallConfigurationResponse? webApplicationFirewallConfiguration;
  /// A list of availability zones denoting where the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [GetApplicationGatewayResult].
  /// [authenticationCertificates] Authentication certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [autoscaleConfiguration] Autoscale Configuration.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backendAddressPools] Backend address pool of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [backendHttpSettingsCollection] Backend http settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [backendSettingsCollection] Backend settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [customErrorConfigurations] Custom error configurations of the application gateway resource.
  /// [defaultPredefinedSslPolicy] The default predefined SSL Policy applied on the application gateway resource.
  /// [enableFips] Whether FIPS is enabled on the application gateway resource.
  /// [enableHttp2] Whether HTTP2 is enabled on the application gateway resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [firewallPolicy] Reference to the FirewallPolicy resource.
  /// [forceFirewallPolicyAssociation] If true, associates a firewall policy with an application gateway regardless whether the policy differs from the WAF Config.
  /// [frontendIPConfigurations] Frontend IP addresses of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [frontendPorts] Frontend ports of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [gatewayIPConfigurations] Subnets of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [globalConfiguration] Global Configuration.
  /// [httpListeners] Http listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [id] Resource ID.
  /// [identity] The identity of the application gateway, if configured.
  /// [listeners] Listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [loadDistributionPolicies] Load distribution policies of the application gateway resource.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [operationalState] Operational state of the application gateway resource.
  /// [privateEndpointConnections] Private Endpoint connections on application gateway.
  /// [privateLinkConfigurations] PrivateLink configurations on application gateway.
  /// [probes] Probes of the application gateway resource.
  /// [provisioningState] The provisioning state of the application gateway resource.
  /// [redirectConfigurations] Redirect configurations of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [requestRoutingRules] Request routing rules of the application gateway resource.
  /// [resourceGuid] The resource GUID property of the application gateway resource.
  /// [rewriteRuleSets] Rewrite rules for the application gateway resource.
  /// [routingRules] Routing rules of the application gateway resource.
  /// [sku] SKU of the application gateway resource.
  /// [sslCertificates] SSL certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [sslPolicy] SSL policy of the application gateway resource.
  /// [sslProfiles] SSL profiles of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [tags] Resource tags.
  /// [trustedClientCertificates] Trusted client certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [trustedRootCertificates] Trusted Root certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [type] Resource type.
  /// [urlPathMaps] URL path map of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [webApplicationFirewallConfiguration] Web application firewall configuration.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  GetApplicationGatewayResult({
    this.authenticationCertificates,
    this.autoscaleConfiguration,
    required this.azureApiVersion,
    this.backendAddressPools,
    this.backendHttpSettingsCollection,
    this.backendSettingsCollection,
    this.customErrorConfigurations,
    required this.defaultPredefinedSslPolicy,
    this.enableFips,
    this.enableHttp2,
    required this.etag,
    this.firewallPolicy,
    this.forceFirewallPolicyAssociation,
    this.frontendIPConfigurations,
    this.frontendPorts,
    this.gatewayIPConfigurations,
    this.globalConfiguration,
    this.httpListeners,
    this.id,
    this.identity,
    this.listeners,
    this.loadDistributionPolicies,
    this.location,
    required this.name,
    required this.operationalState,
    required this.privateEndpointConnections,
    this.privateLinkConfigurations,
    this.probes,
    required this.provisioningState,
    this.redirectConfigurations,
    this.requestRoutingRules,
    required this.resourceGuid,
    this.rewriteRuleSets,
    this.routingRules,
    this.sku,
    this.sslCertificates,
    this.sslPolicy,
    this.sslProfiles,
    this.tags,
    this.trustedClientCertificates,
    this.trustedRootCertificates,
    required this.type,
    this.urlPathMaps,
    this.webApplicationFirewallConfiguration,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationCertificates': ?authenticationCertificates == null ? null : pulumi.Input.encodeList<ApplicationGatewayAuthenticationCertificateResponse, Map<String, dynamic>>(authenticationCertificates!, (value) => value.toMap()),
      'autoscaleConfiguration': ?autoscaleConfiguration == null ? null : autoscaleConfiguration!.toMap(),
      'azureApiVersion': azureApiVersion,
      'backendAddressPools': ?backendAddressPools == null ? null : pulumi.Input.encodeList<ApplicationGatewayBackendAddressPoolResponse, Map<String, dynamic>>(backendAddressPools!, (value) => value.toMap()),
      'backendHttpSettingsCollection': ?backendHttpSettingsCollection == null ? null : pulumi.Input.encodeList<ApplicationGatewayBackendHttpSettingsResponse, Map<String, dynamic>>(backendHttpSettingsCollection!, (value) => value.toMap()),
      'backendSettingsCollection': ?backendSettingsCollection == null ? null : pulumi.Input.encodeList<ApplicationGatewayBackendSettingsResponse, Map<String, dynamic>>(backendSettingsCollection!, (value) => value.toMap()),
      'customErrorConfigurations': ?customErrorConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayCustomErrorResponse, Map<String, dynamic>>(customErrorConfigurations!, (value) => value.toMap()),
      'defaultPredefinedSslPolicy': defaultPredefinedSslPolicy,
      'enableFips': ?enableFips,
      'enableHttp2': ?enableHttp2,
      'etag': etag,
      'firewallPolicy': ?firewallPolicy == null ? null : firewallPolicy!.toMap(),
      'forceFirewallPolicyAssociation': ?forceFirewallPolicyAssociation,
      'frontendIPConfigurations': ?frontendIPConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayFrontendIPConfigurationResponse, Map<String, dynamic>>(frontendIPConfigurations!, (value) => value.toMap()),
      'frontendPorts': ?frontendPorts == null ? null : pulumi.Input.encodeList<ApplicationGatewayFrontendPortResponse, Map<String, dynamic>>(frontendPorts!, (value) => value.toMap()),
      'gatewayIPConfigurations': ?gatewayIPConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayIPConfigurationResponse, Map<String, dynamic>>(gatewayIPConfigurations!, (value) => value.toMap()),
      'globalConfiguration': ?globalConfiguration == null ? null : globalConfiguration!.toMap(),
      'httpListeners': ?httpListeners == null ? null : pulumi.Input.encodeList<ApplicationGatewayHttpListenerResponse, Map<String, dynamic>>(httpListeners!, (value) => value.toMap()),
      'id': ?id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'listeners': ?listeners == null ? null : pulumi.Input.encodeList<ApplicationGatewayListenerResponse, Map<String, dynamic>>(listeners!, (value) => value.toMap()),
      'loadDistributionPolicies': ?loadDistributionPolicies == null ? null : pulumi.Input.encodeList<ApplicationGatewayLoadDistributionPolicyResponse, Map<String, dynamic>>(loadDistributionPolicies!, (value) => value.toMap()),
      'location': ?location,
      'name': name,
      'operationalState': operationalState,
      'privateEndpointConnections': pulumi.Input.encodeList<ApplicationGatewayPrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'privateLinkConfigurations': ?privateLinkConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayPrivateLinkConfigurationResponse, Map<String, dynamic>>(privateLinkConfigurations!, (value) => value.toMap()),
      'probes': ?probes == null ? null : pulumi.Input.encodeList<ApplicationGatewayProbeResponse, Map<String, dynamic>>(probes!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'redirectConfigurations': ?redirectConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayRedirectConfigurationResponse, Map<String, dynamic>>(redirectConfigurations!, (value) => value.toMap()),
      'requestRoutingRules': ?requestRoutingRules == null ? null : pulumi.Input.encodeList<ApplicationGatewayRequestRoutingRuleResponse, Map<String, dynamic>>(requestRoutingRules!, (value) => value.toMap()),
      'resourceGuid': resourceGuid,
      'rewriteRuleSets': ?rewriteRuleSets == null ? null : pulumi.Input.encodeList<ApplicationGatewayRewriteRuleSetResponse, Map<String, dynamic>>(rewriteRuleSets!, (value) => value.toMap()),
      'routingRules': ?routingRules == null ? null : pulumi.Input.encodeList<ApplicationGatewayRoutingRuleResponse, Map<String, dynamic>>(routingRules!, (value) => value.toMap()),
      'sku': ?sku == null ? null : sku!.toMap(),
      'sslCertificates': ?sslCertificates == null ? null : pulumi.Input.encodeList<ApplicationGatewaySslCertificateResponse, Map<String, dynamic>>(sslCertificates!, (value) => value.toMap()),
      'sslPolicy': ?sslPolicy == null ? null : sslPolicy!.toMap(),
      'sslProfiles': ?sslProfiles == null ? null : pulumi.Input.encodeList<ApplicationGatewaySslProfileResponse, Map<String, dynamic>>(sslProfiles!, (value) => value.toMap()),
      'tags': ?tags,
      'trustedClientCertificates': ?trustedClientCertificates == null ? null : pulumi.Input.encodeList<ApplicationGatewayTrustedClientCertificateResponse, Map<String, dynamic>>(trustedClientCertificates!, (value) => value.toMap()),
      'trustedRootCertificates': ?trustedRootCertificates == null ? null : pulumi.Input.encodeList<ApplicationGatewayTrustedRootCertificateResponse, Map<String, dynamic>>(trustedRootCertificates!, (value) => value.toMap()),
      'type': type,
      'urlPathMaps': ?urlPathMaps == null ? null : pulumi.Input.encodeList<ApplicationGatewayUrlPathMapResponse, Map<String, dynamic>>(urlPathMaps!, (value) => value.toMap()),
      'webApplicationFirewallConfiguration': ?webApplicationFirewallConfiguration == null ? null : webApplicationFirewallConfiguration!.toMap(),
      'zones': ?zones,
    };
  }

  factory GetApplicationGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayResult(
      authenticationCertificates: map['authenticationCertificates'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificateResponse>(map['authenticationCertificates']!, (value) => ApplicationGatewayAuthenticationCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : ApplicationGatewayAutoscaleConfigurationResponse.fromMap((map['autoscaleConfiguration']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      backendAddressPools: map['backendAddressPools'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayBackendAddressPoolResponse>(map['backendAddressPools']!, (value) => ApplicationGatewayBackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>())),
      backendHttpSettingsCollection: map['backendHttpSettingsCollection'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayBackendHttpSettingsResponse>(map['backendHttpSettingsCollection']!, (value) => ApplicationGatewayBackendHttpSettingsResponse.fromMap((value as Map).cast<String, dynamic>())),
      backendSettingsCollection: map['backendSettingsCollection'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayBackendSettingsResponse>(map['backendSettingsCollection']!, (value) => ApplicationGatewayBackendSettingsResponse.fromMap((value as Map).cast<String, dynamic>())),
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayCustomErrorResponse>(map['customErrorConfigurations']!, (value) => ApplicationGatewayCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultPredefinedSslPolicy: map['defaultPredefinedSslPolicy'] as String,
      enableFips: map['enableFips'] == null ? null : map['enableFips']! as bool,
      enableHttp2: map['enableHttp2'] == null ? null : map['enableHttp2']! as bool,
      etag: map['etag'] as String,
      firewallPolicy: map['firewallPolicy'] == null ? null : SubResourceResponse.fromMap((map['firewallPolicy']! as Map).cast<String, dynamic>()),
      forceFirewallPolicyAssociation: map['forceFirewallPolicyAssociation'] == null ? null : map['forceFirewallPolicyAssociation']! as bool,
      frontendIPConfigurations: map['frontendIPConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayFrontendIPConfigurationResponse>(map['frontendIPConfigurations']!, (value) => ApplicationGatewayFrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      frontendPorts: map['frontendPorts'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayFrontendPortResponse>(map['frontendPorts']!, (value) => ApplicationGatewayFrontendPortResponse.fromMap((value as Map).cast<String, dynamic>())),
      gatewayIPConfigurations: map['gatewayIPConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayIPConfigurationResponse>(map['gatewayIPConfigurations']!, (value) => ApplicationGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      globalConfiguration: map['globalConfiguration'] == null ? null : ApplicationGatewayGlobalConfigurationResponse.fromMap((map['globalConfiguration']! as Map).cast<String, dynamic>()),
      httpListeners: map['httpListeners'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayHttpListenerResponse>(map['httpListeners']!, (value) => ApplicationGatewayHttpListenerResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id']! as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      listeners: map['listeners'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayListenerResponse>(map['listeners']!, (value) => ApplicationGatewayListenerResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadDistributionPolicies: map['loadDistributionPolicies'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayLoadDistributionPolicyResponse>(map['loadDistributionPolicies']!, (value) => ApplicationGatewayLoadDistributionPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      operationalState: map['operationalState'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<ApplicationGatewayPrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => ApplicationGatewayPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfigurationResponse>(map['privateLinkConfigurations']!, (value) => ApplicationGatewayPrivateLinkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      probes: map['probes'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayProbeResponse>(map['probes']!, (value) => ApplicationGatewayProbeResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      redirectConfigurations: map['redirectConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayRedirectConfigurationResponse>(map['redirectConfigurations']!, (value) => ApplicationGatewayRedirectConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      requestRoutingRules: map['requestRoutingRules'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRuleResponse>(map['requestRoutingRules']!, (value) => ApplicationGatewayRequestRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceGuid: map['resourceGuid'] as String,
      rewriteRuleSets: map['rewriteRuleSets'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSetResponse>(map['rewriteRuleSets']!, (value) => ApplicationGatewayRewriteRuleSetResponse.fromMap((value as Map).cast<String, dynamic>())),
      routingRules: map['routingRules'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayRoutingRuleResponse>(map['routingRules']!, (value) => ApplicationGatewayRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : ApplicationGatewaySkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      sslCertificates: map['sslCertificates'] == null ? null : pulumi.Input.decodeList<ApplicationGatewaySslCertificateResponse>(map['sslCertificates']!, (value) => ApplicationGatewaySslCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      sslPolicy: map['sslPolicy'] == null ? null : ApplicationGatewaySslPolicyResponse.fromMap((map['sslPolicy']! as Map).cast<String, dynamic>()),
      sslProfiles: map['sslProfiles'] == null ? null : pulumi.Input.decodeList<ApplicationGatewaySslProfileResponse>(map['sslProfiles']!, (value) => ApplicationGatewaySslProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      trustedClientCertificates: map['trustedClientCertificates'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificateResponse>(map['trustedClientCertificates']!, (value) => ApplicationGatewayTrustedClientCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      trustedRootCertificates: map['trustedRootCertificates'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificateResponse>(map['trustedRootCertificates']!, (value) => ApplicationGatewayTrustedRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      urlPathMaps: map['urlPathMaps'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayUrlPathMapResponse>(map['urlPathMaps']!, (value) => ApplicationGatewayUrlPathMapResponse.fromMap((value as Map).cast<String, dynamic>())),
      webApplicationFirewallConfiguration: map['webApplicationFirewallConfiguration'] == null ? null : ApplicationGatewayWebApplicationFirewallConfigurationResponse.fromMap((map['webApplicationFirewallConfiguration']! as Map).cast<String, dynamic>()),
      zones: map['zones'] == null ? null : (map['zones']! as List).cast<String>(),
    );
  }
}

