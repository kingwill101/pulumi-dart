// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_static_web_app_basic_auth.dart';
import 'get_static_web_app_identity.dart';

/// Result data returned by getStaticWebApp.
class GetStaticWebAppResult {
  /// The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action.
  final String apiKey;
  /// The map of key-value pairs of App Settings for the Static Web App.
  final Map<String, String> appSettings;
  /// A `basic_auth` block as defined below.
  final List<GetStaticWebAppBasicAuth> basicAuths;
  /// Are changes to the configuration file permitted.
  final bool configurationFileChangesEnabled;
  /// The default host name of the Static Web App.
  final String defaultHostName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetStaticWebAppIdentity> identities;
  /// The Azure region in which this Static Web App exists.
  final String location;
  final String name;
  /// Are Preview (Staging) environments enabled.
  final bool previewEnvironmentsEnabled;
  /// Should public network access be enabled for the Static Web App.
  final bool publicNetworkAccessEnabled;
  /// Repository branch of the Static Web App.
  final String repositoryBranch;
  /// Repository URL of the Static Web App.
  final String repositoryUrl;
  final String resourceGroupName;
  /// The SKU size of the Static Web App.
  final String skuSize;
  /// The SKU tier of the Static Web App.
  final String skuTier;
  /// The mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetStaticWebAppResult].
  /// [apiKey] The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action.
  /// [appSettings] The map of key-value pairs of App Settings for the Static Web App.
  /// [basicAuths] A `basic_auth` block as defined below.
  /// [configurationFileChangesEnabled] Are changes to the configuration file permitted.
  /// [defaultHostName] The default host name of the Static Web App.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure region in which this Static Web App exists.
  /// [name] Required.
  /// [previewEnvironmentsEnabled] Are Preview (Staging) environments enabled.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Static Web App.
  /// [repositoryBranch] Repository branch of the Static Web App.
  /// [repositoryUrl] Repository URL of the Static Web App.
  /// [resourceGroupName] Required.
  /// [skuSize] The SKU size of the Static Web App.
  /// [skuTier] The SKU tier of the Static Web App.
  /// [tags] The mapping of tags assigned to the resource.
  const GetStaticWebAppResult({
    required this.apiKey,
    required this.appSettings,
    required this.basicAuths,
    required this.configurationFileChangesEnabled,
    required this.defaultHostName,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.previewEnvironmentsEnabled,
    required this.publicNetworkAccessEnabled,
    required this.repositoryBranch,
    required this.repositoryUrl,
    required this.resourceGroupName,
    required this.skuSize,
    required this.skuTier,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'appSettings': appSettings,
      'basicAuths': pulumi.Input.encodeList<GetStaticWebAppBasicAuth, Map<String, dynamic>>(basicAuths, (value) => value.toMap()),
      'configurationFileChangesEnabled': configurationFileChangesEnabled,
      'defaultHostName': defaultHostName,
      'id': id,
      'identities': pulumi.Input.encodeList<GetStaticWebAppIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'previewEnvironmentsEnabled': previewEnvironmentsEnabled,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'repositoryBranch': repositoryBranch,
      'repositoryUrl': repositoryUrl,
      'resourceGroupName': resourceGroupName,
      'skuSize': skuSize,
      'skuTier': skuTier,
      'tags': tags,
    };
  }

  factory GetStaticWebAppResult.fromMap(Map<String, dynamic> map) {
    return GetStaticWebAppResult(
      apiKey: map['apiKey'] as String,
      appSettings: (map['appSettings'] as Map).cast<String, String>(),
      basicAuths: pulumi.Input.decodeList<GetStaticWebAppBasicAuth>(map['basicAuths']!, (value) => GetStaticWebAppBasicAuth.fromMap((value as Map).cast<String, dynamic>())),
      configurationFileChangesEnabled: map['configurationFileChangesEnabled'] as bool,
      defaultHostName: map['defaultHostName'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetStaticWebAppIdentity>(map['identities']!, (value) => GetStaticWebAppIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      previewEnvironmentsEnabled: map['previewEnvironmentsEnabled'] as bool,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      repositoryBranch: map['repositoryBranch'] as String,
      repositoryUrl: map['repositoryUrl'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuSize: map['skuSize'] as String,
      skuTier: map['skuTier'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

