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
    pulumi.Output<String>? apiKey,
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<StaticWebAppBasicAuth>? basicAuth,
    pulumi.Output<bool>? configurationFileChangesEnabled,
    pulumi.Output<String>? defaultHostName,
    pulumi.Output<StaticWebAppIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? previewEnvironmentsEnabled,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? repositoryBranch,
    pulumi.Output<String>? repositoryToken,
    pulumi.Output<String>? repositoryUrl,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuSize,
    pulumi.Output<String>? skuTier,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      basicAuth = pulumi.Input.asOptionalInput<StaticWebAppBasicAuth>(basicAuth),
      configurationFileChangesEnabled = pulumi.Input.asOptionalInput<bool>(configurationFileChangesEnabled),
      defaultHostName = pulumi.Input.asOptionalInput<String>(defaultHostName),
      identity = pulumi.Input.asOptionalInput<StaticWebAppIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      previewEnvironmentsEnabled = pulumi.Input.asOptionalInput<bool>(previewEnvironmentsEnabled),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      repositoryBranch = pulumi.Input.asOptionalInput<String>(repositoryBranch),
      repositoryToken = pulumi.Input.asOptionalInput<String>(repositoryToken),
      repositoryUrl = pulumi.Input.asOptionalInput<String>(repositoryUrl),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuSize = pulumi.Input.asOptionalInput<String>(skuSize),
      skuTier = pulumi.Input.asOptionalInput<String>(skuTier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      basicAuth: map['basicAuth'] == null ? null : pulumi.Output.create<StaticWebAppBasicAuth>(StaticWebAppBasicAuth.fromMap((map['basicAuth'] as Map).cast<String, dynamic>())),
      configurationFileChangesEnabled: map['configurationFileChangesEnabled'] == null ? null : pulumi.Output.create<bool>(map['configurationFileChangesEnabled'] as bool),
      defaultHostName: map['defaultHostName'] == null ? null : pulumi.Output.create<String>(map['defaultHostName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<StaticWebAppIdentity>(StaticWebAppIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      previewEnvironmentsEnabled: map['previewEnvironmentsEnabled'] == null ? null : pulumi.Output.create<bool>(map['previewEnvironmentsEnabled'] as bool),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      repositoryBranch: map['repositoryBranch'] == null ? null : pulumi.Output.create<String>(map['repositoryBranch'] as String),
      repositoryToken: map['repositoryToken'] == null ? null : pulumi.Output.create<String>(map['repositoryToken'] as String),
      repositoryUrl: map['repositoryUrl'] == null ? null : pulumi.Output.create<String>(map['repositoryUrl'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuSize: map['skuSize'] == null ? null : pulumi.Output.create<String>(map['skuSize'] as String),
      skuTier: map['skuTier'] == null ? null : pulumi.Output.create<String>(map['skuTier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

