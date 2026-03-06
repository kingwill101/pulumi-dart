// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountBlobPropertiesRestorePolicy {
  /// Specifies the number of days that the blob can be restored, between `1` and `365` days. This must be less than the `days` specified for `delete_retention_policy`.
  final pulumi.Input<int> days;

  /// Creates a new [AccountBlobPropertiesRestorePolicy].
  /// [days] Specifies the number of days that the blob can be restored, between `1` and `365` days. This must be less than the `days` specified for `delete_retention_policy`.
  const AccountBlobPropertiesRestorePolicy({
    required this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
    };
  }

  factory AccountBlobPropertiesRestorePolicy.fromMap(Map<String, dynamic> map) {
    return AccountBlobPropertiesRestorePolicy(
      days: pulumi.Input.fromValue(map['days'] as int),
    );
  }
}

