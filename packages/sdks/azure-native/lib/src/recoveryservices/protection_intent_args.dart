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
    this.eTag,
    required this.fabricName,
    this.intentObjectName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    required this.vaultName,
  });

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
      eTag: map['eTag'] == null ? null : (map['eTag']! as String).input(),
      fabricName: (map['fabricName'] as String).input(),
      intentObjectName: map['intentObjectName'] == null ? null : (map['intentObjectName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (AzureRecoveryServiceVaultProtectionIntent.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

