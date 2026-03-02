// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceState {
  /// Is this Notification Hub Namespace enabled? Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? enabled;
  /// The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Type of Namespace - possible values are `Messaging` or `NotificationHub`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceType;
  /// The allowed Replication Region for the Notification Hub Namespace. Possible values are `Default`, `None`, `AustraliaEast`, `BrazilSouth`, `NorthEurope`, `SouthAfricaNorth`, `SouthEastAsia`, `WestUs2`. Changing this forces a new resource to be created. Defaults to `Default`.
  final pulumi.Input<String>? replicationRegion;
  /// The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ServiceBus Endpoint for this Notification Hub Namespace.
  final pulumi.Input<String>? servicebusEndpoint;
  /// The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard`.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Is Zone Redundancy Enabled for the Notification Hub Namespace. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? zoneRedundancyEnabled;

  /// Creates a new [NamespaceState].
  /// [enabled] Is this Notification Hub Namespace enabled? Defaults to `true`. Changing this forces a new resource to be created.
  /// [location] The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created.
  /// [name] The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created.
  /// [namespaceType] The Type of Namespace - possible values are `Messaging` or `NotificationHub`. Changing this forces a new resource to be created.
  /// [replicationRegion] The allowed Replication Region for the Notification Hub Namespace. Possible values are `Default`, `None`, `AustraliaEast`, `BrazilSouth`, `NorthEurope`, `SouthAfricaNorth`, `SouthEastAsia`, `WestUs2`. Changing this forces a new resource to be created. Defaults to `Default`.
  /// [resourceGroupName] The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created.
  /// [servicebusEndpoint] The ServiceBus Endpoint for this Notification Hub Namespace.
  /// [skuName] The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneRedundancyEnabled] Is Zone Redundancy Enabled for the Notification Hub Namespace. Defaults to `false`. Changing this forces a new resource to be created.
  NamespaceState({
    this.enabled,
    this.location,
    this.name,
    this.namespaceType,
    this.replicationRegion,
    this.resourceGroupName,
    this.servicebusEndpoint,
    this.skuName,
    this.tags,
    this.zoneRedundancyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'namespaceType': ?namespaceType,
      'replicationRegion': ?replicationRegion,
      'resourceGroupName': ?resourceGroupName,
      'servicebusEndpoint': ?servicebusEndpoint,
      'skuName': ?skuName,
      'tags': ?tags,
      'zoneRedundancyEnabled': ?zoneRedundancyEnabled,
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespaceType: map['namespaceType'] == null ? null : (map['namespaceType']! as String).input(),
      replicationRegion: map['replicationRegion'] == null ? null : (map['replicationRegion']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      servicebusEndpoint: map['servicebusEndpoint'] == null ? null : (map['servicebusEndpoint']! as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zoneRedundancyEnabled: map['zoneRedundancyEnabled'] == null ? null : (map['zoneRedundancyEnabled']! as bool).input(),
    );
  }
}

