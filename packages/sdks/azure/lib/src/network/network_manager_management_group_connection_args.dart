// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_management_group_connection_network_manager_management_group_connection_args_doc}
/// The set of arguments for NetworkManagerManagementGroupConnection.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_management_group_connection_network_manager_management_group_connection_args_doc}
class NetworkManagerManagementGroupConnectionArgs {
  /// A description of the Network Manager Management Group Connection.
  final pulumi.Input<String>? description;
  /// Specifies the ID of the target Management Group. Changing this forces a new resource to be created.
  final pulumi.Input<String> managementGroupId;
  /// Specifies the name which should be used for this Network Manager Management Group Connection. Changing this forces a new Network Manager Management Group Connection to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager which the Management Group is connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkManagerId;

  /// Creates a new [NetworkManagerManagementGroupConnectionArgs].
  /// [description] A description of the Network Manager Management Group Connection.
  /// [managementGroupId] Specifies the ID of the target Management Group. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Network Manager Management Group Connection. Changing this forces a new Network Manager Management Group Connection to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager which the Management Group is connected to. Changing this forces a new resource to be created.
  NetworkManagerManagementGroupConnectionArgs({
    this.description,
    required this.managementGroupId,
    this.name,
    required this.networkManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'managementGroupId': managementGroupId,
      'name': ?name,
      'networkManagerId': networkManagerId,
    };
  }

  factory NetworkManagerManagementGroupConnectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerManagementGroupConnectionArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      managementGroupId: (map['managementGroupId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkManagerId: (map['networkManagerId'] as String).input(),
    );
  }
}

