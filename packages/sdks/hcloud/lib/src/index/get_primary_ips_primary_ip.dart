// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrimaryIpsPrimaryIp {
  final pulumi.Input<int> assigneeId;
  final pulumi.Input<String> assigneeType;
  final pulumi.Input<bool> autoDelete;
  final pulumi.Input<String> datacenter;
  final pulumi.Input<bool> deleteProtection;
  final pulumi.Input<int> id;
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> ipNetwork;
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? name;
  final pulumi.Input<String> type;

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
      assigneeId: (map['assigneeId'] as int).input(),
      assigneeType: (map['assigneeType'] as String).input(),
      autoDelete: (map['autoDelete'] as bool).input(),
      datacenter: (map['datacenter'] as String).input(),
      deleteProtection: (map['deleteProtection'] as bool).input(),
      id: (map['id'] as int).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      ipNetwork: (map['ipNetwork'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

