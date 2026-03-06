// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountBlobPropertiesDeleteRetentionPolicy {
  /// Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`.
  final pulumi.Input<int>? days;
  /// Indicates whether permanent deletion of the soft deleted blob versions and snapshots is allowed. Defaults to `false`.
  ///
  /// &gt; **Note:** `permanent_delete_enabled` cannot be set to true if a `restore_policy` block is defined.
  final pulumi.Input<bool>? permanentDeleteEnabled;

  /// Creates a new [AccountBlobPropertiesDeleteRetentionPolicy].
  /// [days] Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`.
  /// [permanentDeleteEnabled] Indicates whether permanent deletion of the soft deleted blob versions and snapshots is allowed. Defaults to `false`.
  const AccountBlobPropertiesDeleteRetentionPolicy({
    this.days,
    this.permanentDeleteEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'permanentDeleteEnabled': ?permanentDeleteEnabled,
    };
  }

  factory AccountBlobPropertiesDeleteRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return AccountBlobPropertiesDeleteRetentionPolicy(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      permanentDeleteEnabled: (() { final guardedValue = map['permanentDeleteEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

