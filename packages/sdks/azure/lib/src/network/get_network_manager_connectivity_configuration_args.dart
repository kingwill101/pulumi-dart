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
    required pulumi.Output<String> name,
    required pulumi.Output<String> networkManagerId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      networkManagerId = pulumi.Input.asInput<String>(networkManagerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'networkManagerId': networkManagerId,
    };
  }

  factory GetNetworkManagerConnectivityConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerConnectivityConfigurationArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: pulumi.Output.create<String>(map['networkManagerId'] as String),
    );
  }
}

