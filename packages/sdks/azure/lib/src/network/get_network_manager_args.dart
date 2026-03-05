// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_manager_get_network_manager_args_doc}
/// Arguments for getNetworkManager.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_manager_get_network_manager_args_doc}
class GetNetworkManagerArgs {
  /// The name of the Network Manager.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the Network Manager exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkManagerArgs].
  /// [name] The name of the Network Manager.
  /// [resourceGroupName] The Name of the Resource Group where the Network Manager exists.
  GetNetworkManagerArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

