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
    this.artifactsStorageAccountId,
    this.defaultPremiumStorageAccountId,
    this.defaultStorageAccountId,
    this.keyVaultId,
    this.location,
    this.name,
    this.premiumDataDiskStorageAccountId,
    this.resourceGroupName,
    this.tags,
    this.uniqueIdentifier,
  });

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
      artifactsStorageAccountId: (() {
        final guardedValue = map['artifactsStorageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultPremiumStorageAccountId: (() {
        final guardedValue = map['defaultPremiumStorageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultStorageAccountId: (() {
        final guardedValue = map['defaultStorageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultId: (() {
        final guardedValue = map['keyVaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      premiumDataDiskStorageAccountId: (() {
        final guardedValue = map['premiumDataDiskStorageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
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
      uniqueIdentifier: (() {
        final guardedValue = map['uniqueIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
