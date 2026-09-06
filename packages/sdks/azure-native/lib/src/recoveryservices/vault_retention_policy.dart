// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vault retention policy for AzureFileShare
class VaultRetentionPolicy {
  final pulumi.Input<int> snapshotRetentionInDays;
  /// Base class for retention policy.
  final pulumi.Input<dynamic> vaultRetention;

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
      'vaultRetention': vaultRetention,
    };
  }

  factory VaultRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return VaultRetentionPolicy(
      snapshotRetentionInDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['snapshotRetentionInDays'])),
      vaultRetention: pulumi.Input.fromValue(map['vaultRetention']),
    );
  }
}
