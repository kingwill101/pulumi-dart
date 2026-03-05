// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_disaster_recovery_configuration_args_doc}
/// Arguments for getDisasterRecoveryConfiguration.
/// {@endtemplate}
/// {@macro pulumi_sql_get_disaster_recovery_configuration_args_doc}
class GetDisasterRecoveryConfigurationArgs {
  /// The name of the disaster recovery configuration.
  final pulumi.Input<String> disasterRecoveryConfigurationName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetDisasterRecoveryConfigurationArgs].
  /// [disasterRecoveryConfigurationName] The name of the disaster recovery configuration.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetDisasterRecoveryConfigurationArgs({
    required this.disasterRecoveryConfigurationName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disasterRecoveryConfigurationName': disasterRecoveryConfigurationName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetDisasterRecoveryConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetDisasterRecoveryConfigurationArgs(
      disasterRecoveryConfigurationName: pulumi.Input.fromValue(map['disasterRecoveryConfigurationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

