// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_recovery_services_provider_args_doc}
/// Arguments for getReplicationRecoveryServicesProvider.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_recovery_services_provider_args_doc}
class GetReplicationRecoveryServicesProviderArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// Recovery services provider name.
  final pulumi.Input<String> providerName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationRecoveryServicesProviderArgs].
  /// [fabricName] Fabric name.
  /// [providerName] Recovery services provider name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  GetReplicationRecoveryServicesProviderArgs({
    required pulumi.Output<String> fabricName,
    required pulumi.Output<String> providerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      providerName = pulumi.Input.asInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'providerName': providerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationRecoveryServicesProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryServicesProviderArgs(
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      providerName: pulumi.Output.create<String>(map['providerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

