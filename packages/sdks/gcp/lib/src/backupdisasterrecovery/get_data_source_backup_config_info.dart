// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_backup_config_info_backup_appliance_backup_config.dart';
import 'get_data_source_backup_config_info_gcp_backup_config.dart';

class GetDataSourceBackupConfigInfo {
  /// Configuration for an application backed up by a Backup Appliance.
  final pulumi.Input<List<GetDataSourceBackupConfigInfoBackupApplianceBackupConfig>> backupApplianceBackupConfigs;
  /// Details about the GCP backup configuration. Structure is documented below.
  /// The `gcpBackupConfig` block contains:
  final pulumi.Input<List<GetDataSourceBackupConfigInfoGcpBackupConfig>> gcpBackupConfigs;
  /// If the last backup failed, this field has the error message.
  final pulumi.Input<Map<String, String>> lastBackupError;
  /// The state of the last backup attempt.
  final pulumi.Input<String> lastBackupState;
  /// The consistency time of the last successful backup.
  final pulumi.Input<String> lastSuccessfulBackupConsistencyTime;

  /// Creates a new [GetDataSourceBackupConfigInfo].
  /// [backupApplianceBackupConfigs] Configuration for an application backed up by a Backup Appliance.
  /// [gcpBackupConfigs] Details about the GCP backup configuration. Structure is documented below.
  /// [lastBackupError] If the last backup failed, this field has the error message.
  /// [lastBackupState] The state of the last backup attempt.
  /// [lastSuccessfulBackupConsistencyTime] The consistency time of the last successful backup.
  const GetDataSourceBackupConfigInfo({
    required this.backupApplianceBackupConfigs,
    required this.gcpBackupConfigs,
    required this.lastBackupError,
    required this.lastBackupState,
    required this.lastSuccessfulBackupConsistencyTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupApplianceBackupConfigs': pulumi.Input.mapInputValue<List<GetDataSourceBackupConfigInfoBackupApplianceBackupConfig>, List<Map<String, dynamic>>>(backupApplianceBackupConfigs, (value) => pulumi.Input.encodeList<GetDataSourceBackupConfigInfoBackupApplianceBackupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcpBackupConfigs': pulumi.Input.mapInputValue<List<GetDataSourceBackupConfigInfoGcpBackupConfig>, List<Map<String, dynamic>>>(gcpBackupConfigs, (value) => pulumi.Input.encodeList<GetDataSourceBackupConfigInfoGcpBackupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastBackupError': lastBackupError,
      'lastBackupState': lastBackupState,
      'lastSuccessfulBackupConsistencyTime': lastSuccessfulBackupConsistencyTime,
    };
  }

  factory GetDataSourceBackupConfigInfo.fromMap(Map<String, dynamic> map) {
    return GetDataSourceBackupConfigInfo(
      backupApplianceBackupConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSourceBackupConfigInfoBackupApplianceBackupConfig>(map['backupApplianceBackupConfigs']!, (value) => GetDataSourceBackupConfigInfoBackupApplianceBackupConfig.fromMap((value as Map).cast<String, dynamic>()))),
      gcpBackupConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSourceBackupConfigInfoGcpBackupConfig>(map['gcpBackupConfigs']!, (value) => GetDataSourceBackupConfigInfoGcpBackupConfig.fromMap((value as Map).cast<String, dynamic>()))),
      lastBackupError: pulumi.Input.fromValue((map['lastBackupError'] as Map).cast<String, String>()),
      lastBackupState: pulumi.Input.fromValue(map['lastBackupState'] as String),
      lastSuccessfulBackupConsistencyTime: pulumi.Input.fromValue(map['lastSuccessfulBackupConsistencyTime'] as String),
    );
  }
}
