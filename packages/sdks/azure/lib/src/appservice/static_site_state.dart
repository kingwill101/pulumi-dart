// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_identity.dart';

/// Input properties used for looking up and filtering StaticSite resources.
class StaticSiteState {
  /// The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action.
  final pulumi.Input<String>? apiKey;
  /// A key-value pair of App Settings.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// The default host name of the Static Web App.
  final pulumi.Input<String>? defaultHostName;
  /// An `identity` block as defined below.
  final pulumi.Input<StaticSiteIdentity>? identity;
  /// The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the SKU size of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  final pulumi.Input<String>? skuSize;
  /// Specifies the SKU tier of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  final pulumi.Input<String>? skuTier;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StaticSiteState].
  /// [apiKey] The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action.
  /// [appSettings] A key-value pair of App Settings.
  /// [defaultHostName] The default host name of the Static Web App.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  /// [name] The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created.
  /// [resourceGroupName] The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  /// [skuSize] Specifies the SKU size of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  /// [skuTier] Specifies the SKU tier of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  /// [tags] A mapping of tags to assign to the resource.
  StaticSiteState({
    pulumi.Output<String>? apiKey,
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<String>? defaultHostName,
    pulumi.Output<StaticSiteIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuSize,
    pulumi.Output<String>? skuTier,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      defaultHostName = pulumi.Input.asOptionalInput<String>(defaultHostName),
      identity = pulumi.Input.asOptionalInput<StaticSiteIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuSize = pulumi.Input.asOptionalInput<String>(skuSize),
      skuTier = pulumi.Input.asOptionalInput<String>(skuTier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'appSettings': ?appSettings,
      'defaultHostName': ?defaultHostName,
      'identity': ?pulumi.Input.mapOptionalInputValue<StaticSiteIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuSize': ?skuSize,
      'skuTier': ?skuTier,
      'tags': ?tags,
    };
  }

  factory StaticSiteState.fromMap(Map<String, dynamic> map) {
    return StaticSiteState(
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      defaultHostName: map['defaultHostName'] == null ? null : pulumi.Output.create<String>(map['defaultHostName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<StaticSiteIdentity>(StaticSiteIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuSize: map['skuSize'] == null ? null : pulumi.Output.create<String>(map['skuSize'] as String),
      skuTier: map['skuTier'] == null ? null : pulumi.Output.create<String>(map['skuTier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

