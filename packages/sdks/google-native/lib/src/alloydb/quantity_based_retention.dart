// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetention {
  /// The number of backups to retain.
  final pulumi.Input<int>? count;

  /// Creates a new [QuantityBasedRetention].
  /// [count] The number of backups to retain.
  QuantityBasedRetention({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory QuantityBasedRetention.fromMap(Map<String, dynamic> map) {
    return QuantityBasedRetention(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

