// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_disaster_recovery_configuration_args_doc}
/// The set of arguments for DisasterRecoveryConfiguration.
/// {@endtemplate}
/// {@macro pulumi_sql_disaster_recovery_configuration_args_doc}
class DisasterRecoveryConfigurationArgs {
  /// The name of the disaster recovery configuration to be created/updated.
  final pulumi.Input<String>? disasterRecoveryConfigurationName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [DisasterRecoveryConfigurationArgs].
  /// [disasterRecoveryConfigurationName] The name of the disaster recovery configuration to be created/updated.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const DisasterRecoveryConfigurationArgs({
    this.disasterRecoveryConfigurationName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disasterRecoveryConfigurationName': ?disasterRecoveryConfigurationName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory DisasterRecoveryConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DisasterRecoveryConfigurationArgs(
      disasterRecoveryConfigurationName: (() { final guardedValue = map['disasterRecoveryConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

