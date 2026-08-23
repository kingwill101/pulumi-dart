// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterRestoreBackupdrPitrSource {
  /// The name of the BackupDR data source that this cluster is restore from. It must be of the format "projects/[PROJECT]/locations/[LOCATION]/backupVaults/[VAULT_ID]/dataSources/[DATASOURCE_ID]"
  final pulumi.Input<String> dataSource;
  /// The point in time that this cluster is restored to, in RFC 3339 format.
  final pulumi.Input<String> pointInTime;

  /// Creates a new [ClusterRestoreBackupdrPitrSource].
  /// [dataSource] The name of the BackupDR data source that this cluster is restore from. It must be of the format "projects/[PROJECT]/locations/[LOCATION]/backupVaults/[VAULT_ID]/dataSources/[DATASOURCE_ID]"
  /// [pointInTime] The point in time that this cluster is restored to, in RFC 3339 format.
  const ClusterRestoreBackupdrPitrSource({
    required this.dataSource,
    required this.pointInTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSource': dataSource,
      'pointInTime': pointInTime,
    };
  }

  factory ClusterRestoreBackupdrPitrSource.fromMap(Map<String, dynamic> map) {
    return ClusterRestoreBackupdrPitrSource(
      dataSource: pulumi.Input.fromValue(map['dataSource'] as String),
      pointInTime: pulumi.Input.fromValue(map['pointInTime'] as String),
    );
  }
}
