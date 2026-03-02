// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetentionAlloydbV1beta {
  /// The number of backups to retain.
  final pulumi.Input<int>? count;

  /// Creates a new [QuantityBasedRetentionAlloydbV1beta].
  /// [count] The number of backups to retain.
  QuantityBasedRetentionAlloydbV1beta({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory QuantityBasedRetentionAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return QuantityBasedRetentionAlloydbV1beta(
      count: map['count'] == null ? null : (map['count'] as int).input(),
    );
  }
}

