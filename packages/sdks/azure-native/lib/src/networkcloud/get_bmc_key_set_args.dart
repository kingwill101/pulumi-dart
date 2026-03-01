// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_bmc_key_set_args_doc}
/// Arguments for getBmcKeySet.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_bmc_key_set_args_doc}
class GetBmcKeySetArgs {
  /// The name of the baseboard management controller key set.
  final pulumi.Input<String> bmcKeySetName;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBmcKeySetArgs].
  /// [bmcKeySetName] The name of the baseboard management controller key set.
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBmcKeySetArgs({
    required pulumi.Output<String> bmcKeySetName,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      bmcKeySetName = pulumi.Input.asInput<String>(bmcKeySetName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bmcKeySetName': bmcKeySetName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBmcKeySetArgs.fromMap(Map<String, dynamic> map) {
    return GetBmcKeySetArgs(
      bmcKeySetName: pulumi.Output.create<String>(map['bmcKeySetName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

