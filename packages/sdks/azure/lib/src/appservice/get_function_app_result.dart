// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_app_connection_string.dart';
import 'get_function_app_identity.dart';
import 'get_function_app_site_config.dart';
import 'get_function_app_site_credential.dart';
import 'get_function_app_source_control.dart';

/// Result data returned by getFunctionApp.
class GetFunctionAppResult {
  /// The ID of the App Service Plan within which to create this Function App.
  final String? appServicePlanId;
  /// A key-value pair of App Settings.
  final Map<String, String>? appSettings;
  /// The mode of the Function App's client certificates requirement for incoming requests.
  final String? clientCertMode;
  /// An `connectionString` block as defined below.
  final List<GetFunctionAppConnectionString>? connectionStrings;
  /// An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final String? customDomainVerificationId;
  /// The default hostname associated with the Function App.
  final String? defaultHostname;
  /// Is the Function App enabled?
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetFunctionAppIdentity>? identities;
  final String? location;
  /// The name for this IP Restriction.
  final String? name;
  /// A string indicating the Operating System type for this function app.
  final String? osType;
  /// A comma separated list of outbound IP addresses.
  final String? outboundIpAddresses;
  /// A comma separated list of outbound IP addresses, not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  final String? possibleOutboundIpAddresses;
  final String? resourceGroupName;
  final List<GetFunctionAppSiteConfig>? siteConfigs;
  /// A `siteCredential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  final List<GetFunctionAppSiteCredential>? siteCredentials;
  /// A `sourceControl` block as defined below.
  final List<GetFunctionAppSourceControl>? sourceControls;
  final Map<String, String>? tags;

  /// Creates a new [GetFunctionAppResult].
  /// [appServicePlanId] The ID of the App Service Plan within which to create this Function App.
  /// [appSettings] A key-value pair of App Settings.
  /// [clientCertMode] The mode of the Function App's client certificates requirement for incoming requests.
  /// [connectionStrings] An `connectionString` block as defined below.
  /// [customDomainVerificationId] An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultHostname] The default hostname associated with the Function App.
  /// [enabled] Is the Function App enabled?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [location] Optional.
  /// [name] The name for this IP Restriction.
  /// [osType] A string indicating the Operating System type for this function app.
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses.
  /// [possibleOutboundIpAddresses] A comma separated list of outbound IP addresses, not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  /// [resourceGroupName] Optional.
  /// [siteConfigs] Optional.
  /// [siteCredentials] A `siteCredential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  /// [sourceControls] A `sourceControl` block as defined below.
  /// [tags] Optional.
  const GetFunctionAppResult({
    this.appServicePlanId,
    this.appSettings,
    this.clientCertMode,
    this.connectionStrings,
    this.customDomainVerificationId,
    this.defaultHostname,
    this.enabled,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.osType,
    this.outboundIpAddresses,
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
      'clientCertMode': ?clientCertMode,
      'connectionStrings': ?(() { final guardedValue = connectionStrings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionAppConnectionString, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionAppIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'osType': ?osType,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'resourceGroupName': ?resourceGroupName,
      'siteConfigs': ?(() { final guardedValue = siteConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionAppSiteConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'siteCredentials': ?(() { final guardedValue = siteCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionAppSiteCredential, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceControls': ?(() { final guardedValue = sourceControls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionAppSourceControl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetFunctionAppResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppResult(
      appServicePlanId: (() { final guardedValue = map['appServicePlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      clientCertMode: (() { final guardedValue = map['clientCertMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionAppConnectionString>(guardedValue, (value) => GetFunctionAppConnectionString.fromMap((value as Map).cast<String, dynamic>())); })(),
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultHostname: (() { final guardedValue = map['defaultHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionAppIdentity>(guardedValue, (value) => GetFunctionAppIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundIpAddresses: (() { final guardedValue = map['outboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      possibleOutboundIpAddresses: (() { final guardedValue = map['possibleOutboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteConfigs: (() { final guardedValue = map['siteConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionAppSiteConfig>(guardedValue, (value) => GetFunctionAppSiteConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      siteCredentials: (() { final guardedValue = map['siteCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionAppSiteCredential>(guardedValue, (value) => GetFunctionAppSiteCredential.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceControls: (() { final guardedValue = map['sourceControls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionAppSourceControl>(guardedValue, (value) => GetFunctionAppSourceControl.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
