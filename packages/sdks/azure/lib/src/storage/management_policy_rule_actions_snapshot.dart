// ignore_for_file: unused_element, unnecessary_cast


class ManagementPolicyRuleActionsSnapshot {
  /// The age in days after creation to tier blob snapshot to archive storage. Must be between `0` and `99999`. Defaults to `-1`.
  final int? changeTierToArchiveAfterDaysSinceCreation;
  /// The age in days after creation to tier blob snapshot to cool storage. Must be between `0` and `99999`. Defaults to `-1`.
  final int? changeTierToCoolAfterDaysSinceCreation;
  /// The age in days after creation to delete the blob snapshot. Must be between `0` and `99999`. Defaults to `-1`.
  final int? deleteAfterDaysSinceCreationGreaterThan;
  /// The age in days after last tier change to the blobs to skip to be archived. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;
  /// The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final int? tierToColdAfterDaysSinceCreationGreaterThan;

  /// Creates a new [ManagementPolicyRuleActionsSnapshot].
  /// [changeTierToArchiveAfterDaysSinceCreation] The age in days after creation to tier blob snapshot to archive storage. Must be between `0` and `99999`. Defaults to `-1`.
  /// [changeTierToCoolAfterDaysSinceCreation] The age in days after creation to tier blob snapshot to cool storage. Must be between `0` and `99999`. Defaults to `-1`.
  /// [deleteAfterDaysSinceCreationGreaterThan] The age in days after creation to delete the blob snapshot. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceLastTierChangeGreaterThan] The age in days after last tier change to the blobs to skip to be archived. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToColdAfterDaysSinceCreationGreaterThan] The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  ManagementPolicyRuleActionsSnapshot({
    this.changeTierToArchiveAfterDaysSinceCreation,
    this.changeTierToCoolAfterDaysSinceCreation,
    this.deleteAfterDaysSinceCreationGreaterThan,
    this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    this.tierToColdAfterDaysSinceCreationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeTierToArchiveAfterDaysSinceCreation': ?changeTierToArchiveAfterDaysSinceCreation,
      'changeTierToCoolAfterDaysSinceCreation': ?changeTierToCoolAfterDaysSinceCreation,
      'deleteAfterDaysSinceCreationGreaterThan': ?deleteAfterDaysSinceCreationGreaterThan,
      'tierToArchiveAfterDaysSinceLastTierChangeGreaterThan': ?tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
      'tierToColdAfterDaysSinceCreationGreaterThan': ?tierToColdAfterDaysSinceCreationGreaterThan,
    };
  }

  factory ManagementPolicyRuleActionsSnapshot.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleActionsSnapshot(
      changeTierToArchiveAfterDaysSinceCreation: map['changeTierToArchiveAfterDaysSinceCreation'] == null ? null : map['changeTierToArchiveAfterDaysSinceCreation'] as int,
      changeTierToCoolAfterDaysSinceCreation: map['changeTierToCoolAfterDaysSinceCreation'] == null ? null : map['changeTierToCoolAfterDaysSinceCreation'] as int,
      deleteAfterDaysSinceCreationGreaterThan: map['deleteAfterDaysSinceCreationGreaterThan'] == null ? null : map['deleteAfterDaysSinceCreationGreaterThan'] as int,
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan: map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] == null ? null : map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] as int,
      tierToColdAfterDaysSinceCreationGreaterThan: map['tierToColdAfterDaysSinceCreationGreaterThan'] == null ? null : map['tierToColdAfterDaysSinceCreationGreaterThan'] as int,
    );
  }
}

