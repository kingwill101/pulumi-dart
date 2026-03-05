// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Output Only] A connection connected to this network attachment.
class NetworkAttachmentConnectedEndpointResponse {
  /// The IPv4 address assigned to the producer instance network interface. This value will be a range in case of Serverless.
  final pulumi.Input<String> ipAddress;
  /// The IPv6 address assigned to the producer instance network interface. This is only assigned when the stack types of both the instance network interface and the consumer subnet are IPv4_IPv6.
  final pulumi.Input<String> ipv6Address;
  /// The project id or number of the interface to which the IP was assigned.
  final pulumi.Input<String> projectIdOrNum;
  /// Alias IP ranges from the same subnetwork.
  final pulumi.Input<List<String>> secondaryIpCidrRanges;
  /// The status of a connected endpoint to this network attachment.
  final pulumi.Input<String> status;
  /// The subnetwork used to assign the IP to the producer instance network interface.
  final pulumi.Input<String> subnetwork;
  /// The CIDR range of the subnet from which the IPv4 internal IP was allocated from.
  final pulumi.Input<String> subnetworkCidrRange;

  /// Creates a new [NetworkAttachmentConnectedEndpointResponse].
  /// [ipAddress] The IPv4 address assigned to the producer instance network interface. This value will be a range in case of Serverless.
  /// [ipv6Address] The IPv6 address assigned to the producer instance network interface. This is only assigned when the stack types of both the instance network interface and the consumer subnet are IPv4_IPv6.
  /// [projectIdOrNum] The project id or number of the interface to which the IP was assigned.
  /// [secondaryIpCidrRanges] Alias IP ranges from the same subnetwork.
  /// [status] The status of a connected endpoint to this network attachment.
  /// [subnetwork] The subnetwork used to assign the IP to the producer instance network interface.
  /// [subnetworkCidrRange] The CIDR range of the subnet from which the IPv4 internal IP was allocated from.
  NetworkAttachmentConnectedEndpointResponse({
    required this.ipAddress,
    required this.ipv6Address,
    required this.projectIdOrNum,
    required this.secondaryIpCidrRanges,
    required this.status,
    required this.subnetwork,
    required this.subnetworkCidrRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ipv6Address': ipv6Address,
      'projectIdOrNum': projectIdOrNum,
      'secondaryIpCidrRanges': secondaryIpCidrRanges,
      'status': status,
      'subnetwork': subnetwork,
      'subnetworkCidrRange': subnetworkCidrRange,
    };
  }

  factory NetworkAttachmentConnectedEndpointResponse.fromMap(Map<String, dynamic> map) {
    return NetworkAttachmentConnectedEndpointResponse(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      projectIdOrNum: pulumi.Input.fromValue(map['projectIdOrNum'] as String),
      secondaryIpCidrRanges: pulumi.Input.fromValue((map['secondaryIpCidrRanges'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      subnetworkCidrRange: pulumi.Input.fromValue(map['subnetworkCidrRange'] as String),
    );
  }
}

