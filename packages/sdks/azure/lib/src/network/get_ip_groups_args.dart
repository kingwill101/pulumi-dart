// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_ip_groups_get_ip_groups_args_doc}
/// Arguments for getIpGroups.
/// {@endtemplate}
/// {@macro pulumi_network_get_ip_groups_get_ip_groups_args_doc}
class GetIpGroupsArgs {
  /// A substring to match some number of IP Groups.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the IP Groups exist.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIpGroupsArgs].
  /// [name] A substring to match some number of IP Groups.
  /// [resourceGroupName] The name of the Resource Group where the IP Groups exist.
  GetIpGroupsArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIpGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetIpGroupsArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

