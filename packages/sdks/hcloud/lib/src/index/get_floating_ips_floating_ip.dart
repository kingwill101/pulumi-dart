// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFloatingIpsFloatingIp {
  final pulumi.Input<bool> deleteProtection;
  final pulumi.Input<String> description;
  final pulumi.Input<String> homeLocation;
  final pulumi.Input<int> id;
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> ipNetwork;
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<String>? name;
  final pulumi.Input<int> serverId;
  final pulumi.Input<String> type;

  /// Creates a new [GetFloatingIpsFloatingIp].
  /// [deleteProtection] Required.
  /// [description] Required.
  /// [homeLocation] Required.
  /// [id] Required.
  /// [ipAddress] Required.
  /// [ipNetwork] Required.
  /// [labels] Required.
  /// [name] Optional.
  /// [serverId] Required.
  /// [type] Required.
  GetFloatingIpsFloatingIp({
    required this.deleteProtection,
    required this.description,
    required this.homeLocation,
    required this.id,
    required this.ipAddress,
    required this.ipNetwork,
    required this.labels,
    this.name,
    required this.serverId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': deleteProtection,
      'description': description,
      'homeLocation': homeLocation,
      'id': id,
      'ipAddress': ipAddress,
      'ipNetwork': ipNetwork,
      'labels': labels,
      'name': ?name,
      'serverId': serverId,
      'type': type,
    };
  }

  factory GetFloatingIpsFloatingIp.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpsFloatingIp(
      deleteProtection: pulumi.Input.fromValue(map['deleteProtection'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      homeLocation: pulumi.Input.fromValue(map['homeLocation'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      ipNetwork: pulumi.Input.fromValue(map['ipNetwork'] as String),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
