// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnapshotRecycleBinPolicySystemRuleStandardSnapshot {
  /// The retention duration for snapshots in the recycle bin after which the
  /// snapshots are automatically deleted from recycle bin.
  final pulumi.Input<int?>? retentionDurationDays;

  /// Creates a new [SnapshotRecycleBinPolicySystemRuleStandardSnapshot].
  /// [retentionDurationDays] The retention duration for snapshots in the recycle bin after which the
  const SnapshotRecycleBinPolicySystemRuleStandardSnapshot({
    this.retentionDurationDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDurationDays': ?retentionDurationDays,
    };
  }

  factory SnapshotRecycleBinPolicySystemRuleStandardSnapshot.fromMap(Map<String, dynamic> map) {
    return SnapshotRecycleBinPolicySystemRuleStandardSnapshot(
      retentionDurationDays: (() { final guardedValue = map['retentionDurationDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
