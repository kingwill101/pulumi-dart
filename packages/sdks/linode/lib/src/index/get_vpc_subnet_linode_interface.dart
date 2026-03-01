// ignore_for_file: unused_element, unnecessary_cast


class GetVpcSubnetLinodeInterface {
  /// Whether the Interface is actively in use.
  final bool active;
  /// ID of Linode Config that the interface is associated with. `null` for a Linode Interface.
  final int configId;
  /// The unique id of this VPC subnet.
  final int id;

  /// Creates a new [GetVpcSubnetLinodeInterface].
  /// [active] Whether the Interface is actively in use.
  /// [configId] ID of Linode Config that the interface is associated with. `null` for a Linode Interface.
  /// [id] The unique id of this VPC subnet.
  GetVpcSubnetLinodeInterface({
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

  factory GetVpcSubnetLinodeInterface.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetLinodeInterface(
      active: map['active'] as bool,
      configId: map['configId'] as int,
      id: map['id'] as int,
    );
  }
}

