// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_network_group_network_manager_network_group_args_doc}
/// The set of arguments for NetworkManagerNetworkGroup.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_network_group_network_manager_network_group_args_doc}
class NetworkManagerNetworkGroupArgs {
  /// A description of the Network Manager Network Group.
  final pulumi.Input<String>? description;
  /// The member type for the network group. Possible values are `Subnet` and `VirtualNetwork`. Defaults to `VirtualNetwork`.
  ///
  /// > **Note:** `member_type` can be set to `Subnet` only if the parent Network Manager has `Routing` included in its `scope_accesses`.
  final pulumi.Input<String>? memberType;
  /// Specifies the name which should be used for this Network Manager Network Group. Changing this forces a new Network Manager Network Group to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager. Changing this forces a new Network Manager Network Group to be created.
  final pulumi.Input<String> networkManagerId;

  /// Creates a new [NetworkManagerNetworkGroupArgs].
  /// [description] A description of the Network Manager Network Group.
  /// [memberType] The member type for the network group. Possible values are `Subnet` and `VirtualNetwork`. Defaults to `VirtualNetwork`.
  /// [name] Specifies the name which should be used for this Network Manager Network Group. Changing this forces a new Network Manager Network Group to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager. Changing this forces a new Network Manager Network Group to be created.
  NetworkManagerNetworkGroupArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? memberType,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkManagerId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      memberType = pulumi.Input.asOptionalInput<String>(memberType),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asInput<String>(networkManagerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'memberType': ?memberType,
      'name': ?name,
      'networkManagerId': networkManagerId,
    };
  }

  factory NetworkManagerNetworkGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerNetworkGroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      memberType: map['memberType'] == null ? null : pulumi.Output.create<String>(map['memberType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: pulumi.Output.create<String>(map['networkManagerId'] as String),
    );
  }
}

