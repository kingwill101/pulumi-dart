// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_manager_network_group_get_network_manager_network_group_args_doc}
/// Arguments for getNetworkManagerNetworkGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_manager_network_group_get_network_manager_network_group_args_doc}
class GetNetworkManagerNetworkGroupArgs {
  /// Specifies the name of the Network Manager Network Group.
  final pulumi.Input<String> name;
  /// Specifies the ID of the Network Manager.
  final pulumi.Input<String> networkManagerId;

  /// Creates a new [GetNetworkManagerNetworkGroupArgs].
  /// [name] Specifies the name of the Network Manager Network Group.
  /// [networkManagerId] Specifies the ID of the Network Manager.
  GetNetworkManagerNetworkGroupArgs({
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

  factory GetNetworkManagerNetworkGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerNetworkGroupArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: pulumi.Output.create<String>(map['networkManagerId'] as String),
    );
  }
}

