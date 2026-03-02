// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcSubnetsVpcSubnetLinodeInterface {
  /// Whether the Interface is actively in use.
  final pulumi.Input<bool> active;
  /// ID of Linode Config that the interface is associated with. `null` for a Linode Interface.
  final pulumi.Input<int> configId;
  /// ID of the interface.
  final pulumi.Input<int> id;

  /// Creates a new [GetVpcSubnetsVpcSubnetLinodeInterface].
  /// [active] Whether the Interface is actively in use.
  /// [configId] ID of Linode Config that the interface is associated with. `null` for a Linode Interface.
  /// [id] ID of the interface.
  GetVpcSubnetsVpcSubnetLinodeInterface({
    required this.active,
    required this.configId,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'configId': configId,
      'id': id,
    };
  }

  factory GetVpcSubnetsVpcSubnetLinodeInterface.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetsVpcSubnetLinodeInterface(
      active: (map['active'] as bool).input(),
      configId: (map['configId'] as int).input(),
      id: (map['id'] as int).input(),
    );
  }
}

