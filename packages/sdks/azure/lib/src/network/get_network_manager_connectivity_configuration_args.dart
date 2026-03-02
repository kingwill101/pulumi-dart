// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_manager_connectivity_configuration_get_network_manager_connectivity_configuration_args_doc}
/// Arguments for getNetworkManagerConnectivityConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_manager_connectivity_configuration_get_network_manager_connectivity_configuration_args_doc}
class GetNetworkManagerConnectivityConfigurationArgs {
  /// The name of this Network Manager Connectivity Configuration.
  final pulumi.Input<String> name;
  /// The ID of the Network Manager.
  final pulumi.Input<String> networkManagerId;

  /// Creates a new [GetNetworkManagerConnectivityConfigurationArgs].
  /// [name] The name of this Network Manager Connectivity Configuration.
  /// [networkManagerId] The ID of the Network Manager.
  GetNetworkManagerConnectivityConfigurationArgs({
    required this.name,
    required this.networkManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'networkManagerId': networkManagerId,
    };
  }

  factory GetNetworkManagerConnectivityConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerConnectivityConfigurationArgs(
      name: (map['name'] as String).input(),
      networkManagerId: (map['networkManagerId'] as String).input(),
    );
  }
}

