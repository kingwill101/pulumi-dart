// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountSharePropertiesRetentionPolicy {
  /// Specifies the number of days that the `azure.storage.Share` should be retained, between `1` and `365` days. Defaults to `7`.
  final pulumi.Input<int>? days;

  /// Creates a new [AccountSharePropertiesRetentionPolicy].
  /// [days] Specifies the number of days that the `azure.storage.Share` should be retained, between `1` and `365` days. Defaults to `7`.
  AccountSharePropertiesRetentionPolicy({
    this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
    };
  }

  factory AccountSharePropertiesRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return AccountSharePropertiesRetentionPolicy(
      days: map['days'] == null ? null : (map['days']! as int).input(),
    );
  }
}

