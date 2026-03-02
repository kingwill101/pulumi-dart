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
    required this.accountName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyArgs(
      accountName: (map['accountName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

