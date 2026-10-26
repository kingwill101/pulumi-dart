// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A quantity based policy specifies that a certain number of the most recent successful backups should be retained.
class QuantityBasedRetentionResponse {
  /// The number of backups to retain.
  final pulumi.Input<int> count;

  /// Creates a new [QuantityBasedRetentionResponse].
  /// [count] The number of backups to retain.
  const QuantityBasedRetentionResponse({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory QuantityBasedRetentionResponse.fromMap(Map<String, dynamic> map) {
    return QuantityBasedRetentionResponse(
      count: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['count'])),
    );
  }
}
