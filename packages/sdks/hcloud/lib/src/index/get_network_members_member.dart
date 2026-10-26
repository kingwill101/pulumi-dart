// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkMembersMember {
  /// Additional IP addresses of the Resource within the Network.
  final pulumi.Input<List<String>> aliasIps;
  /// ID of the Resource attached to the Network.
  final pulumi.Input<int> id;
  /// IP address of the Resource within the Network.
  final pulumi.Input<String> ip;
  /// Status of the Resource within the Network.
  final pulumi.Input<String> status;
  /// IP range of the subnet the Resource is attached to.
  final pulumi.Input<String> subnet;
  /// Type of the Resource attached to the Network.
  final pulumi.Input<String> type;

  /// Creates a new [GetNetworkMembersMember].
  /// [aliasIps] Additional IP addresses of the Resource within the Network.
  /// [id] ID of the Resource attached to the Network.
  /// [ip] IP address of the Resource within the Network.
  /// [status] Status of the Resource within the Network.
  /// [subnet] IP range of the subnet the Resource is attached to.
  /// [type] Type of the Resource attached to the Network.
  const GetNetworkMembersMember({
    required this.aliasIps,
    required this.id,
    required this.ip,
    required this.status,
    required this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasIps': aliasIps,
      'id': id,
      'ip': ip,
      'status': status,
      'subnet': subnet,
      'type': type,
    };
  }

  factory GetNetworkMembersMember.fromMap(Map<String, dynamic> map) {
    return GetNetworkMembersMember(
      aliasIps: pulumi.Input.fromValue((map['aliasIps'] as List).cast<String>()),
      id: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['id'])),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      subnet: pulumi.Input.fromValue(map['subnet'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
