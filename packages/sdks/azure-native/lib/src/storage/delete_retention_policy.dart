// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The service properties for soft delete.
class DeleteRetentionPolicy {
  /// This property when set to true allows deletion of the soft deleted blob versions and snapshots. This property cannot be used blob restore policy. This property only applies to blob service and does not apply to containers or file share.
  final pulumi.Input<bool>? allowPermanentDelete;

  /// Indicates the number of days that the deleted item should be retained. The minimum specified value can be 1 and the maximum value can be 365.
  final pulumi.Input<int>? days;

  /// Indicates whether DeleteRetentionPolicy is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DeleteRetentionPolicy].
  /// [allowPermanentDelete] This property when set to true allows deletion of the soft deleted blob versions and snapshots. This property cannot be used blob restore policy. This property only applies to blob service and does not apply to containers or file share.
  /// [days] Indicates the number of days that the deleted item should be retained. The minimum specified value can be 1 and the maximum value can be 365.
  /// [enabled] Indicates whether DeleteRetentionPolicy is enabled.
  DeleteRetentionPolicy({this.allowPermanentDelete, this.days, this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPermanentDelete': ?allowPermanentDelete,
      'days': ?days,
      'enabled': ?enabled,
    };
  }

  factory DeleteRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return DeleteRetentionPolicy(
      allowPermanentDelete: (() {
        final guardedValue = map['allowPermanentDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      days: (() {
        final guardedValue = map['days'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
