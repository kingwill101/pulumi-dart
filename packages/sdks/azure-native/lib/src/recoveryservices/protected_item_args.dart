// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_fileshare_protected_item.dart';

/// {@template pulumi_recoveryservices_protected_item_args_doc}
/// The set of arguments for ProtectedItem.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_protected_item_args_doc}
class ProtectedItemArgs {
  /// Container name associated with the backup item.
  final pulumi.Input<String> containerName;
  /// Optional ETag.
  final pulumi.Input<String>? eTag;
  /// Fabric name associated with the backup item.
  final pulumi.Input<String> fabricName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// ProtectedItemResource properties
  final pulumi.Input<AzureFileshareProtectedItem>? properties;
  /// Item name to be backed up.
  final pulumi.Input<String>? protectedItemName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [ProtectedItemArgs].
  /// [containerName] Container name associated with the backup item.
  /// [eTag] Optional ETag.
  /// [fabricName] Fabric name associated with the backup item.
  /// [location] Resource location.
  /// [properties] ProtectedItemResource properties
  /// [protectedItemName] Item name to be backed up.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [tags] Resource tags.
  /// [vaultName] The name of the recovery services vault.
  ProtectedItemArgs({
    required this.containerName,
    this.eTag,
    required this.fabricName,
    this.location,
    this.properties,
    this.protectedItemName,
    required this.resourceGroupName,
    this.tags,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'eTag': ?eTag,
      'fabricName': fabricName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<AzureFileshareProtectedItem, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'protectedItemName': ?protectedItemName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory ProtectedItemArgs.fromMap(Map<String, dynamic> map) {
    return ProtectedItemArgs(
      containerName: (map['containerName'] as String).input(),
      eTag: map['eTag'] == null ? null : (map['eTag'] as String).input(),
      fabricName: (map['fabricName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (AzureFileshareProtectedItem.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      protectedItemName: map['protectedItemName'] == null ? null : (map['protectedItemName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

