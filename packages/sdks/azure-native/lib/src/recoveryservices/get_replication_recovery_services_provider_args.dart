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
    required this.fabricName,
    required this.providerName,
    required this.resourceGroupName,
    required this.resourceName,
  });

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
      fabricName: (map['fabricName'] as String).input(),
      providerName: (map['providerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

