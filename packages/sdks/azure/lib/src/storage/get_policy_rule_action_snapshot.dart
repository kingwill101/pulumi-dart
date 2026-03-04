// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyRuleActionSnapshot {
  /// The age in days after creation to tier blob version to archive storage.
  final pulumi.Input<int> changeTierToArchiveAfterDaysSinceCreation;

  /// The age in days after creation to tier blob version to cool storage.
  final pulumi.Input<int> changeTierToCoolAfterDaysSinceCreation;

  /// The age in days after creation to delete the blob snapshot.
  final pulumi.Input<int> deleteAfterDaysSinceCreationGreaterThan;

  /// The age in days after last tier change to the blobs to skip to be archived.
  final pulumi.Input<int> tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;

  /// Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  final pulumi.Input<int> tierToColdAfterDaysSinceCreationGreaterThan;

  /// Creates a new [GetPolicyRuleActionSnapshot].
  /// [changeTierToArchiveAfterDaysSinceCreation] The age in days after creation to tier blob version to archive storage.
  /// [changeTierToCoolAfterDaysSinceCreation] The age in days after creation to tier blob version to cool storage.
  /// [deleteAfterDaysSinceCreationGreaterThan] The age in days after creation to delete the blob snapshot.
  /// [tierToArchiveAfterDaysSinceLastTierChangeGreaterThan] The age in days after last tier change to the blobs to skip to be archived.
  /// [tierToColdAfterDaysSinceCreationGreaterThan] Optional The age in days after creation to cold storage. Supports blob currently at Hot tier.
  GetPolicyRuleActionSnapshot({
    required this.changeTierToArchiveAfterDaysSinceCreation,
    required this.changeTierToCoolAfterDaysSinceCreation,
    required this.deleteAfterDaysSinceCreationGreaterThan,
    required this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    required this.tierToColdAfterDaysSinceCreationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeTierToArchiveAfterDaysSinceCreation':
          changeTierToArchiveAfterDaysSinceCreation,
      'changeTierToCoolAfterDaysSinceCreation':
          changeTierToCoolAfterDaysSinceCreation,
      'deleteAfterDaysSinceCreationGreaterThan':
          deleteAfterDaysSinceCreationGreaterThan,
      'tierToArchiveAfterDaysSinceLastTierChangeGreaterThan':
          tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
      'tierToColdAfterDaysSinceCreationGreaterThan':
          tierToColdAfterDaysSinceCreationGreaterThan,
    };
  }

  factory GetPolicyRuleActionSnapshot.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleActionSnapshot(
      changeTierToArchiveAfterDaysSinceCreation: pulumi.Input.fromValue(
        map['changeTierToArchiveAfterDaysSinceCreation'] as int,
      ),
      changeTierToCoolAfterDaysSinceCreation: pulumi.Input.fromValue(
        map['changeTierToCoolAfterDaysSinceCreation'] as int,
      ),
      deleteAfterDaysSinceCreationGreaterThan: pulumi.Input.fromValue(
        map['deleteAfterDaysSinceCreationGreaterThan'] as int,
      ),
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan:
          pulumi.Input.fromValue(
            map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan'] as int,
          ),
      tierToColdAfterDaysSinceCreationGreaterThan: pulumi.Input.fromValue(
        map['tierToColdAfterDaysSinceCreationGreaterThan'] as int,
      ),
    );
  }
}
