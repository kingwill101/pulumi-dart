// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_protection_container_args_doc}
/// The set of arguments for ProtectionContainer.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_protection_container_args_doc}
class ProtectionContainerArgs {
  /// Name of the container to be registered.
  final pulumi.Input<String?>? containerName;
  /// Optional ETag.
  final pulumi.Input<String?>? eTag;
  /// Fabric name associated with the container.
  final pulumi.Input<String> fabricName;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// ProtectionContainerResource properties
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
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
  const ProtectionContainerArgs({
    this.containerName,
    this.eTag,
    required this.fabricName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'eTag': ?eTag,
      'fabricName': fabricName,
      'location': ?location,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory ProtectionContainerArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionContainerArgs(
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
