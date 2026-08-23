// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSourceBackupConfigInfoBackupApplianceBackupConfig {
  /// The name of the application.
  final pulumi.Input<String> applicationName;
  /// The ID of the backup appliance.
  final pulumi.Input<String> backupApplianceId;
  /// The name of the backup appliance.
  final pulumi.Input<String> backupApplianceName;
  /// The name of the host where the application is running.
  final pulumi.Input<String> hostName;
  /// The ID of the SLA of this application.
  final pulumi.Input<String> slaId;
  /// The name of the SLP associated with the application.
  final pulumi.Input<String> slpName;
  /// The name of the SLT associated with the application.
  final pulumi.Input<String> sltName;

  /// Creates a new [GetDataSourceBackupConfigInfoBackupApplianceBackupConfig].
  /// [applicationName] The name of the application.
  /// [backupApplianceId] The ID of the backup appliance.
  /// [backupApplianceName] The name of the backup appliance.
  /// [hostName] The name of the host where the application is running.
  /// [slaId] The ID of the SLA of this application.
  /// [slpName] The name of the SLP associated with the application.
  /// [sltName] The name of the SLT associated with the application.
  const GetDataSourceBackupConfigInfoBackupApplianceBackupConfig({
    required this.applicationName,
    required this.backupApplianceId,
    required this.backupApplianceName,
    required this.hostName,
    required this.slaId,
    required this.slpName,
    required this.sltName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'backupApplianceId': backupApplianceId,
      'backupApplianceName': backupApplianceName,
      'hostName': hostName,
      'slaId': slaId,
      'slpName': slpName,
      'sltName': sltName,
    };
  }

  factory GetDataSourceBackupConfigInfoBackupApplianceBackupConfig.fromMap(Map<String, dynamic> map) {
    return GetDataSourceBackupConfigInfoBackupApplianceBackupConfig(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      backupApplianceId: pulumi.Input.fromValue(map['backupApplianceId'] as String),
      backupApplianceName: pulumi.Input.fromValue(map['backupApplianceName'] as String),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      slaId: pulumi.Input.fromValue(map['slaId'] as String),
      slpName: pulumi.Input.fromValue(map['slpName'] as String),
      sltName: pulumi.Input.fromValue(map['sltName'] as String),
    );
  }
}
