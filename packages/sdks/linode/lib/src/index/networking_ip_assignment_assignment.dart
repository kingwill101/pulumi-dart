// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkingIpAssignmentAssignment {
  /// The IPv4 address or IPv6 range to assign.
  final pulumi.Input<String> address;
  /// The ID of the Linode to which the IP address will be assigned.
  final pulumi.Input<int> linodeId;

  /// Creates a new [NetworkingIpAssignmentAssignment].
  /// [address] The IPv4 address or IPv6 range to assign.
  /// [linodeId] The ID of the Linode to which the IP address will be assigned.
  NetworkingIpAssignmentAssignment({
    required this.address,
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'linodeId': linodeId,
    };
  }

  factory NetworkingIpAssignmentAssignment.fromMap(Map<String, dynamic> map) {
    return NetworkingIpAssignmentAssignment(
      address: pulumi.Input.fromValue(map['address'] as String),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
    );
  }
}

