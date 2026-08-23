// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrimaryIpsPrimaryIp {
  /// ID of the resource the Primary IP is assigned to.
  final pulumi.Input<int> assigneeId;
  /// Type of the resource the Primary IP is assigned to.
  final pulumi.Input<String> assigneeType;
  /// Whether auto delete is enabled.
  final pulumi.Input<bool> autoDelete;
  /// Name of the Datacenter of the Primary IP.
  final pulumi.Input<String> datacenter;
  /// Whether delete protection is enabled.
  final pulumi.Input<bool> deleteProtection;
  /// ID of the Primary IP.
  final pulumi.Input<int> id;
  /// IP address of the Primary IP.
  final pulumi.Input<String> ipAddress;
  /// IP network of the Primary IP for IPv6 addresses. Only set if `type` is `ipv6`.
  final pulumi.Input<String> ipNetwork;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// Name of the Location of the Primary IP.
  final pulumi.Input<String> location;
  /// Name of the Primary IP.
  final pulumi.Input<String> name;
  /// Type of the Primary IP (`ipv4` or `ipv6`).
  final pulumi.Input<String> type;

  /// Creates a new [GetPrimaryIpsPrimaryIp].
  /// [assigneeId] ID of the resource the Primary IP is assigned to.
  /// [assigneeType] Type of the resource the Primary IP is assigned to.
  /// [autoDelete] Whether auto delete is enabled.
  /// [datacenter] Name of the Datacenter of the Primary IP.
  /// [deleteProtection] Whether delete protection is enabled.
  /// [id] ID of the Primary IP.
  /// [ipAddress] IP address of the Primary IP.
  /// [ipNetwork] IP network of the Primary IP for IPv6 addresses. Only set if `type` is `ipv6`.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [location] Name of the Location of the Primary IP.
  /// [name] Name of the Primary IP.
  /// [type] Type of the Primary IP (`ipv4` or `ipv6`).
  const GetPrimaryIpsPrimaryIp({
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
    required this.name,
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
      'name': name,
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
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
