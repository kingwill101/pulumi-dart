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
    pulumi.Output<HanaBackupData>? backupData,
    pulumi.Output<String>? backupName,
    required pulumi.Output<String> connectorName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      backupData = pulumi.Input.asOptionalInput<HanaBackupData>(backupData),
      backupName = pulumi.Input.asOptionalInput<String>(backupName),
      connectorName = pulumi.Input.asInput<String>(connectorName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      backupData: map['backupData'] == null ? null : pulumi.Output.create<HanaBackupData>(HanaBackupData.fromMap((map['backupData'] as Map).cast<String, dynamic>())),
      backupName: map['backupName'] == null ? null : pulumi.Output.create<String>(map['backupName'] as String),
      connectorName: pulumi.Output.create<String>(map['connectorName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

