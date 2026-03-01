// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_snapshot_policy_get_snapshot_policy_args_doc}
/// Arguments for getSnapshotPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_snapshot_policy_get_snapshot_policy_args_doc}
class GetSnapshotPolicyArgs {
  /// The name of the NetApp account where the NetApp Snapshot Policy exists.
  final pulumi.Input<String> accountName;
  /// The name of the NetApp Snapshot Policy.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the NetApp Snapshot Policy exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSnapshotPolicyArgs].
  /// [accountName] The name of the NetApp account where the NetApp Snapshot Policy exists.
  /// [name] The name of the NetApp Snapshot Policy.
  /// [resourceGroupName] The Name of the Resource Group where the NetApp Snapshot Policy exists.
  GetSnapshotPolicyArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

