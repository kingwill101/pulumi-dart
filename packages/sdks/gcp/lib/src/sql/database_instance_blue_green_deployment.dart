// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_blue_green_deployment_target_instance_ip_address.dart';

class DatabaseInstanceBlueGreenDeployment {
  /// Controls which environment is currently serving primary traffic. Valid values are `SOURCE` and `TARGET`. Defaults to `SOURCE`. Must be `SOURCE` when first creating a Blue-Green Deployment; changing this field from `SOURCE` to `TARGET` triggers the Blue-Green Deployment switchover.
  final pulumi.Input<String?>? activeEnvironment;
  /// Whether to also delete the old source (blue) instance when deleting the Blue-Green Deployment after a switchover (`activeEnvironment = "TARGET"`). Defaults to `false`.
  final pulumi.Input<bool?>? deleteOldSourceOnDestroy;
  /// The user-defined name for the Blue-Green Deployment. Must be 1-63 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens. Cannot be changed while the deployment is active.
  final pulumi.Input<String> deploymentName;
  /// The connection name of the old source (blue) instance, populated after switchover (`activeEnvironment = "TARGET"`).
  final pulumi.Input<String?>? oldSourceInstanceConnectionName;
  /// The name of the old source (blue) instance, populated after switchover (`activeEnvironment = "TARGET"`).
  final pulumi.Input<String?>? oldSourceInstanceName;
  /// The target database version for the green environment (for example, `MYSQL_8_0` or `POSTGRES_16`). If omitted, the green environment inherits the source instance's `databaseVersion`. Cannot be changed while the deployment is active.
  final pulumi.Input<String?>? targetDatabaseVersion;
  /// The connection name of the green (target) instance.
  final pulumi.Input<String?>? targetInstanceConnectionName;
  /// The IP addresses assigned to the green (target) instance. Structure is documented below.
  final pulumi.Input<List<DatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress>?>? targetInstanceIpAddresses;
  /// The name of the green (target) instance created for the Blue-Green Deployment.
  final pulumi.Input<String?>? targetInstanceName;

  /// Creates a new [DatabaseInstanceBlueGreenDeployment].
  /// [activeEnvironment] Controls which environment is currently serving primary traffic. Valid values are `SOURCE` and `TARGET`. Defaults to `SOURCE`. Must be `SOURCE` when first creating a Blue-Green Deployment; changing this field from `SOURCE` to `TARGET` triggers the Blue-Green Deployment switchover.
  /// [deleteOldSourceOnDestroy] Whether to also delete the old source (blue) instance when deleting the Blue-Green Deployment after a switchover (`activeEnvironment = "TARGET"`). Defaults to `false`.
  /// [deploymentName] The user-defined name for the Blue-Green Deployment. Must be 1-63 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens. Cannot be changed while the deployment is active.
  /// [oldSourceInstanceConnectionName] The connection name of the old source (blue) instance, populated after switchover (`activeEnvironment = "TARGET"`).
  /// [oldSourceInstanceName] The name of the old source (blue) instance, populated after switchover (`activeEnvironment = "TARGET"`).
  /// [targetDatabaseVersion] The target database version for the green environment (for example, `MYSQL_8_0` or `POSTGRES_16`). If omitted, the green environment inherits the source instance's `databaseVersion`. Cannot be changed while the deployment is active.
  /// [targetInstanceConnectionName] The connection name of the green (target) instance.
  /// [targetInstanceIpAddresses] The IP addresses assigned to the green (target) instance. Structure is documented below.
  /// [targetInstanceName] The name of the green (target) instance created for the Blue-Green Deployment.
  const DatabaseInstanceBlueGreenDeployment({
    this.activeEnvironment,
    this.deleteOldSourceOnDestroy,
    required this.deploymentName,
    this.oldSourceInstanceConnectionName,
    this.oldSourceInstanceName,
    this.targetDatabaseVersion,
    this.targetInstanceConnectionName,
    this.targetInstanceIpAddresses,
    this.targetInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeEnvironment': ?activeEnvironment,
      'deleteOldSourceOnDestroy': ?deleteOldSourceOnDestroy,
      'deploymentName': deploymentName,
      'oldSourceInstanceConnectionName': ?oldSourceInstanceConnectionName,
      'oldSourceInstanceName': ?oldSourceInstanceName,
      'targetDatabaseVersion': ?targetDatabaseVersion,
      'targetInstanceConnectionName': ?targetInstanceConnectionName,
      'targetInstanceIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<DatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress>, List<Map<String, dynamic>>>(targetInstanceIpAddresses, (value) => pulumi.Input.encodeList<DatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetInstanceName': ?targetInstanceName,
    };
  }

  factory DatabaseInstanceBlueGreenDeployment.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceBlueGreenDeployment(
      activeEnvironment: (() { final guardedValue = map['activeEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteOldSourceOnDestroy: (() { final guardedValue = map['deleteOldSourceOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
      oldSourceInstanceConnectionName: (() { final guardedValue = map['oldSourceInstanceConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oldSourceInstanceName: (() { final guardedValue = map['oldSourceInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDatabaseVersion: (() { final guardedValue = map['targetDatabaseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetInstanceConnectionName: (() { final guardedValue = map['targetInstanceConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetInstanceIpAddresses: (() { final guardedValue = map['targetInstanceIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress>(guardedValue, (value) => DatabaseInstanceBlueGreenDeploymentTargetInstanceIpAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetInstanceName: (() { final guardedValue = map['targetInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
