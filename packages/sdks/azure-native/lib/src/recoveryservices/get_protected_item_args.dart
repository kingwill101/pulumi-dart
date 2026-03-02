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
    required this.containerName,
    required this.fabricName,
    this.filter,
    required this.protectedItemName,
    required this.resourceGroupName,
    required this.vaultName,
  });

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
      containerName: (map['containerName'] as String).input(),
      fabricName: (map['fabricName'] as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      protectedItemName: (map['protectedItemName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

