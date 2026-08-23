// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_sources_data_source_backup_config_info_backup_appliance_backup_config.dart';
import 'get_data_sources_data_source_backup_config_info_gcp_backup_config.dart';

class GetDataSourcesDataSourceBackupConfigInfo {
  /// Configuration for an application backed up by a Backup Appliance.
  final pulumi.Input<List<GetDataSourcesDataSourceBackupConfigInfoBackupApplianceBackupConfig>> backupApplianceBackupConfigs;
  /// Configuration for a Google Cloud resource.
  final pulumi.Input<List<GetDataSourcesDataSourceBackupConfigInfoGcpBackupConfig>> gcpBackupConfigs;
  /// If the last backup failed, this field has the error message.
  final pulumi.Input<Map<String, String>> lastBackupError;
  /// The state of the last backup attempt.
  final pulumi.Input<String> lastBackupState;
  /// The consistency time of the last successful backup.
  final pulumi.Input<String> lastSuccessfulBackupConsistencyTime;

  /// Creates a new [GetDataSourcesDataSourceBackupConfigInfo].
  /// [backupApplianceBackupConfigs] Configuration for an application backed up by a Backup Appliance.
  /// [gcpBackupConfigs] Configuration for a Google Cloud resource.
  /// [lastBackupError] If the last backup failed, this field has the error message.
  /// [lastBackupState] The state of the last backup attempt.
  /// [lastSuccessfulBackupConsistencyTime] The consistency time of the last successful backup.
  const GetDataSourcesDataSourceBackupConfigInfo({
    required this.backupApplianceBackupConfigs,
    required this.gcpBackupConfigs,
    required this.lastBackupError,
    required this.lastBackupState,
    required this.lastSuccessfulBackupConsistencyTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupApplianceBackupConfigs': pulumi.Input.mapInputValue<List<GetDataSourcesDataSourceBackupConfigInfoBackupApplianceBackupConfig>, List<Map<String, dynamic>>>(backupApplianceBackupConfigs, (value) => pulumi.Input.encodeList<GetDataSourcesDataSourceBackupConfigInfoBackupApplianceBackupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcpBackupConfigs': pulumi.Input.mapInputValue<List<GetDataSourcesDataSourceBackupConfigInfoGcpBackupConfig>, List<Map<String, dynamic>>>(gcpBackupConfigs, (value) => pulumi.Input.encodeList<GetDataSourcesDataSourceBackupConfigInfoGcpBackupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastBackupError': lastBackupError,
      'lastBackupState': lastBackupState,
      'lastSuccessfulBackupConsistencyTime': lastSuccessfulBackupConsistencyTime,
    };
  }

  factory GetDataSourcesDataSourceBackupConfigInfo.fromMap(Map<String, dynamic> map) {
    return GetDataSourcesDataSourceBackupConfigInfo(
      backupApplianceBackupConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSourcesDataSourceBackupConfigInfoBackupApplianceBackupConfig>(map['backupApplianceBackupConfigs']!, (value) => GetDataSourcesDataSourceBackupConfigInfoBackupApplianceBackupConfig.fromMap((value as Map).cast<String, dynamic>()))),
      gcpBackupConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSourcesDataSourceBackupConfigInfoGcpBackupConfig>(map['gcpBackupConfigs']!, (value) => GetDataSourcesDataSourceBackupConfigInfoGcpBackupConfig.fromMap((value as Map).cast<String, dynamic>()))),
      lastBackupError: pulumi.Input.fromValue((map['lastBackupError'] as Map).cast<String, String>()),
      lastBackupState: pulumi.Input.fromValue(map['lastBackupState'] as String),
      lastSuccessfulBackupConsistencyTime: pulumi.Input.fromValue(map['lastSuccessfulBackupConsistencyTime'] as String),
    );
  }
}
