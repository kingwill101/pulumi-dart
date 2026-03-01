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
    pulumi.Output<String>? location,
    pulumi.Output<String>? metricId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      metricId = pulumi.Input.asOptionalInput<String>(metricId),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metricId: map['metricId'] == null ? null : pulumi.Output.create<String>(map['metricId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

