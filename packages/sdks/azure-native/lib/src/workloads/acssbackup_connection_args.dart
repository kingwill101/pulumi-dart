// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hana_backup_data.dart';

/// {@template pulumi_workloads_acssbackup_connection_args_doc}
/// The set of arguments for ACSSBackupConnection.
/// {@endtemplate}
/// {@macro pulumi_workloads_acssbackup_connection_args_doc}
class ACSSBackupConnectionArgs {
  /// Information about the recovery services vault and backup policy used for backup.
  final pulumi.Input<HanaBackupData>? backupData;
  /// The name of the backup connection resource of virtual instance for SAP.
  final pulumi.Input<String>? backupName;
  /// The name of the connector resource
  final pulumi.Input<String> connectorName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ACSSBackupConnectionArgs].
  /// [backupData] Information about the recovery services vault and backup policy used for backup.
  /// [backupName] The name of the backup connection resource of virtual instance for SAP.
  /// [connectorName] The name of the connector resource
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ACSSBackupConnectionArgs({
    this.backupData,
    this.backupName,
    required this.connectorName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupData': ?pulumi.Input.mapOptionalInputValue<HanaBackupData, Map<String, dynamic>>(backupData, (value) => value.toMap()),
      'backupName': ?backupName,
      'connectorName': connectorName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ACSSBackupConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ACSSBackupConnectionArgs(
      backupData: map['backupData'] == null ? null : (HanaBackupData.fromMap((map['backupData']! as Map).cast<String, dynamic>())).input(),
      backupName: map['backupName'] == null ? null : (map['backupName']! as String).input(),
      connectorName: (map['connectorName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

