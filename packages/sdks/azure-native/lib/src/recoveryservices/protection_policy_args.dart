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
    pulumi.Output<String>? eTag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? policyName,
    pulumi.Output<AzureFileShareProtectionPolicy>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vaultName,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      location = pulumi.Input.asOptionalInput<String>(location),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      properties = pulumi.Input.asOptionalInput<AzureFileShareProtectionPolicy>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asInput<String>(vaultName);

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
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AzureFileShareProtectionPolicy>(AzureFileShareProtectionPolicy.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

