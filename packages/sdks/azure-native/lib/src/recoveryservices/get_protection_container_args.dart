// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_protection_container_args_doc}
/// Arguments for getProtectionContainer.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_protection_container_args_doc}
class GetProtectionContainerArgs {
  /// Name of the container whose details need to be fetched.
  final pulumi.Input<String> containerName;
  /// Name of the fabric where the container belongs.
  final pulumi.Input<String> fabricName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetProtectionContainerArgs].
  /// [containerName] Name of the container whose details need to be fetched.
  /// [fabricName] Name of the fabric where the container belongs.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [vaultName] The name of the recovery services vault.
  GetProtectionContainerArgs({
    required this.containerName,
    required this.fabricName,
    required this.resourceGroupName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'fabricName': fabricName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetProtectionContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetProtectionContainerArgs(
      containerName: (map['containerName'] as String).input(),
      fabricName: (map['fabricName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

