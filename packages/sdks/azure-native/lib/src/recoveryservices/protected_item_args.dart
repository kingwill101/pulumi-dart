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
    required pulumi.Output<String> containerName,
    pulumi.Output<String>? eTag,
    required pulumi.Output<String> fabricName,
    pulumi.Output<String>? location,
    pulumi.Output<AzureFileshareProtectedItem>? properties,
    pulumi.Output<String>? protectedItemName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vaultName,
  }) :
      containerName = pulumi.Input.asInput<String>(containerName),
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      fabricName = pulumi.Input.asInput<String>(fabricName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<AzureFileshareProtectedItem>(properties),
      protectedItemName = pulumi.Input.asOptionalInput<String>(protectedItemName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asInput<String>(vaultName);

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
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AzureFileshareProtectedItem>(AzureFileshareProtectedItem.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      protectedItemName: map['protectedItemName'] == null ? null : pulumi.Output.create<String>(map['protectedItemName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

