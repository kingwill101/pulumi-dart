// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadproperties.dart';

/// {@template pulumi_recoveryservices_get_recovery_point_access_token_args_doc}
/// Arguments for getRecoveryPointAccessToken.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_recovery_point_access_token_args_doc}
class GetRecoveryPointAccessTokenArgs {
  /// Name of the container.
  final pulumi.Input<String> containerName;
  /// Optional ETag.
  final pulumi.Input<String>? eTag;
  /// Fabric name associated with the container.
  final pulumi.Input<String> fabricName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// AADPropertiesResource properties
  final pulumi.Input<AADProperties>? properties;
  /// Name of the Protected Item.
  final pulumi.Input<String> protectedItemName;
  /// Recovery Point Id
  final pulumi.Input<String> recoveryPointId;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetRecoveryPointAccessTokenArgs].
  /// [containerName] Name of the container.
  /// [eTag] Optional ETag.
  /// [fabricName] Fabric name associated with the container.
  /// [location] Resource location.
  /// [properties] AADPropertiesResource properties
  /// [protectedItemName] Name of the Protected Item.
  /// [recoveryPointId] Recovery Point Id
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [tags] Resource tags.
  /// [vaultName] The name of the recovery services vault.
  GetRecoveryPointAccessTokenArgs({
    required this.containerName,
    this.eTag,
    required this.fabricName,
    this.location,
    this.properties,
    required this.protectedItemName,
    required this.recoveryPointId,
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
      'properties': ?pulumi.Input.mapOptionalInputValue<AADProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'protectedItemName': protectedItemName,
      'recoveryPointId': recoveryPointId,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory GetRecoveryPointAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetRecoveryPointAccessTokenArgs(
      containerName: (map['containerName'] as String).input(),
      eTag: map['eTag'] == null ? null : (map['eTag'] as String).input(),
      fabricName: (map['fabricName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (AADProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      protectedItemName: (map['protectedItemName'] as String).input(),
      recoveryPointId: (map['recoveryPointId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

