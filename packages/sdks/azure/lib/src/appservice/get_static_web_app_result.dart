// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_static_web_app_basic_auth.dart';
import 'get_static_web_app_identity.dart';

/// Result data returned by getStaticWebApp.
class GetStaticWebAppResult {
  /// The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action.
  final String? apiKey;
  /// The map of key-value pairs of App Settings for the Static Web App.
  final Map<String, String>? appSettings;
  /// A `basicAuth` block as defined below.
  final List<GetStaticWebAppBasicAuth>? basicAuths;
  /// Are changes to the configuration file permitted.
  final bool? configurationFileChangesEnabled;
  /// The default host name of the Static Web App.
  final String? defaultHostName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetStaticWebAppIdentity>? identities;
  /// The Azure region in which this Static Web App exists.
  final String? location;
  final String? name;
  /// Are Preview (Staging) environments enabled.
  final bool? previewEnvironmentsEnabled;
  /// Should public network access be enabled for the Static Web App.
  final bool? publicNetworkAccessEnabled;
  /// Repository branch of the Static Web App.
  final String? repositoryBranch;
  /// Repository URL of the Static Web App.
  final String? repositoryUrl;
  final String? resourceGroupName;
  /// The SKU size of the Static Web App.
  final String? skuSize;
  /// The SKU tier of the Static Web App.
  final String? skuTier;
  /// The mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetStaticWebAppResult].
  /// [apiKey] The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action.
  /// [appSettings] The map of key-value pairs of App Settings for the Static Web App.
  /// [basicAuths] A `basicAuth` block as defined below.
  /// [configurationFileChangesEnabled] Are changes to the configuration file permitted.
  /// [defaultHostName] The default host name of the Static Web App.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure region in which this Static Web App exists.
  /// [name] Optional.
  /// [previewEnvironmentsEnabled] Are Preview (Staging) environments enabled.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Static Web App.
  /// [repositoryBranch] Repository branch of the Static Web App.
  /// [repositoryUrl] Repository URL of the Static Web App.
  /// [resourceGroupName] Optional.
  /// [skuSize] The SKU size of the Static Web App.
  /// [skuTier] The SKU tier of the Static Web App.
  /// [tags] The mapping of tags assigned to the resource.
  const GetStaticWebAppResult({
    this.apiKey,
    this.appSettings,
    this.basicAuths,
    this.configurationFileChangesEnabled,
    this.defaultHostName,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.previewEnvironmentsEnabled,
    this.publicNetworkAccessEnabled,
    this.repositoryBranch,
    this.repositoryUrl,
    this.resourceGroupName,
    this.skuSize,
    this.skuTier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'appSettings': ?appSettings,
      'basicAuths': ?(() { final guardedValue = basicAuths; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStaticWebAppBasicAuth, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'configurationFileChangesEnabled': ?configurationFileChangesEnabled,
      'defaultHostName': ?defaultHostName,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStaticWebAppIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'previewEnvironmentsEnabled': ?previewEnvironmentsEnabled,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'repositoryBranch': ?repositoryBranch,
      'repositoryUrl': ?repositoryUrl,
      'resourceGroupName': ?resourceGroupName,
      'skuSize': ?skuSize,
      'skuTier': ?skuTier,
      'tags': ?tags,
    };
  }

  factory GetStaticWebAppResult.fromMap(Map<String, dynamic> map) {
    return GetStaticWebAppResult(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      basicAuths: (() { final guardedValue = map['basicAuths']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStaticWebAppBasicAuth>(guardedValue, (value) => GetStaticWebAppBasicAuth.fromMap((value as Map).cast<String, dynamic>())); })(),
      configurationFileChangesEnabled: (() { final guardedValue = map['configurationFileChangesEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      defaultHostName: (() { final guardedValue = map['defaultHostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStaticWebAppIdentity>(guardedValue, (value) => GetStaticWebAppIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      previewEnvironmentsEnabled: (() { final guardedValue = map['previewEnvironmentsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      repositoryBranch: (() { final guardedValue = map['repositoryBranch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryUrl: (() { final guardedValue = map['repositoryUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuSize: (() { final guardedValue = map['skuSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuTier: (() { final guardedValue = map['skuTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
