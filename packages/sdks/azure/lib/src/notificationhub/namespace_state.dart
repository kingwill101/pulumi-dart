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
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceType,
    pulumi.Output<String>? replicationRegion,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? servicebusEndpoint,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? zoneRedundancyEnabled,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceType = pulumi.Input.asOptionalInput<String>(namespaceType),
      replicationRegion = pulumi.Input.asOptionalInput<String>(replicationRegion),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      servicebusEndpoint = pulumi.Input.asOptionalInput<String>(servicebusEndpoint),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneRedundancyEnabled = pulumi.Input.asOptionalInput<bool>(zoneRedundancyEnabled);

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
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceType: map['namespaceType'] == null ? null : pulumi.Output.create<String>(map['namespaceType'] as String),
      replicationRegion: map['replicationRegion'] == null ? null : pulumi.Output.create<String>(map['replicationRegion'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      servicebusEndpoint: map['servicebusEndpoint'] == null ? null : pulumi.Output.create<String>(map['servicebusEndpoint'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneRedundancyEnabled: map['zoneRedundancyEnabled'] == null ? null : pulumi.Output.create<bool>(map['zoneRedundancyEnabled'] as bool),
    );
  }
}

