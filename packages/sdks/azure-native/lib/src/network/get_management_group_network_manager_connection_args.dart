// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_management_group_network_manager_connection_args_doc}
/// Arguments for getManagementGroupNetworkManagerConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_management_group_network_manager_connection_args_doc}
class GetManagementGroupNetworkManagerConnectionArgs {
  /// The management group Id which uniquely identify the Microsoft Azure management group.
  final pulumi.Input<String> managementGroupId;
  /// Name for the network manager connection.
  final pulumi.Input<String> networkManagerConnectionName;

  /// Creates a new [GetManagementGroupNetworkManagerConnectionArgs].
  /// [managementGroupId] The management group Id which uniquely identify the Microsoft Azure management group.
  /// [networkManagerConnectionName] Name for the network manager connection.
  const GetManagementGroupNetworkManagerConnectionArgs({
    required this.managementGroupId,
    required this.networkManagerConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'networkManagerConnectionName': networkManagerConnectionName,
    };
  }

  factory GetManagementGroupNetworkManagerConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementGroupNetworkManagerConnectionArgs(
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
      networkManagerConnectionName: pulumi.Input.fromValue(map['networkManagerConnectionName'] as String),
    );
  }
}
