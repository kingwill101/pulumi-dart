// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseSourceConfig {
  /// This field specifies if the replication of automatic backups is enabled when creating a Data Guard.
  final pulumi.Input<bool>? automaticBackupsReplicationEnabled;
  /// The name of the primary Autonomous Database that is used to create a Peer Autonomous Database from a source.
  final pulumi.Input<String>? autonomousDatabase;

  /// Creates a new [AutonomousDatabaseSourceConfig].
  /// [automaticBackupsReplicationEnabled] This field specifies if the replication of automatic backups is enabled when creating a Data Guard.
  /// [autonomousDatabase] The name of the primary Autonomous Database that is used to create a Peer Autonomous Database from a source.
  AutonomousDatabaseSourceConfig({
    this.automaticBackupsReplicationEnabled,
    this.autonomousDatabase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticBackupsReplicationEnabled': ?automaticBackupsReplicationEnabled,
      'autonomousDatabase': ?autonomousDatabase,
    };
  }

  factory AutonomousDatabaseSourceConfig.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSourceConfig(
      automaticBackupsReplicationEnabled: map['automaticBackupsReplicationEnabled'] == null ? null : (map['automaticBackupsReplicationEnabled']! as bool).input(),
      autonomousDatabase: map['autonomousDatabase'] == null ? null : (map['autonomousDatabase']! as String).input(),
    );
  }
}

