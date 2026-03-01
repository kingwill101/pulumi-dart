// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_l2_network_args_doc}
/// Arguments for getL2Network.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_l2_network_args_doc}
class GetL2NetworkArgs {
  /// The name of the L2 network.
  final pulumi.Input<String> l2NetworkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetL2NetworkArgs].
  /// [l2NetworkName] The name of the L2 network.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetL2NetworkArgs({
    required pulumi.Output<String> l2NetworkName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      l2NetworkName = pulumi.Input.asInput<String>(l2NetworkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'l2NetworkName': l2NetworkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetL2NetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetL2NetworkArgs(
      l2NetworkName: pulumi.Output.create<String>(map['l2NetworkName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

