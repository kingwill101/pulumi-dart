// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'long_term_retention_policy_response.dart';

/// Vault retention policy for AzureFileShare
class VaultRetentionPolicyResponse {
  final pulumi.Input<int> snapshotRetentionInDays;

  /// Base class for retention policy.
  final pulumi.Input<LongTermRetentionPolicyResponse> vaultRetention;

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
      'vaultRetention':
          pulumi.Input.mapInputValue<
            LongTermRetentionPolicyResponse,
            Map<String, dynamic>
          >(vaultRetention, (value) => value.toMap()),
    };
  }

  factory VaultRetentionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return VaultRetentionPolicyResponse(
      snapshotRetentionInDays: pulumi.Input.fromValue(
        map['snapshotRetentionInDays'] as int,
      ),
      vaultRetention: pulumi.Input.fromValue(
        LongTermRetentionPolicyResponse.fromMap(
          (map['vaultRetention']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
