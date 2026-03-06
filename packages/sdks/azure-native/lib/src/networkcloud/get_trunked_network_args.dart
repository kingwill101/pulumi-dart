// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_trunked_network_args_doc}
/// Arguments for getTrunkedNetwork.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_trunked_network_args_doc}
class GetTrunkedNetworkArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the trunked network.
  final pulumi.Input<String> trunkedNetworkName;

  /// Creates a new [GetTrunkedNetworkArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [trunkedNetworkName] The name of the trunked network.
  const GetTrunkedNetworkArgs({
    required this.resourceGroupName,
    required this.trunkedNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'trunkedNetworkName': trunkedNetworkName,
    };
  }

  factory GetTrunkedNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetTrunkedNetworkArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      trunkedNetworkName: pulumi.Input.fromValue(map['trunkedNetworkName'] as String),
    );
  }
}

