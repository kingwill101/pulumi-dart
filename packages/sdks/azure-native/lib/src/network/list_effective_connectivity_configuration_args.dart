// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_effective_connectivity_configuration_args_doc}
/// Arguments for listEffectiveConnectivityConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_list_effective_connectivity_configuration_args_doc}
class ListEffectiveConnectivityConfigurationArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final pulumi.Input<String>? skipToken;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [ListEffectiveConnectivityConfigurationArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [virtualNetworkName] The name of the virtual network.
  ListEffectiveConnectivityConfigurationArgs({
    required this.resourceGroupName,
    this.skipToken,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory ListEffectiveConnectivityConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ListEffectiveConnectivityConfigurationArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skipToken: map['skipToken'] == null ? null : (map['skipToken']! as String).input(),
      virtualNetworkName: (map['virtualNetworkName'] as String).input(),
    );
  }
}

