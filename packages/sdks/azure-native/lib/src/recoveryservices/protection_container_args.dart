// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_backup_server_container.dart';

/// {@template pulumi_recoveryservices_protection_container_args_doc}
/// The set of arguments for ProtectionContainer.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_protection_container_args_doc}
class ProtectionContainerArgs {
  /// Name of the container to be registered.
  final pulumi.Input<String>? containerName;
  /// Optional ETag.
  final pulumi.Input<String>? eTag;
  /// Fabric name associated with the container.
  final pulumi.Input<String> fabricName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// ProtectionContainerResource properties
  final pulumi.Input<AzureBackupServerContainer>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [ProtectionContainerArgs].
  /// [containerName] Name of the container to be registered.
  /// [eTag] Optional ETag.
  /// [fabricName] Fabric name associated with the container.
  /// [location] Resource location.
  /// [properties] ProtectionContainerResource properties
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [tags] Resource tags.
  /// [vaultName] The name of the recovery services vault.
  ProtectionContainerArgs({
    pulumi.Output<String>? containerName,
    pulumi.Output<String>? eTag,
    required pulumi.Output<String> fabricName,
    pulumi.Output<String>? location,
    pulumi.Output<AzureBackupServerContainer>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vaultName,
  }) :
      containerName = pulumi.Input.asOptionalInput<String>(containerName),
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      fabricName = pulumi.Input.asInput<String>(fabricName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<AzureBackupServerContainer>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'eTag': ?eTag,
      'fabricName': fabricName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<AzureBackupServerContainer, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory ProtectionContainerArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionContainerArgs(
      containerName: map['containerName'] == null ? null : pulumi.Output.create<String>(map['containerName'] as String),
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AzureBackupServerContainer>(AzureBackupServerContainer.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

