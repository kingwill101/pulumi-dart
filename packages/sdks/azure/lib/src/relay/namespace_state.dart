// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceState {
  /// Specifies the supported Azure location where the Azure Relay Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The Identifier for Azure Insights metrics.
  final pulumi.Input<String>? metricId;
  /// Specifies the name of the Azure Relay Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The primary connection string for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? primaryConnectionString;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group in which to create the Azure Relay Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary connection string for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? secondaryKey;
  /// The name of the SKU to use. At this time the only supported value is `Standard`.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceState].
  /// [location] Specifies the supported Azure location where the Azure Relay Namespace exists. Changing this forces a new resource to be created.
  /// [metricId] The Identifier for Azure Insights metrics.
  /// [name] Specifies the name of the Azure Relay Namespace. Changing this forces a new resource to be created.
  /// [primaryConnectionString] The primary connection string for the authorization rule `RootManageSharedAccessKey`.
  /// [primaryKey] The primary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [resourceGroupName] The name of the resource group in which to create the Azure Relay Namespace. Changing this forces a new resource to be created.
  /// [secondaryConnectionString] The secondary connection string for the authorization rule `RootManageSharedAccessKey`.
  /// [secondaryKey] The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [skuName] The name of the SKU to use. At this time the only supported value is `Standard`.
  /// [tags] A mapping of tags to assign to the resource.
  NamespaceState({
    this.location,
    this.metricId,
    this.name,
    this.primaryConnectionString,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryKey,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'metricId': ?metricId,
      'name': ?name,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryKey': ?secondaryKey,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      metricId: map['metricId'] == null ? null : (map['metricId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString']! as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString']! as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

