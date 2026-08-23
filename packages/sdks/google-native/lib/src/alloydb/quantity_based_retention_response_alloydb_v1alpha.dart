// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetentionResponseAlloydbV1alpha {
  /// The number of backups to retain.
  final pulumi.Input<int> count;

  /// Creates a new [QuantityBasedRetentionResponseAlloydbV1alpha].
  /// [count] The number of backups to retain.
  const QuantityBasedRetentionResponseAlloydbV1alpha({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory QuantityBasedRetentionResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return QuantityBasedRetentionResponseAlloydbV1alpha(
      count: pulumi.Input.fromValue(map['count'] as int),
    );
  }
}
