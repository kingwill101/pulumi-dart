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
  GetTrunkedNetworkArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> trunkedNetworkName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      trunkedNetworkName = pulumi.Input.asInput<String>(trunkedNetworkName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'trunkedNetworkName': trunkedNetworkName,
    };
  }

  factory GetTrunkedNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetTrunkedNetworkArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      trunkedNetworkName: pulumi.Output.create<String>(map['trunkedNetworkName'] as String),
    );
  }
}

