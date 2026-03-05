// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagementPolicyRuleActionsBaseBlob {
  /// Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool. Defaults to `false`.
  ///
  /// &gt; **Note:** The `auto_tier_to_hot_from_cool_enabled` must be used together with `tier_to_cool_after_days_since_last_access_time_greater_than`.
  final pulumi.Input<bool>? autoTierToHotFromCoolEnabled;
  /// The age in days after creation to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  ///
  /// &gt; **Note:** The `delete_after_days_since_modification_greater_than`, `delete_after_days_since_last_access_time_greater_than` and `delete_after_days_since_creation_greater_than` can not be set at the same time.
  ///
  /// &gt; **Note:** The `last_access_time_enabled` must be set to `true` in the `azure.storage.Account` in order to use `tier_to_cool_after_days_since_last_access_time_greater_than`, `tier_to_archive_after_days_since_last_access_time_greater_than` and `delete_after_days_since_last_access_time_greater_than`.
  final pulumi.Input<int>? deleteAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? deleteAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? deleteAfterDaysSinceModificationGreaterThan;
  /// The age in days after creation to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  ///
  /// &gt; **Note:** The `tier_to_archive_after_days_since_modification_greater_than`, `tier_to_archive_after_days_since_last_access_time_greater_than` and `tier_to_archive_after_days_since_creation_greater_than` can not be set at the same time.
  final pulumi.Input<int>? tierToArchiveAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last tier change to the blobs to skip to be archived. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;
  /// The age in days after last modification to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? tierToArchiveAfterDaysSinceModificationGreaterThan;
  /// The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  ///
  /// &gt; **Note:** The `tier_to_cool_after_days_since_modification_greater_than`, `tier_to_cool_after_days_since_last_access_time_greater_than` and `tier_to_cool_after_days_since_creation_greater_than` can not be set at the same time.
  final pulumi.Input<int>? tierToColdAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? tierToColdAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? tierToColdAfterDaysSinceModificationGreaterThan;
  /// The age in days after creation to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  ///
  /// &gt; **Note:** The `tier_to_cool_after_days_since_modification_greater_than`, `tier_to_cool_after_days_since_last_access_time_greater_than` and `tier_to_cool_after_days_since_creation_greater_than` can not be set at the same time.
  final pulumi.Input<int>? tierToCoolAfterDaysSinceCreationGreaterThan;
  /// The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? tierToCoolAfterDaysSinceLastAccessTimeGreaterThan;
  /// The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  final pulumi.Input<int>? tierToCoolAfterDaysSinceModificationGreaterThan;

  /// Creates a new [ManagementPolicyRuleActionsBaseBlob].
  /// [autoTierToHotFromCoolEnabled] Whether a blob should automatically be tiered from cool back to hot if it's accessed again after being tiered to cool. Defaults to `false`.
  /// [deleteAfterDaysSinceCreationGreaterThan] The age in days after creation to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  /// [deleteAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  /// [deleteAfterDaysSinceModificationGreaterThan] The age in days after last modification to delete the blob. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceCreationGreaterThan] The age in days after creation to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceLastTierChangeGreaterThan] The age in days after last tier change to the blobs to skip to be archived. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToArchiveAfterDaysSinceModificationGreaterThan] The age in days after last modification to tier blobs to archive storage. Supports blob currently at Hot or Cool tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToColdAfterDaysSinceCreationGreaterThan] The age in days after creation to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToColdAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToColdAfterDaysSinceModificationGreaterThan] The age in days after last modification to tier blobs to cold storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToCoolAfterDaysSinceCreationGreaterThan] The age in days after creation to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToCoolAfterDaysSinceLastAccessTimeGreaterThan] The age in days after last access time to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  /// [tierToCoolAfterDaysSinceModificationGreaterThan] The age in days after last modification to tier blobs to cool storage. Supports blob currently at Hot tier. Must be between `0` and `99999`. Defaults to `-1`.
  ManagementPolicyRuleActionsBaseBlob({
    this.autoTierToHotFromCoolEnabled,
    this.deleteAfterDaysSinceCreationGreaterThan,
    this.deleteAfterDaysSinceLastAccessTimeGreaterThan,
    this.deleteAfterDaysSinceModificationGreaterThan,
    this.tierToArchiveAfterDaysSinceCreationGreaterThan,
    this.tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan,
    this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    this.tierToArchiveAfterDaysSinceModificationGreaterThan,
    this.tierToColdAfterDaysSinceCreationGreaterThan,
    this.tierToColdAfterDaysSinceLastAccessTimeGreaterThan,
    this.tierToColdAfterDaysSinceModificationGreaterThan,
    this.tierToCoolAfterDaysSinceCreationGreaterThan,
    this.tierToCoolAfterDaysSinceLastAccessTimeGreaterThan,
    this.tierToCoolAfterDaysSinceModificationGreaterThan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoTierToHotFromCoolEnabled': ?autoTierToHotFromCoolEnabled,
      'deleteAfterDaysSinceCreationGreaterThan': ?deleteAfterDaysSinceCreationGreaterThan,
      'deleteAfterDaysSinceLastAccessTimeGreaterThan': ?deleteAfterDaysSinceLastAccessTimeGreaterThan,
      'deleteAfterDaysSinceModificationGreaterThan': ?deleteAfterDaysSinceModificationGreaterThan,
      'tierToArchiveAfterDaysSinceCreationGreaterThan': ?tierToArchiveAfterDaysSinceCreationGreaterThan,
      'tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan': ?tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan,
      'tierToArchiveAfterDaysSinceLastTierChangeGreaterThan': ?tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
      'tierToArchiveAfterDaysSinceModificationGreaterThan': ?tierToArchiveAfterDaysSinceModificationGreaterThan,
      'tierToColdAfterDaysSinceCreationGreaterThan': ?tierToColdAfterDaysSinceCreationGreaterThan,
      'tierToColdAfterDaysSinceLastAccessTimeGreaterThan': ?tierToColdAfterDaysSinceLastAccessTimeGreaterThan,
      'tierToColdAfterDaysSinceModificationGreaterThan': ?tierToColdAfterDaysSinceModificationGreaterThan,
      'tierToCoolAfterDaysSinceCreationGreaterThan': ?tierToCoolAfterDaysSinceCreationGreaterThan,
      'tierToCoolAfterDaysSinceLastAccessTimeGreaterThan': ?tierToCoolAfterDaysSinceLastAccessTimeGreaterThan,
      'tierToCoolAfterDaysSinceModificationGreaterThan': ?tierToCoolAfterDaysSinceModificationGreaterThan,
    };
  }

  factory ManagementPolicyRuleActionsBaseBlob.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleActionsBaseBlob(
      autoTierToHotFromCoolEnabled: (() { final guardedValue = map['autoTierToHotFromCoolEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteAfterDaysSinceCreationGreaterThan: (() { final guardedValue = map['deleteAfterDaysSinceCreationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deleteAfterDaysSinceLastAccessTimeGreaterThan: (() { final guardedValue = map['deleteAfterDaysSinceLastAccessTimeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deleteAfterDaysSinceModificationGreaterThan: (() { final guardedValue = map['deleteAfterDaysSinceModificationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToArchiveAfterDaysSinceCreationGreaterThan: (() { final guardedValue = map['tierToArchiveAfterDaysSinceCreationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan: (() { final guardedValue = map['tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToArchiveAfterDaysSinceLastTierChangeGreaterThan: (() { final guardedValue = map['tierToArchiveAfterDaysSinceLastTierChangeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToArchiveAfterDaysSinceModificationGreaterThan: (() { final guardedValue = map['tierToArchiveAfterDaysSinceModificationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToColdAfterDaysSinceCreationGreaterThan: (() { final guardedValue = map['tierToColdAfterDaysSinceCreationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToColdAfterDaysSinceLastAccessTimeGreaterThan: (() { final guardedValue = map['tierToColdAfterDaysSinceLastAccessTimeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToColdAfterDaysSinceModificationGreaterThan: (() { final guardedValue = map['tierToColdAfterDaysSinceModificationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToCoolAfterDaysSinceCreationGreaterThan: (() { final guardedValue = map['tierToCoolAfterDaysSinceCreationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToCoolAfterDaysSinceLastAccessTimeGreaterThan: (() { final guardedValue = map['tierToCoolAfterDaysSinceLastAccessTimeGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tierToCoolAfterDaysSinceModificationGreaterThan: (() { final guardedValue = map['tierToCoolAfterDaysSinceModificationGreaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

