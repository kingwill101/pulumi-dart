// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_interconnect_group_args_doc}
/// Arguments for getInterconnectGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_interconnect_group_args_doc}
class GetInterconnectGroupArgs {
  /// The name of the interconnect group.
  final pulumi.Input<String> interconnectGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInterconnectGroupArgs].
  /// [interconnectGroupName] The name of the interconnect group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetInterconnectGroupArgs({
    required this.interconnectGroupName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectGroupName': interconnectGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInterconnectGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectGroupArgs(
      interconnectGroupName: pulumi.Input.fromValue(map['interconnectGroupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
