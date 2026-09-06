// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_protection_intent_args_doc}
/// The set of arguments for ProtectionIntent.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_protection_intent_args_doc}
class ProtectionIntentArgs {
  /// Optional ETag.
  final pulumi.Input<String?>? eTag;
  /// Fabric name associated with the backup item.
  final pulumi.Input<String> fabricName;
  /// Intent object name.
  final pulumi.Input<String?>? intentObjectName;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// ProtectionIntentResource properties
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
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
  const ProtectionIntentArgs({
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
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory ProtectionIntentArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionIntentArgs(
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      intentObjectName: (() { final guardedValue = map['intentObjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
