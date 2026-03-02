// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_ips_public_ip.dart';

/// Result data returned by getPublicIPs.
class GetPublicIPsResult {
  final String? allocationType;
  final String? attachmentStatus;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? namePrefix;
  /// A List of `public_ips` blocks as defined below filtered by the criteria above.
  final List<GetPublicIPsPublicIp> publicIps;
  final String resourceGroupName;

  /// Creates a new [GetPublicIPsResult].
  /// [allocationType] Optional.
  /// [attachmentStatus] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namePrefix] Optional.
  /// [publicIps] A List of `public_ips` blocks as defined below filtered by the criteria above.
  /// [resourceGroupName] Required.
  GetPublicIPsResult({
    this.allocationType,
    this.attachmentStatus,
    required this.id,
    this.namePrefix,
    required this.publicIps,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationType': ?allocationType,
      'attachmentStatus': ?attachmentStatus,
      'id': id,
      'namePrefix': ?namePrefix,
      'publicIps': pulumi.Input.encodeList<GetPublicIPsPublicIp, Map<String, dynamic>>(publicIps, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublicIPsResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIPsResult(
      allocationType: map['allocationType'] == null ? null : map['allocationType']! as String,
      attachmentStatus: map['attachmentStatus'] == null ? null : map['attachmentStatus']! as String,
      id: map['id'] as String,
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix']! as String,
      publicIps: pulumi.Input.decodeList<GetPublicIPsPublicIp>(map['publicIps'], (value) => GetPublicIPsPublicIp.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

