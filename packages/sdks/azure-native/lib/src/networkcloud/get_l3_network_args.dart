// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_l3_network_args_doc}
/// Arguments for getL3Network.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_l3_network_args_doc}
class GetL3NetworkArgs {
  /// The name of the L3 network.
  final pulumi.Input<String> l3NetworkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetL3NetworkArgs].
  /// [l3NetworkName] The name of the L3 network.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetL3NetworkArgs({
    required this.l3NetworkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'l3NetworkName': l3NetworkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetL3NetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetL3NetworkArgs(
      l3NetworkName: pulumi.Input.fromValue(map['l3NetworkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

