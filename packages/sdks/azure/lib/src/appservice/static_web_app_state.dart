// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_web_app_basic_auth.dart';
import 'static_web_app_identity.dart';

/// Input properties used for looking up and filtering StaticWebApp resources.
class StaticWebAppState {
  /// The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action.
  final pulumi.Input<String>? apiKey;
  /// A key-value pair of App Settings.
  ///
  /// > **Note:** If using the `api_key` to deploy a Static Web App from a CI/CD pipeline or other source, `repository_branch` and `repository_url` will get updated in Azure, but it is not possible to set `repository_token` in that case. Use a `lifecycle` block to `ignore_changes` for `repository_branch` and`repository_url` if that is your deployment scenario.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// A `basic_auth` block as defined below.
  final pulumi.Input<StaticWebAppBasicAuth>? basicAuth;
  /// Should changes to the configuration file be permitted. Defaults to `true`.
  final pulumi.Input<bool>? configurationFileChangesEnabled;
  /// The default host name of the Static Web App.
  final pulumi.Input<String>? defaultHostName;
  /// An `identity` block as defined below.
  final pulumi.Input<StaticWebAppIdentity>? identity;
  /// The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created.
  final pulumi.Input<String>? name;
  /// Are Preview (Staging) environments enabled. Defaults to `true`.
  final pulumi.Input<bool>? previewEnvironmentsEnabled;
  /// Should public network access be enabled for the Static Web App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Repository branch to use for the Static Web App. `repository_url` and `repository_token` must also be set.
  final pulumi.Input<String>? repositoryBranch;
  /// Repository Token with `admin` privileges to use for the Static Web App. `repository_branch` and `repository_url` must also be set.
  final pulumi.Input<String>? repositoryToken;
  /// Repository URL to use for the Static Web App. `repository_branch` and `repository_token` must also be set.
  final pulumi.Input<String>? repositoryUrl;
  /// The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the SKU size of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  final pulumi.Input<String>? skuSize;
  /// Specifies the SKU tier of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  final pulumi.Input<String>? skuTier;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StaticWebAppState].
  /// [apiKey] The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action.
  /// [appSettings] A key-value pair of App Settings.
  /// [basicAuth] A `basic_auth` block as defined below.
  /// [configurationFileChangesEnabled] Should changes to the configuration file be permitted. Defaults to `true`.
  /// [defaultHostName] The default host name of the Static Web App.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  /// [name] The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created.
  /// [previewEnvironmentsEnabled] Are Preview (Staging) environments enabled. Defaults to `true`.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Static Web App. Defaults to `true`.
  /// [repositoryBranch] Repository branch to use for the Static Web App. `repository_url` and `repository_token` must also be set.
  /// [repositoryToken] Repository Token with `admin` privileges to use for the Static Web App. `repository_branch` and `repository_url` must also be set.
  /// [repositoryUrl] Repository URL to use for the Static Web App. `repository_branch` and `repository_token` must also be set.
  /// [resourceGroupName] The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  /// [skuSize] Specifies the SKU size of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  /// [skuTier] Specifies the SKU tier of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  /// [tags] A mapping of tags to assign to the resource.
  StaticWebAppState({
    this.apiKey,
    this.appSettings,
    this.basicAuth,
    this.configurationFileChangesEnabled,
    this.defaultHostName,
    this.identity,
    this.location,
    this.name,
    this.previewEnvironmentsEnabled,
    this.publicNetworkAccessEnabled,
    this.repositoryBranch,
    this.repositoryToken,
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
      'basicAuth': ?pulumi.Input.mapOptionalInputValue<StaticWebAppBasicAuth, Map<String, dynamic>>(basicAuth, (value) => value.toMap()),
      'configurationFileChangesEnabled': ?configurationFileChangesEnabled,
      'defaultHostName': ?defaultHostName,
      'identity': ?pulumi.Input.mapOptionalInputValue<StaticWebAppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'previewEnvironmentsEnabled': ?previewEnvironmentsEnabled,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'repositoryBranch': ?repositoryBranch,
      'repositoryToken': ?repositoryToken,
      'repositoryUrl': ?repositoryUrl,
      'resourceGroupName': ?resourceGroupName,
      'skuSize': ?skuSize,
      'skuTier': ?skuTier,
      'tags': ?tags,
    };
  }

  factory StaticWebAppState.fromMap(Map<String, dynamic> map) {
    return StaticWebAppState(
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
      appSettings: map['appSettings'] == null ? null : ((map['appSettings'] as Map).cast<String, String>()).input(),
      basicAuth: map['basicAuth'] == null ? null : (StaticWebAppBasicAuth.fromMap((map['basicAuth'] as Map).cast<String, dynamic>())).input(),
      configurationFileChangesEnabled: map['configurationFileChangesEnabled'] == null ? null : (map['configurationFileChangesEnabled'] as bool).input(),
      defaultHostName: map['defaultHostName'] == null ? null : (map['defaultHostName'] as String).input(),
      identity: map['identity'] == null ? null : (StaticWebAppIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      previewEnvironmentsEnabled: map['previewEnvironmentsEnabled'] == null ? null : (map['previewEnvironmentsEnabled'] as bool).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      repositoryBranch: map['repositoryBranch'] == null ? null : (map['repositoryBranch'] as String).input(),
      repositoryToken: map['repositoryToken'] == null ? null : (map['repositoryToken'] as String).input(),
      repositoryUrl: map['repositoryUrl'] == null ? null : (map['repositoryUrl'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      skuSize: map['skuSize'] == null ? null : (map['skuSize'] as String).input(),
      skuTier: map['skuTier'] == null ? null : (map['skuTier'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

