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
  /// &gt; **Note:** If using the `api_key` to deploy a Static Web App from a CI/CD pipeline or other source, `repository_branch` and `repository_url` will get updated in Azure, but it is not possible to set `repository_token` in that case. Use a `lifecycle` block to `ignore_changes` for `repository_branch` and`repository_url` if that is your deployment scenario.
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
      'basicAuth':
          ?pulumi.Input.mapOptionalInputValue<
            StaticWebAppBasicAuth,
            Map<String, dynamic>
          >(basicAuth, (value) => value.toMap()),
      'configurationFileChangesEnabled': ?configurationFileChangesEnabled,
      'defaultHostName': ?defaultHostName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            StaticWebAppIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
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
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appSettings: (() {
        final guardedValue = map['appSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      basicAuth: (() {
        final guardedValue = map['basicAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StaticWebAppBasicAuth.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      configurationFileChangesEnabled: (() {
        final guardedValue = map['configurationFileChangesEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      defaultHostName: (() {
        final guardedValue = map['defaultHostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StaticWebAppIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      previewEnvironmentsEnabled: (() {
        final guardedValue = map['previewEnvironmentsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      repositoryBranch: (() {
        final guardedValue = map['repositoryBranch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repositoryToken: (() {
        final guardedValue = map['repositoryToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repositoryUrl: (() {
        final guardedValue = map['repositoryUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skuSize: (() {
        final guardedValue = map['skuSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skuTier: (() {
        final guardedValue = map['skuTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
