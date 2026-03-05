// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSourceDataSourceBackupApplianceApplication {
  /// Appliance Id of the Backup Appliance.
  final pulumi.Input<String> applianceId;
  /// The appid field of the application within the Backup Appliance.
  final pulumi.Input<String> applicationId;
  /// The name of the Application as known to the Backup Appliance.
  final pulumi.Input<String> applicationName;
  /// Appliance name.
  final pulumi.Input<String> backupAppliance;
  /// Hostid of the application host.
  final pulumi.Input<String> hostId;
  /// Hostname of the host where the application is running.
  final pulumi.Input<String> hostname;
  /// The type of the application. e.g. VMBackup
  final pulumi.Input<String> type;

  /// Creates a new [GetDataSourceDataSourceBackupApplianceApplication].
  /// [applianceId] Appliance Id of the Backup Appliance.
  /// [applicationId] The appid field of the application within the Backup Appliance.
  /// [applicationName] The name of the Application as known to the Backup Appliance.
  /// [backupAppliance] Appliance name.
  /// [hostId] Hostid of the application host.
  /// [hostname] Hostname of the host where the application is running.
  /// [type] The type of the application. e.g. VMBackup
  GetDataSourceDataSourceBackupApplianceApplication({
    required this.applianceId,
    required this.applicationId,
    required this.applicationName,
    required this.backupAppliance,
    required this.hostId,
    required this.hostname,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceId': applianceId,
      'applicationId': applicationId,
      'applicationName': applicationName,
      'backupAppliance': backupAppliance,
      'hostId': hostId,
      'hostname': hostname,
      'type': type,
    };
  }

  factory GetDataSourceDataSourceBackupApplianceApplication.fromMap(Map<String, dynamic> map) {
    return GetDataSourceDataSourceBackupApplianceApplication(
      applianceId: pulumi.Input.fromValue(map['applianceId'] as String),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      backupAppliance: pulumi.Input.fromValue(map['backupAppliance'] as String),
      hostId: pulumi.Input.fromValue(map['hostId'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

