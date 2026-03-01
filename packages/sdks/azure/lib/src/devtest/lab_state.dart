// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Lab resources.
class LabState {
  /// The ID of the Storage Account used for Artifact Storage.
  final pulumi.Input<String>? artifactsStorageAccountId;
  /// The ID of the Default Premium Storage Account for this Dev Test Lab.
  final pulumi.Input<String>? defaultPremiumStorageAccountId;
  /// The ID of the Default Storage Account for this Dev Test Lab.
  final pulumi.Input<String>? defaultStorageAccountId;
  /// The ID of the Key used for this Dev Test Lab.
  final pulumi.Input<String>? keyVaultId;
  /// Specifies the supported Azure location where the Dev Test Lab should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Dev Test Lab. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Storage Account used for Storage of Premium Data Disk.
  final pulumi.Input<String>? premiumDataDiskStorageAccountId;
  /// The name of the resource group under which the Dev Test Lab resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The unique immutable identifier of the Dev Test Lab.
  final pulumi.Input<String>? uniqueIdentifier;

  /// Creates a new [LabState].
  /// [artifactsStorageAccountId] The ID of the Storage Account used for Artifact Storage.
  /// [defaultPremiumStorageAccountId] The ID of the Default Premium Storage Account for this Dev Test Lab.
  /// [defaultStorageAccountId] The ID of the Default Storage Account for this Dev Test Lab.
  /// [keyVaultId] The ID of the Key used for this Dev Test Lab.
  /// [location] Specifies the supported Azure location where the Dev Test Lab should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Dev Test Lab. Changing this forces a new resource to be created.
  /// [premiumDataDiskStorageAccountId] The ID of the Storage Account used for Storage of Premium Data Disk.
  /// [resourceGroupName] The name of the resource group under which the Dev Test Lab resource has to be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [uniqueIdentifier] The unique immutable identifier of the Dev Test Lab.
  LabState({
    pulumi.Output<String>? artifactsStorageAccountId,
    pulumi.Output<String>? defaultPremiumStorageAccountId,
    pulumi.Output<String>? defaultStorageAccountId,
    pulumi.Output<String>? keyVaultId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? premiumDataDiskStorageAccountId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? uniqueIdentifier,
  }) :
      artifactsStorageAccountId = pulumi.Input.asOptionalInput<String>(artifactsStorageAccountId),
      defaultPremiumStorageAccountId = pulumi.Input.asOptionalInput<String>(defaultPremiumStorageAccountId),
      defaultStorageAccountId = pulumi.Input.asOptionalInput<String>(defaultStorageAccountId),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      premiumDataDiskStorageAccountId = pulumi.Input.asOptionalInput<String>(premiumDataDiskStorageAccountId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uniqueIdentifier = pulumi.Input.asOptionalInput<String>(uniqueIdentifier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactsStorageAccountId': ?artifactsStorageAccountId,
      'defaultPremiumStorageAccountId': ?defaultPremiumStorageAccountId,
      'defaultStorageAccountId': ?defaultStorageAccountId,
      'keyVaultId': ?keyVaultId,
      'location': ?location,
      'name': ?name,
      'premiumDataDiskStorageAccountId': ?premiumDataDiskStorageAccountId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'uniqueIdentifier': ?uniqueIdentifier,
    };
  }

  factory LabState.fromMap(Map<String, dynamic> map) {
    return LabState(
      artifactsStorageAccountId: map['artifactsStorageAccountId'] == null ? null : pulumi.Output.create<String>(map['artifactsStorageAccountId'] as String),
      defaultPremiumStorageAccountId: map['defaultPremiumStorageAccountId'] == null ? null : pulumi.Output.create<String>(map['defaultPremiumStorageAccountId'] as String),
      defaultStorageAccountId: map['defaultStorageAccountId'] == null ? null : pulumi.Output.create<String>(map['defaultStorageAccountId'] as String),
      keyVaultId: map['keyVaultId'] == null ? null : pulumi.Output.create<String>(map['keyVaultId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      premiumDataDiskStorageAccountId: map['premiumDataDiskStorageAccountId'] == null ? null : pulumi.Output.create<String>(map['premiumDataDiskStorageAccountId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      uniqueIdentifier: map['uniqueIdentifier'] == null ? null : pulumi.Output.create<String>(map['uniqueIdentifier'] as String),
    );
  }
}

