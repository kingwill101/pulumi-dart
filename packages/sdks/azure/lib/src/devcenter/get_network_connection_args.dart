// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_network_connection_get_network_connection_args_doc}
/// Arguments for getNetworkConnection.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_network_connection_get_network_connection_args_doc}
class GetNetworkConnectionArgs {
  /// The name of this Dev Center Network Connection.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Dev Center Network Connection exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkConnectionArgs].
  /// [name] The name of this Dev Center Network Connection.
  /// [resourceGroupName] The name of the Resource Group where the Dev Center Network Connection exists.
  GetNetworkConnectionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkConnectionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

