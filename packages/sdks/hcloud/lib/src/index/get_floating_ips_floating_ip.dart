// ignore_for_file: unused_element, unnecessary_cast


class GetFloatingIpsFloatingIp {
  final bool deleteProtection;
  final String description;
  final String homeLocation;
  final int id;
  final String ipAddress;
  final String ipNetwork;
  final Map<String, String> labels;
  final String? name;
  final int serverId;
  final String type;

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
      deleteProtection: map['deleteProtection'] as bool,
      description: map['description'] as String,
      homeLocation: map['homeLocation'] as String,
      id: map['id'] as int,
      ipAddress: map['ipAddress'] as String,
      ipNetwork: map['ipNetwork'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      serverId: map['serverId'] as int,
      type: map['type'] as String,
    );
  }
}

