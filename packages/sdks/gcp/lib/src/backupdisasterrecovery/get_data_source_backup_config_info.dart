// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_backup_config_info_backup_appliance_backup_config.dart';
import 'get_data_source_backup_config_info_gcp_backup_config.dart';

class GetDataSourceBackupConfigInfo {
  /// Configuration for an application backed up by a Backup Appliance.
  final pulumi.Input<List<GetDataSourceBackupConfigInfoBackupApplianceBackupConfig>> backupApplianceBackupConfigs;
  /// Configuration for a Google Cloud resource.
  final pulumi.Input<List<GetDataSourceBackupConfigInfoGcpBackupConfig>> gcpBackupConfigs;
  /// If the last backup failed, this field has the error message.
  final pulumi.Input<Map<String, String>> lastBackupError;
  /// LastBackupstate tracks whether the last backup was not yet started, successful, failed, or could not be run because of the lack of permissions.
  final pulumi.Input<String> lastBackupState;
  /// If the last backup were successful, this field has the consistency date.
  final pulumi.Input<String> lastSuccessfulBackupConsistencyTime;

  /// Creates a new [GetDataSourceBackupConfigInfo].
  /// [backupApplianceBackupConfigs] Configuration for an application backed up by a Backup Appliance.
  /// [gcpBackupConfigs] Configuration for a Google Cloud resource.
  /// [lastBackupError] If the last backup failed, this field has the error message.
  /// [lastBackupState] LastBackupstate tracks whether the last backup was not yet started, successful, failed, or could not be run because of the lack of permissions.
  /// [lastSuccessfulBackupConsistencyTime] If the last backup were successful, this field has the consistency date.
  GetDataSourceBackupConfigInfo({
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

