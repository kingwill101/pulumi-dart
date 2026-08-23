// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhub_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_notificationhub_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Is this Notification Hub Namespace enabled? Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? enabled;
  /// The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Type of Namespace - possible values are `Messaging` or `NotificationHub`. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceType;
  /// The allowed Replication Region for the Notification Hub Namespace. Possible values are `Default`, `None`, `AustraliaEast`, `BrazilSouth`, `NorthEurope`, `SouthAfricaNorth`, `SouthEastAsia`, `WestUs2`. Changing this forces a new resource to be created. Defaults to `Default`.
  final pulumi.Input<String>? replicationRegion;
  /// The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard`.
  final pulumi.Input<String> skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Is Zone Redundancy Enabled for the Notification Hub Namespace. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? zoneRedundancyEnabled;

  /// Creates a new [NamespaceArgs].
  /// [enabled] Is this Notification Hub Namespace enabled? Defaults to `true`. Changing this forces a new resource to be created.
  /// [location] The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created.
  /// [name] The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created.
  /// [namespaceType] The Type of Namespace - possible values are `Messaging` or `NotificationHub`. Changing this forces a new resource to be created.
  /// [replicationRegion] The allowed Replication Region for the Notification Hub Namespace. Possible values are `Default`, `None`, `AustraliaEast`, `BrazilSouth`, `NorthEurope`, `SouthAfricaNorth`, `SouthEastAsia`, `WestUs2`. Changing this forces a new resource to be created. Defaults to `Default`.
  /// [resourceGroupName] The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created.
  /// [skuName] The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneRedundancyEnabled] Is Zone Redundancy Enabled for the Notification Hub Namespace. Defaults to `false`. Changing this forces a new resource to be created.
  const NamespaceArgs({
    this.enabled,
    this.location,
    this.name,
    required this.namespaceType,
    this.replicationRegion,
    required this.resourceGroupName,
    required this.skuName,
    this.tags,
    this.zoneRedundancyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'namespaceType': namespaceType,
      'replicationRegion': ?replicationRegion,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
      'zoneRedundancyEnabled': ?zoneRedundancyEnabled,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceType: pulumi.Input.fromValue(map['namespaceType'] as String),
      replicationRegion: (() { final guardedValue = map['replicationRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneRedundancyEnabled: (() { final guardedValue = map['zoneRedundancyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
