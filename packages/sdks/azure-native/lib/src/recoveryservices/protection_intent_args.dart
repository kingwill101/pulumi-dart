// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_recovery_service_vault_protection_intent.dart';

/// {@template pulumi_recoveryservices_protection_intent_args_doc}
/// The set of arguments for ProtectionIntent.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_protection_intent_args_doc}
class ProtectionIntentArgs {
  /// Optional ETag.
  final pulumi.Input<String>? eTag;
  /// Fabric name associated with the backup item.
  final pulumi.Input<String> fabricName;
  /// Intent object name.
  final pulumi.Input<String>? intentObjectName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// ProtectionIntentResource properties
  final pulumi.Input<AzureRecoveryServiceVaultProtectionIntent>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [ProtectionIntentArgs].
  /// [eTag] Optional ETag.
  /// [fabricName] Fabric name associated with the backup item.
  /// [intentObjectName] Intent object name.
  /// [location] Resource location.
  /// [properties] ProtectionIntentResource properties
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [tags] Resource tags.
  /// [vaultName] The name of the recovery services vault.
  ProtectionIntentArgs({
    pulumi.Output<String>? eTag,
    required pulumi.Output<String> fabricName,
    pulumi.Output<String>? intentObjectName,
    pulumi.Output<String>? location,
    pulumi.Output<AzureRecoveryServiceVaultProtectionIntent>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vaultName,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      fabricName = pulumi.Input.asInput<String>(fabricName),
      intentObjectName = pulumi.Input.asOptionalInput<String>(intentObjectName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<AzureRecoveryServiceVaultProtectionIntent>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'fabricName': fabricName,
      'intentObjectName': ?intentObjectName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<AzureRecoveryServiceVaultProtectionIntent, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory ProtectionIntentArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionIntentArgs(
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      intentObjectName: map['intentObjectName'] == null ? null : pulumi.Output.create<String>(map['intentObjectName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AzureRecoveryServiceVaultProtectionIntent>(AzureRecoveryServiceVaultProtectionIntent.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

