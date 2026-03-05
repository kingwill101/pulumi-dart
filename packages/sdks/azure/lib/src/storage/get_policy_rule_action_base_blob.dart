// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyRuleActionBaseBlob {
  /// Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool.
  final pulumi.Input<bool> autoTierToHotFromCoolEnabled;
  /// The age in days after creation to delete the blob snapshot.
  final pulumi.Input<int> deleteAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to delete the blob.
  final pulumi.Input<int> deleteAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to delete the blob.
  final pulumi.Input<int> deleteAfterDaysSinceModificationGreaterThan;
  /// The age in days after creation to archive storage.
  final pulumi.Input<int> tierToArchiveAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to archive storage.
  final pulumi.Input<int> tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last tier change to the blobs to skip to be archived.
  final pulumi.Input<int> tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;
  /// The age in days after last modification to tier blobs to archive storage.
  final pulumi.Input<int> tierToArchiveAfterDaysSinceModificationGreaterThan;
  /// Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  final pulumi.Input<int> tierToColdAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to cold storage. Supports blob currently at Hot tier.
  final pulumi.Input<int> tierToColdAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to tier blobs to cold storage. Supports blob currently at Hot tier.
  final pulumi.Input<int> tierToColdAfterDaysSinceModificationGreaterThan;
  /// Optional The age in days after creation to cool storage. Supports blob currently at Hot tier.
  final pulumi.Input<int> tierToCoolAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier.
  final pulumi.Input<int> tierToCoolAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier.
  final pulumi.Input<int> tierToCoolAfterDaysSinceModificationGreaterThan;

  /// Creates a new [GetPolicyRuleActionBaseBlob].
  /// [autoTierToHotFromCoolEnabled] Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool.
  /// [deleteAfterDaysSinceCreationGreaterThan] The age in days after creation to delete the blob snapshot.
  /// [deleteAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to delete the blob.
  /// [deleteAfterDaysSinceModificationGreaterThan] The age in days after last modification to delete the blob.
  /// [tierToArchiveAfterDaysSinceCreationGreaterThan] The age in days after creation to archive storage.
  /// [tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to tier blobs to archive storage.
  /// [tierToArchiveAfterDaysSinceLastTierChangeGreaterThan] The age in days after last tier change to the blobs to skip to be archived.
  /// [tierToArchiveAfterDaysSinceModificationGreaterThan] The age in days after last modification to tier blobs to archive storage.
  /// [tierToColdAfterDaysSinceCreationGreaterThan] Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  /// [tierToColdAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to tier blobs to cold storage. Supports blob currently at Hot tier.
  /// [tierToColdAfterDaysSinceModificationGreaterThan] The age in days after last modification to tier blobs to cold storage. Supports blob currently at Hot tier.
  /// [tierToCoolAfterDaysSinceCreationGreaterThan] Optional The age in days after creation to cool storage. Supports blob currently at Hot tier.
  /// [tierToCoolAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier.
  /// [tierToCoolAfterDaysSinceModificationGreaterThan] The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier.
  GetPolicyRuleActionBaseBlob({
    required this.autoTierToHotFromCoolEnabled,
    required this.deleteAfterDaysSinceCreationGreaterThan,
    required this.deleteAfterDaysSinceLastAccessTimeGreaterThan,
    required this.deleteAfterDaysSinceModificationGreaterThan,
    required this.tierToArchiveAfterDaysSinceCreationGreaterThan,
    required this.tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan,
    required this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    required this.tierToArchiveAfterDaysSinceModificationGreaterThan,
    required this.tierToColdAfterDaysSinceCreationGreaterThan,
    required this.tierToColdAfterDaysSinceLastAccessTimeGreaterThan,
    required this.tierToColdAfterDaysSinceModificationGreaterThan,
    required this.tierToCoolAfterDaysSinceCreationGreaterThan,
    required this.tierToCoolAfterDaysSinceLastAccessTimeGreaterThan,
    required this.tierToCoolAfterDaysSinceModificationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoTierToHotFromCoolEnabled': autoTierToHotFromCoolEnabled,
      'deleteAfterDaysSinceCreationGreaterThan': deleteAfterDaysSinceCreationGreaterThan,
      'deleteAfterDaysSinceLastAccessTimeGreaterThan': deleteAfterDaysSinceLastAccessTimeGreaterThan,
      'deleteAfterDaysSinceModificationGreaterThan': deleteAfterDaysSinceModificationGreaterThan,
      'tierToArchiveAfterDaysSinceCreationGreaterThan': tierToArchiveAfterDaysSinceCreationGreaterThan,
      'tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan': tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan,
      'tierToArchiveAfterDaysSinceLastTierChangeGreaterThan': tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
      'tierToArchiveAfterDaysSinceModificationGreaterThan': tierToArchiveAfterDaysSinceModificationGreaterThan,
      'tierToColdAfterDaysSinceCreationGreaterThan': tierToColdAfterDaysSinceCreationGreaterThan,
      'tierToColdAfterDaysSinceLastAccessTimeGreaterThan': tierToColdAfterDaysSinceLastAccessTimeGreaterThan,
      'tierToColdAfterDaysSinceModificationGreaterThan': tierToColdAfterDaysSinceModificationGreaterThan,
      'tierToCoolAfterDaysSinceCreationGreaterThan': tierToCoolAfterDaysSinceCreationGreaterThan,
      'tierToCoolAfterDaysSinceLastAccessTimeGreaterThan': tierToCoolAfterDaysSinceLastAccessTimeGreaterThan,
      'tierToCoolAfterDaysSinceModificationGreaterThan': tierToCoolAfterDaysSinceModificationGreaterThan,
    };
  }

  factory GetPolicyRuleActionBaseBlob.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleActionBaseBlob(
      autoTierToHotFromCoolEnabled: pulumi.Input.fromValue(map['autoTierToHotFromCoolEnabled'] as bool),
      deleteAfterDaysSinceCreationGreaterThan: pulumi.Input.fromValue(map['deleteAfterDaysSinceCreationGreaterThan'] as int),
      deleteAfterDaysSinceLastAccessTimeGreaterThan: pulumi.Input.fromValue(map['deleteAfterDaysSinceLastAccessTimeGreaterThan'] as int),
      deleteAfterDaysSinceModificationGreaterThan: pulumi.Input.fromValue(map['deleteAfterDaysSinceModificationGreaterThan'] as int),
      tierToArchiveAfterDaysSinceCreationGreaterThan: pulumi.Input.fromValue(map['tierToArchiveAfterDaysSinceCreationGreaterThan'] as int),
      tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan: pulumi.Input.fromValue(map['tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan'] as int),
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan: pulumi.Input.fromValue(map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] as int),
      tierToArchiveAfterDaysSinceModificationGreaterThan: pulumi.Input.fromValue(map['tierToArchiveAfterDaysSinceModificationGreaterThan'] as int),
      tierToColdAfterDaysSinceCreationGreaterThan: pulumi.Input.fromValue(map['tierToColdAfterDaysSinceCreationGreaterThan'] as int),
      tierToColdAfterDaysSinceLastAccessTimeGreaterThan: pulumi.Input.fromValue(map['tierToColdAfterDaysSinceLastAccessTimeGreaterThan'] as int),
      tierToColdAfterDaysSinceModificationGreaterThan: pulumi.Input.fromValue(map['tierToColdAfterDaysSinceModificationGreaterThan'] as int),
      tierToCoolAfterDaysSinceCreationGreaterThan: pulumi.Input.fromValue(map['tierToCoolAfterDaysSinceCreationGreaterThan'] as int),
      tierToCoolAfterDaysSinceLastAccessTimeGreaterThan: pulumi.Input.fromValue(map['tierToCoolAfterDaysSinceLastAccessTimeGreaterThan'] as int),
      tierToCoolAfterDaysSinceModificationGreaterThan: pulumi.Input.fromValue(map['tierToCoolAfterDaysSinceModificationGreaterThan'] as int),
    );
  }
}

