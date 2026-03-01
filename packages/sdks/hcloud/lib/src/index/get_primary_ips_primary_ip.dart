// ignore_for_file: unused_element, unnecessary_cast


class GetPrimaryIpsPrimaryIp {
  final int assigneeId;
  final String assigneeType;
  final bool autoDelete;
  final String datacenter;
  final bool deleteProtection;
  final int id;
  final String ipAddress;
  final String ipNetwork;
  final Map<String, String> labels;
  final String location;
  final String? name;
  final String type;

  /// Creates a new [GetPrimaryIpsPrimaryIp].
  /// [assigneeId] Required.
  /// [assigneeType] Required.
  /// [autoDelete] Required.
  /// [datacenter] Required.
  /// [deleteProtection] Required.
  /// [id] Required.
  /// [ipAddress] Required.
  /// [ipNetwork] Required.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Optional.
  /// [type] Required.
  GetPrimaryIpsPrimaryIp({
    required this.assigneeId,
    required this.assigneeType,
    required this.autoDelete,
    required this.datacenter,
    required this.deleteProtection,
    required this.id,
    required this.ipAddress,
    required this.ipNetwork,
    required this.labels,
    required this.location,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneeId': assigneeId,
      'assigneeType': assigneeType,
      'autoDelete': autoDelete,
      'datacenter': datacenter,
      'deleteProtection': deleteProtection,
      'id': id,
      'ipAddress': ipAddress,
      'ipNetwork': ipNetwork,
      'labels': labels,
      'location': location,
      'name': ?name,
      'type': type,
    };
  }

  factory GetPrimaryIpsPrimaryIp.fromMap(Map<String, dynamic> map) {
    return GetPrimaryIpsPrimaryIp(
      assigneeId: map['assigneeId'] as int,
      assigneeType: map['assigneeType'] as String,
      autoDelete: map['autoDelete'] as bool,
      datacenter: map['datacenter'] as String,
      deleteProtection: map['deleteProtection'] as bool,
      id: map['id'] as int,
      ipAddress: map['ipAddress'] as String,
      ipNetwork: map['ipNetwork'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
    );
  }
}

