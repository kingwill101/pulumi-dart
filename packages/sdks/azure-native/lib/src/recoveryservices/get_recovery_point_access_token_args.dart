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
    required pulumi.Output<String> containerName,
    pulumi.Output<String>? eTag,
    required pulumi.Output<String> fabricName,
    pulumi.Output<String>? location,
    pulumi.Output<AADProperties>? properties,
    required pulumi.Output<String> protectedItemName,
    required pulumi.Output<String> recoveryPointId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vaultName,
  }) :
      containerName = pulumi.Input.asInput<String>(containerName),
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      fabricName = pulumi.Input.asInput<String>(fabricName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<AADProperties>(properties),
      protectedItemName = pulumi.Input.asInput<String>(protectedItemName),
      recoveryPointId = pulumi.Input.asInput<String>(recoveryPointId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asInput<String>(vaultName);

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
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AADProperties>(AADProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      protectedItemName: pulumi.Output.create<String>(map['protectedItemName'] as String),
      recoveryPointId: pulumi.Output.create<String>(map['recoveryPointId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

