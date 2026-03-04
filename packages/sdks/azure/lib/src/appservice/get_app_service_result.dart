// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_service_connection_string.dart';
import 'get_app_service_site_config.dart';
import 'get_app_service_site_credential.dart';
import 'get_app_service_source_control.dart';

/// Result data returned by getAppService.
class GetAppServiceResult {
  /// The ID of the App Service Plan within which the App Service exists.
  final String appServicePlanId;

  /// A key-value pair of App Settings for the App Service.
  final Map<String, String> appSettings;

  /// Does the App Service send session affinity cookies, which route client requests in the same session to the same instance?
  final bool clientAffinityEnabled;

  /// Does the App Service require client certificates for incoming requests?
  final bool clientCertEnabled;

  /// An `connection_string` block as defined below.
  final List<GetAppServiceConnectionString> connectionStrings;

  /// An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final String customDomainVerificationId;

  /// The Default Hostname associated with the App Service - such as `mysite.azurewebsites.net`
  final String defaultSiteHostname;

  /// Is the App Service Enabled?
  final bool enabled;

  /// Can the App Service only be accessed via HTTPS?
  final bool httpsOnly;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Azure location where the App Service exists.
  final String location;

  /// The name for this IP Restriction.
  final String name;

  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  final List<String> outboundIpAddressLists;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  final String outboundIpAddresses;

  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12", "52.143.43.17"]` - not all of which are necessarily in use. Superset of `outbound_ip_address_list`.
  final List<String> possibleOutboundIpAddressLists;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  final String possibleOutboundIpAddresses;
  final String resourceGroupName;

  /// A `site_config` block as defined below.
  final List<GetAppServiceSiteConfig> siteConfigs;
  final List<GetAppServiceSiteCredential> siteCredentials;

  /// A `source_control` block as defined below.
  final List<GetAppServiceSourceControl> sourceControls;

  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetAppServiceResult].
  /// [appServicePlanId] The ID of the App Service Plan within which the App Service exists.
  /// [appSettings] A key-value pair of App Settings for the App Service.
  /// [clientAffinityEnabled] Does the App Service send session affinity cookies, which route client requests in the same session to the same instance?
  /// [clientCertEnabled] Does the App Service require client certificates for incoming requests?
  /// [connectionStrings] An `connection_string` block as defined below.
  /// [customDomainVerificationId] An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultSiteHostname] The Default Hostname associated with the App Service - such as `mysite.azurewebsites.net`
  /// [enabled] Is the App Service Enabled?
  /// [httpsOnly] Can the App Service only be accessed via HTTPS?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the App Service exists.
  /// [name] The name for this IP Restriction.
  /// [outboundIpAddressLists] A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  /// [possibleOutboundIpAddressLists] A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12", "52.143.43.17"]` - not all of which are necessarily in use. Superset of `outbound_ip_address_list`.
  /// [possibleOutboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  /// [resourceGroupName] Required.
  /// [siteConfigs] A `site_config` block as defined below.
  /// [siteCredentials] Required.
  /// [sourceControls] A `source_control` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  GetAppServiceResult({
    required this.appServicePlanId,
    required this.appSettings,
    required this.clientAffinityEnabled,
    required this.clientCertEnabled,
    required this.connectionStrings,
    required this.customDomainVerificationId,
    required this.defaultSiteHostname,
    required this.enabled,
    required this.httpsOnly,
    required this.id,
    required this.location,
    required this.name,
    required this.outboundIpAddressLists,
    required this.outboundIpAddresses,
    required this.possibleOutboundIpAddressLists,
    required this.possibleOutboundIpAddresses,
    required this.resourceGroupName,
    required this.siteConfigs,
    required this.siteCredentials,
    required this.sourceControls,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': appServicePlanId,
      'appSettings': appSettings,
      'clientAffinityEnabled': clientAffinityEnabled,
      'clientCertEnabled': clientCertEnabled,
      'connectionStrings':
          pulumi.Input.encodeList<
            GetAppServiceConnectionString,
            Map<String, dynamic>
          >(connectionStrings, (value) => value.toMap()),
      'customDomainVerificationId': customDomainVerificationId,
      'defaultSiteHostname': defaultSiteHostname,
      'enabled': enabled,
      'httpsOnly': httpsOnly,
      'id': id,
      'location': location,
      'name': name,
      'outboundIpAddressLists': outboundIpAddressLists,
      'outboundIpAddresses': outboundIpAddresses,
      'possibleOutboundIpAddressLists': possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': possibleOutboundIpAddresses,
      'resourceGroupName': resourceGroupName,
      'siteConfigs':
          pulumi.Input.encodeList<
            GetAppServiceSiteConfig,
            Map<String, dynamic>
          >(siteConfigs, (value) => value.toMap()),
      'siteCredentials':
          pulumi.Input.encodeList<
            GetAppServiceSiteCredential,
            Map<String, dynamic>
          >(siteCredentials, (value) => value.toMap()),
      'sourceControls':
          pulumi.Input.encodeList<
            GetAppServiceSourceControl,
            Map<String, dynamic>
          >(sourceControls, (value) => value.toMap()),
      'tags': tags,
    };
  }

  factory GetAppServiceResult.fromMap(Map<String, dynamic> map) {
    return GetAppServiceResult(
      appServicePlanId: map['appServicePlanId'] as String,
      appSettings: (map['appSettings'] as Map).cast<String, String>(),
      clientAffinityEnabled: map['clientAffinityEnabled'] as bool,
      clientCertEnabled: map['clientCertEnabled'] as bool,
      connectionStrings: pulumi.Input.decodeList<GetAppServiceConnectionString>(
        map['connectionStrings']!,
        (value) => GetAppServiceConnectionString.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      customDomainVerificationId: map['customDomainVerificationId'] as String,
      defaultSiteHostname: map['defaultSiteHostname'] as String,
      enabled: map['enabled'] as bool,
      httpsOnly: map['httpsOnly'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      outboundIpAddressLists: (map['outboundIpAddressLists'] as List)
          .cast<String>(),
      outboundIpAddresses: map['outboundIpAddresses'] as String,
      possibleOutboundIpAddressLists:
          (map['possibleOutboundIpAddressLists'] as List).cast<String>(),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteConfigs: pulumi.Input.decodeList<GetAppServiceSiteConfig>(
        map['siteConfigs']!,
        (value) => GetAppServiceSiteConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      siteCredentials: pulumi.Input.decodeList<GetAppServiceSiteCredential>(
        map['siteCredentials']!,
        (value) => GetAppServiceSiteCredential.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      sourceControls: pulumi.Input.decodeList<GetAppServiceSourceControl>(
        map['sourceControls']!,
        (value) => GetAppServiceSourceControl.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
