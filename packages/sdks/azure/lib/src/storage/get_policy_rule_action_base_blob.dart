// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyRuleActionBaseBlob {
  /// Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool.
  final bool autoTierToHotFromCoolEnabled;
  /// The age in days after creation to delete the blob snapshot.
  final int deleteAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to delete the blob.
  final int deleteAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to delete the blob.
  final int deleteAfterDaysSinceModificationGreaterThan;
  /// The age in days after creation to archive storage.
  final int tierToArchiveAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to archive storage.
  final int tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last tier change to the blobs to skip to be archived.
  final int tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;
  /// The age in days after last modification to tier blobs to archive storage.
  final int tierToArchiveAfterDaysSinceModificationGreaterThan;
  /// Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  final int tierToColdAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to cold storage. Supports blob currently at Hot tier.
  final int tierToColdAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to tier blobs to cold storage. Supports blob currently at Hot tier.
  final int tierToColdAfterDaysSinceModificationGreaterThan;
  /// Optional The age in days after creation to cool storage. Supports blob currently at Hot tier.
  final int tierToCoolAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier.
  final int tierToCoolAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier.
  final int tierToCoolAfterDaysSinceModificationGreaterThan;

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
      autoTierToHotFromCoolEnabled: map['autoTierToHotFromCoolEnabled'] as bool,
      deleteAfterDaysSinceCreationGreaterThan: map['deleteAfterDaysSinceCreationGreaterThan'] as int,
      deleteAfterDaysSinceLastAccessTimeGreaterThan: map['deleteAfterDaysSinceLastAccessTimeGreaterThan'] as int,
      deleteAfterDaysSinceModificationGreaterThan: map['deleteAfterDaysSinceModificationGreaterThan'] as int,
      tierToArchiveAfterDaysSinceCreationGreaterThan: map['tierToArchiveAfterDaysSinceCreationGreaterThan'] as int,
      tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan: map['tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan'] as int,
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan: map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] as int,
      tierToArchiveAfterDaysSinceModificationGreaterThan: map['tierToArchiveAfterDaysSinceModificationGreaterThan'] as int,
      tierToColdAfterDaysSinceCreationGreaterThan: map['tierToColdAfterDaysSinceCreationGreaterThan'] as int,
      tierToColdAfterDaysSinceLastAccessTimeGreaterThan: map['tierToColdAfterDaysSinceLastAccessTimeGreaterThan'] as int,
      tierToColdAfterDaysSinceModificationGreaterThan: map['tierToColdAfterDaysSinceModificationGreaterThan'] as int,
      tierToCoolAfterDaysSinceCreationGreaterThan: map['tierToCoolAfterDaysSinceCreationGreaterThan'] as int,
      tierToCoolAfterDaysSinceLastAccessTimeGreaterThan: map['tierToCoolAfterDaysSinceLastAccessTimeGreaterThan'] as int,
      tierToCoolAfterDaysSinceModificationGreaterThan: map['tierToCoolAfterDaysSinceModificationGreaterThan'] as int,
    );
  }
}

