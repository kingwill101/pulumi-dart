// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagementPolicyRuleActionsVersion {
  /// The age in days after creation to tier blob version to archive storage. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? changeTierToArchiveAfterDaysSinceCreation;
  /// The age in days creation create to tier blob version to cool storage. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? changeTierToCoolAfterDaysSinceCreation;
  /// The age in days after creation to delete the blob version. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? deleteAfterDaysSinceCreation;
  /// The age in days after last tier change to the blobs to skip to be archived. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;
  /// The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? tierToColdAfterDaysSinceCreationGreaterThan;

  /// Creates a new [ManagementPolicyRuleActionsVersion].
  /// [changeTierToArchiveAfterDaysSinceCreation] The age in days after creation to tier blob version to archive storage. Must be between `0` and `99999`. Defaults to `-1`.
  /// [changeTierToCoolAfterDaysSinceCreation] The age in days creation create to tier blob version to cool storage. Must be between `0` and `99999`. Defaults to `-1`.
  /// [deleteAfterDaysSinceCreation] The age in days after creation to delete the blob version. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceLastTierChangeGreaterThan] The age in days after last tier change to the blobs to skip to be archived. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToColdAfterDaysSinceCreationGreaterThan] The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  ManagementPolicyRuleActionsVersion({
    this.changeTierToArchiveAfterDaysSinceCreation,
    this.changeTierToCoolAfterDaysSinceCreation,
    this.deleteAfterDaysSinceCreation,
    this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    this.tierToColdAfterDaysSinceCreationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeTierToArchiveAfterDaysSinceCreation': ?changeTierToArchiveAfterDaysSinceCreation,
      'changeTierToCoolAfterDaysSinceCreation': ?changeTierToCoolAfterDaysSinceCreation,
      'deleteAfterDaysSinceCreation': ?deleteAfterDaysSinceCreation,
      'tierToArchiveAfterDaysSinceLastTierChangeGreaterThan': ?tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
      'tierToColdAfterDaysSinceCreationGreaterThan': ?tierToColdAfterDaysSinceCreationGreaterThan,
    };
  }

  factory ManagementPolicyRuleActionsVersion.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleActionsVersion(
      changeTierToArchiveAfterDaysSinceCreation: (() { final guardedValue = map['changeTierToArchiveAfterDaysSinceCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      changeTierToCoolAfterDaysSinceCreation: (() { final guardedValue = map['changeTierToCoolAfterDaysSinceCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deleteAfterDaysSinceCreation: (() { final guardedValue = map['deleteAfterDaysSinceCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan: (() { final guardedValue = map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToColdAfterDaysSinceCreationGreaterThan: (() { final guardedValue = map['tierToColdAfterDaysSinceCreationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

