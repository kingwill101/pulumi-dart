// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_protected_item_args_doc}
/// Arguments for getProtectedItem.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_protected_item_args_doc}
class GetProtectedItemArgs {
  /// Container name associated with the backed up item.
  final pulumi.Input<String> containerName;
  /// Fabric name associated with the backed up item.
  final pulumi.Input<String> fabricName;
  /// OData filter options.
  final pulumi.Input<String>? filter;
  /// Backed up item name whose details are to be fetched.
  final pulumi.Input<String> protectedItemName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetProtectedItemArgs].
  /// [containerName] Container name associated with the backed up item.
  /// [fabricName] Fabric name associated with the backed up item.
  /// [filter] OData filter options.
  /// [protectedItemName] Backed up item name whose details are to be fetched.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [vaultName] The name of the recovery services vault.
  GetProtectedItemArgs({
    required pulumi.Output<String> containerName,
    required pulumi.Output<String> fabricName,
    pulumi.Output<String>? filter,
    required pulumi.Output<String> protectedItemName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vaultName,
  }) :
      containerName = pulumi.Input.asInput<String>(containerName),
      fabricName = pulumi.Input.asInput<String>(fabricName),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      protectedItemName = pulumi.Input.asInput<String>(protectedItemName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'fabricName': fabricName,
      'filter': ?filter,
      'protectedItemName': protectedItemName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetProtectedItemArgs.fromMap(Map<String, dynamic> map) {
    return GetProtectedItemArgs(
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      protectedItemName: pulumi.Output.create<String>(map['protectedItemName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

