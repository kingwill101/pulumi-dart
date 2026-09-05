// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_web_app_basic_auth.dart';
import 'static_web_app_identity.dart';

/// {@template pulumi_appservice_static_web_app_static_web_app_args_doc}
/// The set of arguments for StaticWebApp.
/// {@endtemplate}
/// {@macro pulumi_appservice_static_web_app_static_web_app_args_doc}
class StaticWebAppArgs {
  /// A key-value pair of App Settings.
  ///
  /// &gt; **Note:** If using the `apiKey` to deploy a Static Web App from a CI/CD pipeline or other source, `repositoryBranch` and `repositoryUrl` will get updated in Azure, but it is not possible to set `repositoryToken` in that case. Use a `lifecycle` block to `ignoreChanges` for `repositoryBranch` and`repositoryUrl` if that is your deployment scenario.
  final pulumi.Input<Map<String, String>?>? appSettings;
  /// A `basicAuth` block as defined below.
  final pulumi.Input<StaticWebAppBasicAuth?>? basicAuth;
  /// Should changes to the configuration file be permitted. Defaults to `true`.
  final pulumi.Input<bool?>? configurationFileChangesEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<StaticWebAppIdentity?>? identity;
  /// The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created.
  final pulumi.Input<String?>? name;
  /// Are Preview (Staging) environments enabled. Defaults to `true`.
  final pulumi.Input<bool?>? previewEnvironmentsEnabled;
  /// Should public network access be enabled for the Static Web App. Defaults to `true`.
  final pulumi.Input<bool?>? publicNetworkAccessEnabled;
  /// Repository branch to use for the Static Web App. `repositoryUrl` and `repositoryToken` must also be set.
  final pulumi.Input<String?>? repositoryBranch;
  /// Repository Token with `admin` privileges to use for the Static Web App. `repositoryBranch` and `repositoryUrl` must also be set.
  final pulumi.Input<String?>? repositoryToken;
  /// Repository URL to use for the Static Web App. `repositoryBranch` and `repositoryToken` must also be set.
  final pulumi.Input<String?>? repositoryUrl;
  /// The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the SKU size of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  final pulumi.Input<String?>? skuSize;
  /// Specifies the SKU tier of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  final pulumi.Input<String?>? skuTier;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [StaticWebAppArgs].
  /// [appSettings] A key-value pair of App Settings.
  /// [basicAuth] A `basicAuth` block as defined below.
  /// [configurationFileChangesEnabled] Should changes to the configuration file be permitted. Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  /// [name] The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created.
  /// [previewEnvironmentsEnabled] Are Preview (Staging) environments enabled. Defaults to `true`.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Static Web App. Defaults to `true`.
  /// [repositoryBranch] Repository branch to use for the Static Web App. `repositoryUrl` and `repositoryToken` must also be set.
  /// [repositoryToken] Repository Token with `admin` privileges to use for the Static Web App. `repositoryBranch` and `repositoryUrl` must also be set.
  /// [repositoryUrl] Repository URL to use for the Static Web App. `repositoryBranch` and `repositoryToken` must also be set.
  /// [resourceGroupName] The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  /// [skuSize] Specifies the SKU size of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  /// [skuTier] Specifies the SKU tier of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  /// [tags] A mapping of tags to assign to the resource.
  const StaticWebAppArgs({
    this.appSettings,
    this.basicAuth,
    this.configurationFileChangesEnabled,
    this.identity,
    this.location,
    this.name,
    this.previewEnvironmentsEnabled,
    this.publicNetworkAccessEnabled,
    this.repositoryBranch,
    this.repositoryToken,
    this.repositoryUrl,
    required this.resourceGroupName,
    this.skuSize,
    this.skuTier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettings': ?appSettings,
      'basicAuth': ?pulumi.Input.mapOptionalInputValue<StaticWebAppBasicAuth, Map<String, dynamic>>(basicAuth, (value) => value.toMap()),
      'configurationFileChangesEnabled': ?configurationFileChangesEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<StaticWebAppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'previewEnvironmentsEnabled': ?previewEnvironmentsEnabled,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'repositoryBranch': ?repositoryBranch,
      'repositoryToken': ?repositoryToken,
      'repositoryUrl': ?repositoryUrl,
      'resourceGroupName': resourceGroupName,
      'skuSize': ?skuSize,
      'skuTier': ?skuTier,
      'tags': ?tags,
    };
  }

  factory StaticWebAppArgs.fromMap(Map<String, dynamic> map) {
    return StaticWebAppArgs(
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      basicAuth: (() { final guardedValue = map['basicAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StaticWebAppBasicAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurationFileChangesEnabled: (() { final guardedValue = map['configurationFileChangesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StaticWebAppIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      previewEnvironmentsEnabled: (() { final guardedValue = map['previewEnvironmentsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repositoryBranch: (() { final guardedValue = map['repositoryBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryToken: (() { final guardedValue = map['repositoryToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryUrl: (() { final guardedValue = map['repositoryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skuSize: (() { final guardedValue = map['skuSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuTier: (() { final guardedValue = map['skuTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
