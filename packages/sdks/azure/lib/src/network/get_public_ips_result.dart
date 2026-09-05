// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_ips_public_ip.dart';

/// Result data returned by getPublicIPs.
class GetPublicIPsResult {
  final String? allocationType;
  final String? attachmentStatus;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? namePrefix;
  /// A List of `publicIps` blocks as defined below filtered by the criteria above.
  final List<GetPublicIPsPublicIp>? publicIps;
  final String? resourceGroupName;

  /// Creates a new [GetPublicIPsResult].
  /// [allocationType] Optional.
  /// [attachmentStatus] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namePrefix] Optional.
  /// [publicIps] A List of `publicIps` blocks as defined below filtered by the criteria above.
  /// [resourceGroupName] Optional.
  const GetPublicIPsResult({
    this.allocationType,
    this.attachmentStatus,
    this.id,
    this.namePrefix,
    this.publicIps,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationType': ?allocationType,
      'attachmentStatus': ?attachmentStatus,
      'id': ?id,
      'namePrefix': ?namePrefix,
      'publicIps': ?(() { final guardedValue = publicIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPublicIPsPublicIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetPublicIPsResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIPsResult(
      allocationType: (() { final guardedValue = map['allocationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attachmentStatus: (() { final guardedValue = map['attachmentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIps: (() { final guardedValue = map['publicIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPublicIPsPublicIp>(guardedValue, (value) => GetPublicIPsPublicIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
