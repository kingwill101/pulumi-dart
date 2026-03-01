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
  DisasterRecoveryConfigurationArgs({
    pulumi.Output<String>? disasterRecoveryConfigurationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      disasterRecoveryConfigurationName = pulumi.Input.asOptionalInput<String>(disasterRecoveryConfigurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disasterRecoveryConfigurationName': ?disasterRecoveryConfigurationName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory DisasterRecoveryConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DisasterRecoveryConfigurationArgs(
      disasterRecoveryConfigurationName: map['disasterRecoveryConfigurationName'] == null ? null : pulumi.Output.create<String>(map['disasterRecoveryConfigurationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

