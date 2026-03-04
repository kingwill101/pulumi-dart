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
  final List<ApplicationGatewayAuthenticationCertificateResponse>?
  authenticationCertificates;

  /// Autoscale Configuration.
  final ApplicationGatewayAutoscaleConfigurationResponse?
  autoscaleConfiguration;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Backend address pool of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayBackendAddressPoolResponse>? backendAddressPools;

  /// Backend http settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayBackendHttpSettingsResponse>?
  backendHttpSettingsCollection;

  /// Backend settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayBackendSettingsResponse>?
  backendSettingsCollection;

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
  final List<ApplicationGatewayFrontendIPConfigurationResponse>?
  frontendIPConfigurations;

  /// Frontend ports of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayFrontendPortResponse>? frontendPorts;

  /// Subnets of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayIPConfigurationResponse>?
  gatewayIPConfigurations;

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
  final List<ApplicationGatewayLoadDistributionPolicyResponse>?
  loadDistributionPolicies;

  /// Resource location.
  final String? location;

  /// Resource name.
  final String name;

  /// Operational state of the application gateway resource.
  final String operationalState;

  /// Private Endpoint connections on application gateway.
  final List<ApplicationGatewayPrivateEndpointConnectionResponse>
  privateEndpointConnections;

  /// PrivateLink configurations on application gateway.
  final List<ApplicationGatewayPrivateLinkConfigurationResponse>?
  privateLinkConfigurations;

  /// Probes of the application gateway resource.
  final List<ApplicationGatewayProbeResponse>? probes;

  /// The provisioning state of the application gateway resource.
  final String provisioningState;

  /// Redirect configurations of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayRedirectConfigurationResponse>?
  redirectConfigurations;

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
  final List<ApplicationGatewayTrustedClientCertificateResponse>?
  trustedClientCertificates;

  /// Trusted Root certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayTrustedRootCertificateResponse>?
  trustedRootCertificates;

  /// Resource type.
  final String type;

  /// URL path map of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final List<ApplicationGatewayUrlPathMapResponse>? urlPathMaps;

  /// Web application firewall configuration.
  final ApplicationGatewayWebApplicationFirewallConfigurationResponse?
  webApplicationFirewallConfiguration;

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
      'authenticationCertificates': ?(() {
        final guardedValue = authenticationCertificates;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayAuthenticationCertificateResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'autoscaleConfiguration': ?autoscaleConfiguration?.toMap(),
      'azureApiVersion': azureApiVersion,
      'backendAddressPools': ?(() {
        final guardedValue = backendAddressPools;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayBackendAddressPoolResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'backendHttpSettingsCollection': ?(() {
        final guardedValue = backendHttpSettingsCollection;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayBackendHttpSettingsResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'backendSettingsCollection': ?(() {
        final guardedValue = backendSettingsCollection;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayBackendSettingsResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'customErrorConfigurations': ?(() {
        final guardedValue = customErrorConfigurations;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayCustomErrorResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'defaultPredefinedSslPolicy': defaultPredefinedSslPolicy,
      'enableFips': ?enableFips,
      'enableHttp2': ?enableHttp2,
      'etag': etag,
      'firewallPolicy': ?firewallPolicy?.toMap(),
      'forceFirewallPolicyAssociation': ?forceFirewallPolicyAssociation,
      'frontendIPConfigurations': ?(() {
        final guardedValue = frontendIPConfigurations;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayFrontendIPConfigurationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'frontendPorts': ?(() {
        final guardedValue = frontendPorts;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayFrontendPortResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'gatewayIPConfigurations': ?(() {
        final guardedValue = gatewayIPConfigurations;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayIPConfigurationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'globalConfiguration': ?globalConfiguration?.toMap(),
      'httpListeners': ?(() {
        final guardedValue = httpListeners;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayHttpListenerResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'listeners': ?(() {
        final guardedValue = listeners;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayListenerResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'loadDistributionPolicies': ?(() {
        final guardedValue = loadDistributionPolicies;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayLoadDistributionPolicyResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'location': ?location,
      'name': name,
      'operationalState': operationalState,
      'privateEndpointConnections':
          pulumi.Input.encodeList<
            ApplicationGatewayPrivateEndpointConnectionResponse,
            Map<String, dynamic>
          >(privateEndpointConnections, (value) => value.toMap()),
      'privateLinkConfigurations': ?(() {
        final guardedValue = privateLinkConfigurations;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayPrivateLinkConfigurationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'probes': ?(() {
        final guardedValue = probes;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayProbeResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'provisioningState': provisioningState,
      'redirectConfigurations': ?(() {
        final guardedValue = redirectConfigurations;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayRedirectConfigurationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'requestRoutingRules': ?(() {
        final guardedValue = requestRoutingRules;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayRequestRoutingRuleResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'resourceGuid': resourceGuid,
      'rewriteRuleSets': ?(() {
        final guardedValue = rewriteRuleSets;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayRewriteRuleSetResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'routingRules': ?(() {
        final guardedValue = routingRules;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayRoutingRuleResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'sku': ?sku?.toMap(),
      'sslCertificates': ?(() {
        final guardedValue = sslCertificates;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewaySslCertificateResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'sslPolicy': ?sslPolicy?.toMap(),
      'sslProfiles': ?(() {
        final guardedValue = sslProfiles;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewaySslProfileResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'tags': ?tags,
      'trustedClientCertificates': ?(() {
        final guardedValue = trustedClientCertificates;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayTrustedClientCertificateResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'trustedRootCertificates': ?(() {
        final guardedValue = trustedRootCertificates;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayTrustedRootCertificateResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'type': type,
      'urlPathMaps': ?(() {
        final guardedValue = urlPathMaps;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ApplicationGatewayUrlPathMapResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'webApplicationFirewallConfiguration':
          ?webApplicationFirewallConfiguration?.toMap(),
      'zones': ?zones,
    };
  }

  factory GetApplicationGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayResult(
      authenticationCertificates: (() {
        final guardedValue = map['authenticationCertificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<
          ApplicationGatewayAuthenticationCertificateResponse
        >(
          guardedValue,
          (value) =>
              ApplicationGatewayAuthenticationCertificateResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        );
      })(),
      autoscaleConfiguration: (() {
        final guardedValue = map['autoscaleConfiguration'];
        if (guardedValue == null) return null;
        return ApplicationGatewayAutoscaleConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      backendAddressPools: (() {
        final guardedValue = map['backendAddressPools'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ApplicationGatewayBackendAddressPoolResponse>(
          guardedValue,
          (value) => ApplicationGatewayBackendAddressPoolResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      backendHttpSettingsCollection: (() {
        final guardedValue = map['backendHttpSettingsCollection'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ApplicationGatewayBackendHttpSettingsResponse>(
          guardedValue,
          (value) => ApplicationGatewayBackendHttpSettingsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      backendSettingsCollection: (() {
        final guardedValue = map['backendSettingsCollection'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ApplicationGatewayBackendSettingsResponse>(
          guardedValue,
          (value) => ApplicationGatewayBackendSettingsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customErrorConfigurations: (() {
        final guardedValue = map['customErrorConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ApplicationGatewayCustomErrorResponse>(
          guardedValue,
          (value) => ApplicationGatewayCustomErrorResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultPredefinedSslPolicy: map['defaultPredefinedSslPolicy'] as String,
      enableFips: (() {
        final guardedValue = map['enableFips'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      enableHttp2: (() {
        final guardedValue = map['enableHttp2'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      etag: map['etag'] as String,
      firewallPolicy: (() {
        final guardedValue = map['firewallPolicy'];
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      forceFirewallPolicyAssociation: (() {
        final guardedValue = map['forceFirewallPolicyAssociation'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      frontendIPConfigurations: (() {
        final guardedValue = map['frontendIPConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<
          ApplicationGatewayFrontendIPConfigurationResponse
        >(
          guardedValue,
          (value) => ApplicationGatewayFrontendIPConfigurationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      frontendPorts: (() {
        final guardedValue = map['frontendPorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ApplicationGatewayFrontendPortResponse>(
          guardedValue,
          (value) => ApplicationGatewayFrontendPortResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gatewayIPConfigurations: (() {
        final guardedValue = map['gatewayIPConfigurations'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ApplicationGatewayIPConfigurationResponse>(
          guardedValue,
          (value) => ApplicationGatewayIPConfigurationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      globalConfiguration: (() {
        final guardedValue = map['globalConfiguration'];
        if (guardedValue == null) return null;
        return ApplicationGatewayGlobalConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      httpListeners: (() {
        final guardedValue = map['httpListeners'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ApplicationGatewayHttpListenerResponse>(
          guardedValue,
          (value) => ApplicationGatewayHttpListenerResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      listeners: (() {
        final guardedValue = map['listeners'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ApplicationGatewayListenerResponse>(
          guardedValue,
          (value) => ApplicationGatewayListenerResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      loadDistributionPolicies: (() {
        final guardedValue = map['loadDistributionPolicies'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ApplicationGatewayLoadDistributionPolicyResponse>(
          guardedValue,
          (value) => ApplicationGatewayLoadDistributionPolicyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      operationalState: map['operationalState'] as String,
      privateEndpointConnections:
          pulumi.Input.decodeList<
            ApplicationGatewayPrivateEndpointConnectionResponse
          >(
            map['privateEndpointConnections']!,
            (value) =>
                ApplicationGatewayPrivateEndpointConnectionResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      privateLinkConfigurations: (() {
        final guardedValue = map['privateLinkConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<
          ApplicationGatewayPrivateLinkConfigurationResponse
        >(
          guardedValue,
          (value) => ApplicationGatewayPrivateLinkConfigurationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      probes: (() {
        final guardedValue = map['probes'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ApplicationGatewayProbeResponse>(
          guardedValue,
          (value) => ApplicationGatewayProbeResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: map['provisioningState'] as String,
      redirectConfigurations: (() {
        final guardedValue = map['redirectConfigurations'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ApplicationGatewayRedirectConfigurationResponse>(
          guardedValue,
          (value) => ApplicationGatewayRedirectConfigurationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      requestRoutingRules: (() {
        final guardedValue = map['requestRoutingRules'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ApplicationGatewayRequestRoutingRuleResponse>(
          guardedValue,
          (value) => ApplicationGatewayRequestRoutingRuleResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGuid: map['resourceGuid'] as String,
      rewriteRuleSets: (() {
        final guardedValue = map['rewriteRuleSets'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ApplicationGatewayRewriteRuleSetResponse>(
          guardedValue,
          (value) => ApplicationGatewayRewriteRuleSetResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      routingRules: (() {
        final guardedValue = map['routingRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ApplicationGatewayRoutingRuleResponse>(
          guardedValue,
          (value) => ApplicationGatewayRoutingRuleResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return ApplicationGatewaySkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      sslCertificates: (() {
        final guardedValue = map['sslCertificates'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ApplicationGatewaySslCertificateResponse>(
          guardedValue,
          (value) => ApplicationGatewaySslCertificateResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sslPolicy: (() {
        final guardedValue = map['sslPolicy'];
        if (guardedValue == null) return null;
        return ApplicationGatewaySslPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      sslProfiles: (() {
        final guardedValue = map['sslProfiles'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ApplicationGatewaySslProfileResponse>(
          guardedValue,
          (value) => ApplicationGatewaySslProfileResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      trustedClientCertificates: (() {
        final guardedValue = map['trustedClientCertificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<
          ApplicationGatewayTrustedClientCertificateResponse
        >(
          guardedValue,
          (value) => ApplicationGatewayTrustedClientCertificateResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      trustedRootCertificates: (() {
        final guardedValue = map['trustedRootCertificates'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ApplicationGatewayTrustedRootCertificateResponse>(
          guardedValue,
          (value) => ApplicationGatewayTrustedRootCertificateResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: map['type'] as String,
      urlPathMaps: (() {
        final guardedValue = map['urlPathMaps'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ApplicationGatewayUrlPathMapResponse>(
          guardedValue,
          (value) => ApplicationGatewayUrlPathMapResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      webApplicationFirewallConfiguration: (() {
        final guardedValue = map['webApplicationFirewallConfiguration'];
        if (guardedValue == null) return null;
        return ApplicationGatewayWebApplicationFirewallConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
    );
  }
}
