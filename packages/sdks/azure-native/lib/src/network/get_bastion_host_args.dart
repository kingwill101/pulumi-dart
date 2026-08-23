// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_bastion_host_args_doc}
/// Arguments for getBastionHost.
/// {@endtemplate}
/// {@macro pulumi_network_get_bastion_host_args_doc}
class GetBastionHostArgs {
  /// The name of the Bastion Host.
  final pulumi.Input<String> bastionHostName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBastionHostArgs].
  /// [bastionHostName] The name of the Bastion Host.
  /// [resourceGroupName] The name of the resource group.
  const GetBastionHostArgs({
    required this.bastionHostName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bastionHostName': bastionHostName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBastionHostArgs.fromMap(Map<String, dynamic> map) {
    return GetBastionHostArgs(
      bastionHostName: pulumi.Input.fromValue(map['bastionHostName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
