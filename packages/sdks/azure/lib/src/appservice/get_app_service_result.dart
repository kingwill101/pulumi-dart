// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_service_connection_string.dart';
import 'get_app_service_site_config.dart';
import 'get_app_service_site_credential.dart';
import 'get_app_service_source_control.dart';

/// Result data returned by getAppService.
class GetAppServiceResult {
  /// The ID of the App Service Plan within which the App Service exists.
  final String? appServicePlanId;
  /// A key-value pair of App Settings for the App Service.
  final Map<String, String>? appSettings;
  /// Does the App Service send session affinity cookies, which route client requests in the same session to the same instance?
  final bool? clientAffinityEnabled;
  /// Does the App Service require client certificates for incoming requests?
  final bool? clientCertEnabled;
  /// An `connectionString` block as defined below.
  final List<GetAppServiceConnectionString>? connectionStrings;
  /// An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final String? customDomainVerificationId;
  /// The Default Hostname associated with the App Service - such as `mysite.azurewebsites.net`
  final String? defaultSiteHostname;
  /// Is the App Service Enabled?
  final bool? enabled;
  /// Can the App Service only be accessed via HTTPS?
  final bool? httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure location where the App Service exists.
  final String? location;
  /// The name for this IP Restriction.
  final String? name;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  final List<String>? outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  final String? outboundIpAddresses;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12", "52.143.43.17"]` - not all of which are necessarily in use. Superset of `outboundIpAddressList`.
  final List<String>? possibleOutboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  final String? possibleOutboundIpAddresses;
  final String? resourceGroupName;
  /// A `siteConfig` block as defined below.
  final List<GetAppServiceSiteConfig>? siteConfigs;
  final List<GetAppServiceSiteCredential>? siteCredentials;
  /// A `sourceControl` block as defined below.
  final List<GetAppServiceSourceControl>? sourceControls;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetAppServiceResult].
  /// [appServicePlanId] The ID of the App Service Plan within which the App Service exists.
  /// [appSettings] A key-value pair of App Settings for the App Service.
  /// [clientAffinityEnabled] Does the App Service send session affinity cookies, which route client requests in the same session to the same instance?
  /// [clientCertEnabled] Does the App Service require client certificates for incoming requests?
  /// [connectionStrings] An `connectionString` block as defined below.
  /// [customDomainVerificationId] An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultSiteHostname] The Default Hostname associated with the App Service - such as `mysite.azurewebsites.net`
  /// [enabled] Is the App Service Enabled?
  /// [httpsOnly] Can the App Service only be accessed via HTTPS?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the App Service exists.
  /// [name] The name for this IP Restriction.
  /// [outboundIpAddressLists] A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  /// [possibleOutboundIpAddressLists] A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12", "52.143.43.17"]` - not all of which are necessarily in use. Superset of `outboundIpAddressList`.
  /// [possibleOutboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  /// [resourceGroupName] Optional.
  /// [siteConfigs] A `siteConfig` block as defined below.
  /// [siteCredentials] Optional.
  /// [sourceControls] A `sourceControl` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  const GetAppServiceResult({
    this.appServicePlanId,
    this.appSettings,
    this.clientAffinityEnabled,
    this.clientCertEnabled,
    this.connectionStrings,
    this.customDomainVerificationId,
    this.defaultSiteHostname,
    this.enabled,
    this.httpsOnly,
    this.id,
    this.location,
    this.name,
    this.outboundIpAddressLists,
    this.outboundIpAddresses,
    this.possibleOutboundIpAddressLists,
    this.possibleOutboundIpAddresses,
    this.resourceGroupName,
    this.siteConfigs,
    this.siteCredentials,
    this.sourceControls,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': ?appServicePlanId,
      'appSettings': ?appSettings,
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertEnabled': ?clientCertEnabled,
      'connectionStrings': ?(() { final guardedValue = connectionStrings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppServiceConnectionString, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultSiteHostname': ?defaultSiteHostname,
      'enabled': ?enabled,
      'httpsOnly': ?httpsOnly,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'resourceGroupName': ?resourceGroupName,
      'siteConfigs': ?(() { final guardedValue = siteConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppServiceSiteConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'siteCredentials': ?(() { final guardedValue = siteCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppServiceSiteCredential, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceControls': ?(() { final guardedValue = sourceControls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppServiceSourceControl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetAppServiceResult.fromMap(Map<String, dynamic> map) {
    return GetAppServiceResult(
      appServicePlanId: (() { final guardedValue = map['appServicePlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      clientAffinityEnabled: (() { final guardedValue = map['clientAffinityEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clientCertEnabled: (() { final guardedValue = map['clientCertEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppServiceConnectionString>(guardedValue, (value) => GetAppServiceConnectionString.fromMap((value as Map).cast<String, dynamic>())); })(),
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSiteHostname: (() { final guardedValue = map['defaultSiteHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundIpAddressLists: (() { final guardedValue = map['outboundIpAddressLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outboundIpAddresses: (() { final guardedValue = map['outboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      possibleOutboundIpAddressLists: (() { final guardedValue = map['possibleOutboundIpAddressLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      possibleOutboundIpAddresses: (() { final guardedValue = map['possibleOutboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteConfigs: (() { final guardedValue = map['siteConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppServiceSiteConfig>(guardedValue, (value) => GetAppServiceSiteConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      siteCredentials: (() { final guardedValue = map['siteCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppServiceSiteCredential>(guardedValue, (value) => GetAppServiceSiteCredential.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceControls: (() { final guardedValue = map['sourceControls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppServiceSourceControl>(guardedValue, (value) => GetAppServiceSourceControl.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
