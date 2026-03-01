// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_active_connectivity_configurations_args_doc}
/// Arguments for listActiveConnectivityConfigurations.
/// {@endtemplate}
/// {@macro pulumi_network_list_active_connectivity_configurations_args_doc}
class ListActiveConnectivityConfigurationsArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// List of regions.
  final pulumi.Input<List<String>>? regions;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final pulumi.Input<String>? skipToken;
  /// An optional query parameter which specifies the maximum number of records to be returned by the server.
  final pulumi.Input<int>? top;

  /// Creates a new [ListActiveConnectivityConfigurationsArgs].
  /// [networkManagerName] The name of the network manager.
  /// [regions] List of regions.
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [top] An optional query parameter which specifies the maximum number of records to be returned by the server.
  ListActiveConnectivityConfigurationsArgs({
    required pulumi.Output<String> networkManagerName,
    pulumi.Output<List<String>>? regions,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? skipToken,
    pulumi.Output<int>? top,
  }) :
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken),
      top = pulumi.Input.asOptionalInput<int>(top);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'regions': ?regions,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
      'top': ?top,
    };
  }

  factory ListActiveConnectivityConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return ListActiveConnectivityConfigurationsArgs(
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      regions: map['regions'] == null ? null : pulumi.Output.create<List<String>>((map['regions'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skipToken: map['skipToken'] == null ? null : pulumi.Output.create<String>(map['skipToken'] as String),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
    );
  }
}

