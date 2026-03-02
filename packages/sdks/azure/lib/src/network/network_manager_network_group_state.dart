// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerNetworkGroup resources.
class NetworkManagerNetworkGroupState {
  /// A description of the Network Manager Network Group.
  final pulumi.Input<String>? description;
  /// The member type for the network group. Possible values are `Subnet` and `VirtualNetwork`. Defaults to `VirtualNetwork`.
  ///
  /// > **Note:** `member_type` can be set to `Subnet` only if the parent Network Manager has `Routing` included in its `scope_accesses`.
  final pulumi.Input<String>? memberType;
  /// Specifies the name which should be used for this Network Manager Network Group. Changing this forces a new Network Manager Network Group to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager. Changing this forces a new Network Manager Network Group to be created.
  final pulumi.Input<String>? networkManagerId;

  /// Creates a new [NetworkManagerNetworkGroupState].
  /// [description] A description of the Network Manager Network Group.
  /// [memberType] The member type for the network group. Possible values are `Subnet` and `VirtualNetwork`. Defaults to `VirtualNetwork`.
  /// [name] Specifies the name which should be used for this Network Manager Network Group. Changing this forces a new Network Manager Network Group to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager. Changing this forces a new Network Manager Network Group to be created.
  NetworkManagerNetworkGroupState({
    this.description,
    this.memberType,
    this.name,
    this.networkManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'memberType': ?memberType,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
    };
  }

  factory NetworkManagerNetworkGroupState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerNetworkGroupState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      memberType: map['memberType'] == null ? null : (map['memberType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkManagerId: map['networkManagerId'] == null ? null : (map['networkManagerId']! as String).input(),
    );
  }
}

