// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_share_protection_policy.dart';

/// {@template pulumi_recoveryservices_protection_policy_args_doc}
/// The set of arguments for ProtectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_protection_policy_args_doc}
class ProtectionPolicyArgs {
  /// Optional ETag.
  final pulumi.Input<String>? eTag;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Backup policy to be created.
  final pulumi.Input<String>? policyName;
  /// ProtectionPolicyResource properties
  final pulumi.Input<AzureFileShareProtectionPolicy>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [ProtectionPolicyArgs].
  /// [eTag] Optional ETag.
  /// [location] Resource location.
  /// [policyName] Backup policy to be created.
  /// [properties] ProtectionPolicyResource properties
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [tags] Resource tags.
  /// [vaultName] The name of the recovery services vault.
  ProtectionPolicyArgs({
    this.eTag,
    this.location,
    this.policyName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'location': ?location,
      'policyName': ?policyName,
      'properties': ?pulumi.Input.mapOptionalInputValue<AzureFileShareProtectionPolicy, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory ProtectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionPolicyArgs(
      eTag: map['eTag'] == null ? null : (map['eTag'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName'] as String).input(),
      properties: map['properties'] == null ? null : (AzureFileShareProtectionPolicy.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

