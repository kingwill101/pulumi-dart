// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'long_term_retention_policy.dart';

/// Vault retention policy for AzureFileShare
class VaultRetentionPolicy {
  final pulumi.Input<int> snapshotRetentionInDays;
  /// Base class for retention policy.
  final pulumi.Input<LongTermRetentionPolicy> vaultRetention;

  /// Creates a new [VaultRetentionPolicy].
  /// [snapshotRetentionInDays] Required.
  /// [vaultRetention] Base class for retention policy.
  const VaultRetentionPolicy({
    required this.snapshotRetentionInDays,
    required this.vaultRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotRetentionInDays': snapshotRetentionInDays,
      'vaultRetention': pulumi.Input.mapInputValue<LongTermRetentionPolicy, Map<String, dynamic>>(vaultRetention, (value) => value.toMap()),
    };
  }

  factory VaultRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return VaultRetentionPolicy(
      snapshotRetentionInDays: pulumi.Input.fromValue(map['snapshotRetentionInDays'] as int),
      vaultRetention: pulumi.Input.fromValue(LongTermRetentionPolicy.fromMap((map['vaultRetention']! as Map).cast<String, dynamic>())),
    );
  }
}
