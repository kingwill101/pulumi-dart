// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAttachmentConnectionEndpoint {
  /// (Output)
  /// The IPv4 address assigned to the producer instance network interface. This value will be a range in case of Serverless.
  final pulumi.Input<String>? ipAddress;
  /// (Output)
  /// The project id or number of the interface to which the IP was assigned.
  final pulumi.Input<String>? projectIdOrNum;
  /// (Output)
  /// Alias IP ranges from the same subnetwork.
  final pulumi.Input<String>? secondaryIpCidrRanges;
  /// (Output)
  /// The status of a connected endpoint to this network attachment.
  final pulumi.Input<String>? status;
  /// (Output)
  /// The subnetwork used to assign the IP to the producer instance network interface.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [NetworkAttachmentConnectionEndpoint].
  /// [ipAddress] (Output)
  /// [projectIdOrNum] (Output)
  /// [secondaryIpCidrRanges] (Output)
  /// [status] (Output)
  /// [subnetwork] (Output)
  const NetworkAttachmentConnectionEndpoint({
    this.ipAddress,
    this.projectIdOrNum,
    this.secondaryIpCidrRanges,
    this.status,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'projectIdOrNum': ?projectIdOrNum,
      'secondaryIpCidrRanges': ?secondaryIpCidrRanges,
      'status': ?status,
      'subnetwork': ?subnetwork,
    };
  }

  factory NetworkAttachmentConnectionEndpoint.fromMap(Map<String, dynamic> map) {
    return NetworkAttachmentConnectionEndpoint(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectIdOrNum: (() { final guardedValue = map['projectIdOrNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpCidrRanges: (() { final guardedValue = map['secondaryIpCidrRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
