// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountBlobPropertiesContainerDeleteRetentionPolicy {
  /// Specifies the number of days that the container should be retained, between `1` and `365` days. Defaults to `7`.
  final pulumi.Input<int>? days;

  /// Creates a new [AccountBlobPropertiesContainerDeleteRetentionPolicy].
  /// [days] Specifies the number of days that the container should be retained, between `1` and `365` days. Defaults to `7`.
  AccountBlobPropertiesContainerDeleteRetentionPolicy({
    this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
    };
  }

  factory AccountBlobPropertiesContainerDeleteRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return AccountBlobPropertiesContainerDeleteRetentionPolicy(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

