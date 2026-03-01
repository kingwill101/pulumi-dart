// ignore_for_file: unused_element, unnecessary_cast

import 'long_term_retention_policy_response.dart';

/// Vault retention policy for AzureFileShare
class VaultRetentionPolicyResponse {
  final int snapshotRetentionInDays;
  /// Base class for retention policy.
  final LongTermRetentionPolicyResponse vaultRetention;

  /// Creates a new [VaultRetentionPolicyResponse].
  /// [snapshotRetentionInDays] Required.
  /// [vaultRetention] Base class for retention policy.
  VaultRetentionPolicyResponse({
    required this.snapshotRetentionInDays,
    required this.vaultRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotRetentionInDays': snapshotRetentionInDays,
      'vaultRetention': vaultRetention.toMap(),
    };
  }

  factory VaultRetentionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return VaultRetentionPolicyResponse(
      snapshotRetentionInDays: map['snapshotRetentionInDays'] as int,
      vaultRetention: LongTermRetentionPolicyResponse.fromMap((map['vaultRetention'] as Map).cast<String, dynamic>()),
    );
  }
}

