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
      deleteProtection: (map['deleteProtection'] as bool).input(),
      description: (map['description'] as String).input(),
      homeLocation: (map['homeLocation'] as String).input(),
      id: (map['id'] as int).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      ipNetwork: (map['ipNetwork'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      serverId: (map['serverId'] as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

