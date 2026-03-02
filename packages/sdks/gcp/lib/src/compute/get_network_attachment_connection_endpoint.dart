// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkAttachmentConnectionEndpoint {
  /// The IPv4 address assigned to the producer instance network interface. This value will be a range in case of Serverless.
  final pulumi.Input<String> ipAddress;
  /// The project id or number of the interface to which the IP was assigned.
  final pulumi.Input<String> projectIdOrNum;
  /// Alias IP ranges from the same subnetwork.
  final pulumi.Input<String> secondaryIpCidrRanges;
  /// The status of a connected endpoint to this network attachment.
  final pulumi.Input<String> status;
  /// The subnetwork used to assign the IP to the producer instance network interface.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetNetworkAttachmentConnectionEndpoint].
  /// [ipAddress] The IPv4 address assigned to the producer instance network interface. This value will be a range in case of Serverless.
  /// [projectIdOrNum] The project id or number of the interface to which the IP was assigned.
  /// [secondaryIpCidrRanges] Alias IP ranges from the same subnetwork.
  /// [status] The status of a connected endpoint to this network attachment.
  /// [subnetwork] The subnetwork used to assign the IP to the producer instance network interface.
  GetNetworkAttachmentConnectionEndpoint({
    required this.ipAddress,
    required this.projectIdOrNum,
    required this.secondaryIpCidrRanges,
    required this.status,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'projectIdOrNum': projectIdOrNum,
      'secondaryIpCidrRanges': secondaryIpCidrRanges,
      'status': status,
      'subnetwork': subnetwork,
    };
  }

  factory GetNetworkAttachmentConnectionEndpoint.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentConnectionEndpoint(
      ipAddress: (map['ipAddress'] as String).input(),
      projectIdOrNum: (map['projectIdOrNum'] as String).input(),
      secondaryIpCidrRanges: (map['secondaryIpCidrRanges'] as String).input(),
      status: (map['status'] as String).input(),
      subnetwork: (map['subnetwork'] as String).input(),
    );
  }
}

