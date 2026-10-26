// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instance_blue_green_deployment_target_instance_ip_address.dart';

class GetDatabaseInstanceBlueGreenDeployment {
  /// Permissible values: "SOURCE" (default) or "TARGET". Changing to "TARGET" triggers the atomic switchover.
  final pulumi.Input<String> activeEnvironment;
  /// Defaults to false. If true, removing the blueGreenDeployment block after switchover automatically deletes the former Blue (Source) instance from GCP.
  final pulumi.Input<bool> deleteOldSourceOnDestroy;
  /// A unique identifier for the blue-green deployment within the project and region.
  final pulumi.Input<String> deploymentName;
  /// Auth Proxy connection string for the former Blue instance post-switchover.
  final pulumi.Input<String> oldSourceInstanceConnectionName;
  /// Renamed GCP identifier of the former Blue (Source) instance post-switchover.
  final pulumi.Input<String> oldSourceInstanceName;
  /// The target database version for Major Version Upgrades (e.g., MYSQL_8_4 or POSTGRES_15).
  final pulumi.Input<String> targetDatabaseVersion;
  /// The Cloud SQL Auth Proxy connection string for the Green instance.
  final pulumi.Input<String> targetInstanceConnectionName;
  /// Standard Cloud SQL IP address list for the Green instance.
  final pulumi.Input<List<GetDatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress>> targetInstanceIpAddresses;
  /// The auto-generated name of the Green instance (e.g., my-prod-mysql-target-xxxx).
  final pulumi.Input<String> targetInstanceName;

  /// Creates a new [GetDatabaseInstanceBlueGreenDeployment].
  /// [activeEnvironment] Permissible values: "SOURCE" (default) or "TARGET". Changing to "TARGET" triggers the atomic switchover.
  /// [deleteOldSourceOnDestroy] Defaults to false. If true, removing the blueGreenDeployment block after switchover automatically deletes the former Blue (Source) instance from GCP.
  /// [deploymentName] A unique identifier for the blue-green deployment within the project and region.
  /// [oldSourceInstanceConnectionName] Auth Proxy connection string for the former Blue instance post-switchover.
  /// [oldSourceInstanceName] Renamed GCP identifier of the former Blue (Source) instance post-switchover.
  /// [targetDatabaseVersion] The target database version for Major Version Upgrades (e.g., MYSQL_8_4 or POSTGRES_15).
  /// [targetInstanceConnectionName] The Cloud SQL Auth Proxy connection string for the Green instance.
  /// [targetInstanceIpAddresses] Standard Cloud SQL IP address list for the Green instance.
  /// [targetInstanceName] The auto-generated name of the Green instance (e.g., my-prod-mysql-target-xxxx).
  const GetDatabaseInstanceBlueGreenDeployment({
    required this.activeEnvironment,
    required this.deleteOldSourceOnDestroy,
    required this.deploymentName,
    required this.oldSourceInstanceConnectionName,
    required this.oldSourceInstanceName,
    required this.targetDatabaseVersion,
    required this.targetInstanceConnectionName,
    required this.targetInstanceIpAddresses,
    required this.targetInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeEnvironment': activeEnvironment,
      'deleteOldSourceOnDestroy': deleteOldSourceOnDestroy,
      'deploymentName': deploymentName,
      'oldSourceInstanceConnectionName': oldSourceInstanceConnectionName,
      'oldSourceInstanceName': oldSourceInstanceName,
      'targetDatabaseVersion': targetDatabaseVersion,
      'targetInstanceConnectionName': targetInstanceConnectionName,
      'targetInstanceIpAddresses': pulumi.Input.mapInputValue<List<GetDatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress>, List<Map<String, dynamic>>>(targetInstanceIpAddresses, (value) => pulumi.Input.encodeList<GetDatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetInstanceName': targetInstanceName,
    };
  }

  factory GetDatabaseInstanceBlueGreenDeployment.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceBlueGreenDeployment(
      activeEnvironment: pulumi.Input.fromValue(map['activeEnvironment'] as String),
      deleteOldSourceOnDestroy: pulumi.Input.fromValue(map['deleteOldSourceOnDestroy'] as bool),
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
      oldSourceInstanceConnectionName: pulumi.Input.fromValue(map['oldSourceInstanceConnectionName'] as String),
      oldSourceInstanceName: pulumi.Input.fromValue(map['oldSourceInstanceName'] as String),
      targetDatabaseVersion: pulumi.Input.fromValue(map['targetDatabaseVersion'] as String),
      targetInstanceConnectionName: pulumi.Input.fromValue(map['targetInstanceConnectionName'] as String),
      targetInstanceIpAddresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress>(map['targetInstanceIpAddresses']!, (value) => GetDatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress.fromMap((value as Map).cast<String, dynamic>()))),
      targetInstanceName: pulumi.Input.fromValue(map['targetInstanceName'] as String),
    );
  }
}
