// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replicationv_center_args_doc}
/// Arguments for getReplicationvCenter.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replicationv_center_args_doc}
class GetReplicationvCenterArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;
  /// vcenter name.
  final pulumi.Input<String> vcenterName;

  /// Creates a new [GetReplicationvCenterArgs].
  /// [fabricName] Fabric name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  /// [vcenterName] vcenter name.
  const GetReplicationvCenterArgs({
    required this.fabricName,
    required this.resourceGroupName,
    required this.resourceName,
    required this.vcenterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'vcenterName': vcenterName,
    };
  }

  factory GetReplicationvCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationvCenterArgs(
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      vcenterName: pulumi.Input.fromValue(map['vcenterName'] as String),
    );
  }
}

