// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyRuleActionVersion {
  /// The age in days after creation to tier blob version to archive storage.
  final int changeTierToArchiveAfterDaysSinceCreation;
  /// The age in days after creation to tier blob version to cool storage.
  final int changeTierToCoolAfterDaysSinceCreation;
  /// The age in days after creation to delete the blob version.
  final int deleteAfterDaysSinceCreation;
  /// The age in days after last tier change to the blobs to skip to be archived.
  final int tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;
  /// Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  final int tierToColdAfterDaysSinceCreationGreaterThan;

  /// Creates a new [GetPolicyRuleActionVersion].
  /// [changeTierToArchiveAfterDaysSinceCreation] The age in days after creation to tier blob version to archive storage.
  /// [changeTierToCoolAfterDaysSinceCreation] The age in days after creation to tier blob version to cool storage.
  /// [deleteAfterDaysSinceCreation] The age in days after creation to delete the blob version.
  /// [tierToArchiveAfterDaysSinceLastTierChangeGreaterThan] The age in days after last tier change to the blobs to skip to be archived.
  /// [tierToColdAfterDaysSinceCreationGreaterThan] Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  GetPolicyRuleActionVersion({
    required this.changeTierToArchiveAfterDaysSinceCreation,
    required this.changeTierToCoolAfterDaysSinceCreation,
    required this.deleteAfterDaysSinceCreation,
    required this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    required this.tierToColdAfterDaysSinceCreationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeTierToArchiveAfterDaysSinceCreation': changeTierToArchiveAfterDaysSinceCreation,
      'changeTierToCoolAfterDaysSinceCreation': changeTierToCoolAfterDaysSinceCreation,
      'deleteAfterDaysSinceCreation': deleteAfterDaysSinceCreation,
      'tierToArchiveAfterDaysSinceLastTierChangeGreaterThan': tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
      'tierToColdAfterDaysSinceCreationGreaterThan': tierToColdAfterDaysSinceCreationGreaterThan,
    };
  }

  factory GetPolicyRuleActionVersion.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleActionVersion(
      changeTierToArchiveAfterDaysSinceCreation: map['changeTierToArchiveAfterDaysSinceCreation'] as int,
      changeTierToCoolAfterDaysSinceCreation: map['changeTierToCoolAfterDaysSinceCreation'] as int,
      deleteAfterDaysSinceCreation: map['deleteAfterDaysSinceCreation'] as int,
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan: map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] as int,
      tierToColdAfterDaysSinceCreationGreaterThan: map['tierToColdAfterDaysSinceCreationGreaterThan'] as int,
    );
  }
}

