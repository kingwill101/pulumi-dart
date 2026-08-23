// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableAutomatedBackupPolicy {
  /// How frequently automated backups should occur.
  final pulumi.Input<String>? frequency;
  /// A list of Cloud Bigtable zones where automated backups are allowed to be created. If empty, automated backups will be created in all zones of the instance. Locations are in the format projects/{project}/locations/{zone}. This field can only be set for tables in Enterprise Plus instances.
  final pulumi.Input<List<String>>? locations;
  /// How long the automated backups should be retained.
  final pulumi.Input<String>? retentionPeriod;

  /// Creates a new [TableAutomatedBackupPolicy].
  /// [frequency] How frequently automated backups should occur.
  /// [locations] A list of Cloud Bigtable zones where automated backups are allowed to be created. If empty, automated backups will be created in all zones of the instance. Locations are in the format projects/{project}/locations/{zone}. This field can only be set for tables in Enterprise Plus instances.
  /// [retentionPeriod] How long the automated backups should be retained.
  const TableAutomatedBackupPolicy({
    this.frequency,
    this.locations,
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'locations': ?locations,
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory TableAutomatedBackupPolicy.fromMap(Map<String, dynamic> map) {
    return TableAutomatedBackupPolicy(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
