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
      assigneeId: pulumi.Input.fromValue(map['assigneeId'] as int),
      assigneeType: pulumi.Input.fromValue(map['assigneeType'] as String),
      autoDelete: pulumi.Input.fromValue(map['autoDelete'] as bool),
      datacenter: pulumi.Input.fromValue(map['datacenter'] as String),
      deleteProtection: pulumi.Input.fromValue(map['deleteProtection'] as bool),
      id: pulumi.Input.fromValue(map['id'] as int),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      ipNetwork: pulumi.Input.fromValue(map['ipNetwork'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

