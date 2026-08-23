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
  final String appServicePlanId;
  /// A key-value pair of App Settings.
  final Map<String, String> appSettings;
  /// The mode of the Function App's client certificates requirement for incoming requests.
  final String clientCertMode;
  /// An `connectionString` block as defined below.
  final List<GetFunctionAppConnectionString> connectionStrings;
  /// An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final String customDomainVerificationId;
  /// The default hostname associated with the Function App.
  final String defaultHostname;
  /// Is the Function App enabled?
  final bool enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `identity` block as defined below.
  final List<GetFunctionAppIdentity> identities;
  final String location;
  /// The name for this IP Restriction.
  final String name;
  /// A string indicating the Operating System type for this function app.
  final String osType;
  /// A comma separated list of outbound IP addresses.
  final String outboundIpAddresses;
  /// A comma separated list of outbound IP addresses, not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  final String possibleOutboundIpAddresses;
  final String resourceGroupName;
  final List<GetFunctionAppSiteConfig> siteConfigs;
  /// A `siteCredential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  final List<GetFunctionAppSiteCredential> siteCredentials;
  /// A `sourceControl` block as defined below.
  final List<GetFunctionAppSourceControl> sourceControls;
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
  /// [location] Required.
  /// [name] The name for this IP Restriction.
  /// [osType] A string indicating the Operating System type for this function app.
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses.
  /// [possibleOutboundIpAddresses] A comma separated list of outbound IP addresses, not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  /// [resourceGroupName] Required.
  /// [siteConfigs] Required.
  /// [siteCredentials] A `siteCredential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  /// [sourceControls] A `sourceControl` block as defined below.
  /// [tags] Optional.
  const GetFunctionAppResult({
    required this.appServicePlanId,
    required this.appSettings,
    required this.clientCertMode,
    required this.connectionStrings,
    required this.customDomainVerificationId,
    required this.defaultHostname,
    required this.enabled,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.osType,
    required this.outboundIpAddresses,
    required this.possibleOutboundIpAddresses,
    required this.resourceGroupName,
    required this.siteConfigs,
    required this.siteCredentials,
    required this.sourceControls,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': appServicePlanId,
      'appSettings': appSettings,
      'clientCertMode': clientCertMode,
      'connectionStrings': pulumi.Input.encodeList<GetFunctionAppConnectionString, Map<String, dynamic>>(connectionStrings, (value) => value.toMap()),
      'customDomainVerificationId': customDomainVerificationId,
      'defaultHostname': defaultHostname,
      'enabled': enabled,
      'id': id,
      'identities': pulumi.Input.encodeList<GetFunctionAppIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'osType': osType,
      'outboundIpAddresses': outboundIpAddresses,
      'possibleOutboundIpAddresses': possibleOutboundIpAddresses,
      'resourceGroupName': resourceGroupName,
      'siteConfigs': pulumi.Input.encodeList<GetFunctionAppSiteConfig, Map<String, dynamic>>(siteConfigs, (value) => value.toMap()),
      'siteCredentials': pulumi.Input.encodeList<GetFunctionAppSiteCredential, Map<String, dynamic>>(siteCredentials, (value) => value.toMap()),
      'sourceControls': pulumi.Input.encodeList<GetFunctionAppSourceControl, Map<String, dynamic>>(sourceControls, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetFunctionAppResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppResult(
      appServicePlanId: map['appServicePlanId'] as String,
      appSettings: (map['appSettings'] as Map).cast<String, String>(),
      clientCertMode: map['clientCertMode'] as String,
      connectionStrings: pulumi.Input.decodeList<GetFunctionAppConnectionString>(map['connectionStrings']!, (value) => GetFunctionAppConnectionString.fromMap((value as Map).cast<String, dynamic>())),
      customDomainVerificationId: map['customDomainVerificationId'] as String,
      defaultHostname: map['defaultHostname'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetFunctionAppIdentity>(map['identities']!, (value) => GetFunctionAppIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      osType: map['osType'] as String,
      outboundIpAddresses: map['outboundIpAddresses'] as String,
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteConfigs: pulumi.Input.decodeList<GetFunctionAppSiteConfig>(map['siteConfigs']!, (value) => GetFunctionAppSiteConfig.fromMap((value as Map).cast<String, dynamic>())),
      siteCredentials: pulumi.Input.decodeList<GetFunctionAppSiteCredential>(map['siteCredentials']!, (value) => GetFunctionAppSiteCredential.fromMap((value as Map).cast<String, dynamic>())),
      sourceControls: pulumi.Input.decodeList<GetFunctionAppSourceControl>(map['sourceControls']!, (value) => GetFunctionAppSourceControl.fromMap((value as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
