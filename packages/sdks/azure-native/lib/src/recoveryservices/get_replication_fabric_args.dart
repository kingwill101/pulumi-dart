// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_fabric_args_doc}
/// Arguments for getReplicationFabric.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_fabric_args_doc}
class GetReplicationFabricArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// OData filter options.
  final pulumi.Input<String>? filter;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationFabricArgs].
  /// [fabricName] Fabric name.
  /// [filter] OData filter options.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  GetReplicationFabricArgs({
    required this.fabricName,
    this.filter,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'filter': ?filter,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationFabricArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationFabricArgs(
      fabricName: (map['fabricName'] as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

