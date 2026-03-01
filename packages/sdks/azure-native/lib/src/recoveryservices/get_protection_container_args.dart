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
    required pulumi.Output<String> containerName,
    required pulumi.Output<String> fabricName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vaultName,
  }) :
      containerName = pulumi.Input.asInput<String>(containerName),
      fabricName = pulumi.Input.asInput<String>(fabricName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

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
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

