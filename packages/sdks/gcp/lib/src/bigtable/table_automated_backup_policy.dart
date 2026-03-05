// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableAutomatedBackupPolicy {
  /// How frequently automated backups should occur.
  final pulumi.Input<String>? frequency;
  /// How long the automated backups should be retained.
  final pulumi.Input<String>? retentionPeriod;

  /// Creates a new [TableAutomatedBackupPolicy].
  /// [frequency] How frequently automated backups should occur.
  /// [retentionPeriod] How long the automated backups should be retained.
  TableAutomatedBackupPolicy({
    this.frequency,
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory TableAutomatedBackupPolicy.fromMap(Map<String, dynamic> map) {
    return TableAutomatedBackupPolicy(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

