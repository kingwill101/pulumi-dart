// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReservedIp resources.
class ReservedIpState {
  /// The ID of Droplet that the reserved IP will be assigned to.
  final pulumi.Input<int>? dropletId;
  /// The IP Address of the resource
  final pulumi.Input<String>? ipAddress;
  /// The region that the reserved IP is reserved to.
  final pulumi.Input<String>? region;
  /// The uniform resource name of the reserved ip
  final pulumi.Input<String>? reservedIpUrn;

  /// Creates a new [ReservedIpState].
  /// [dropletId] The ID of Droplet that the reserved IP will be assigned to.
  /// [ipAddress] The IP Address of the resource
  /// [region] The region that the reserved IP is reserved to.
  /// [reservedIpUrn] The uniform resource name of the reserved ip
  const ReservedIpState({
    this.dropletId,
    this.ipAddress,
    this.region,
    this.reservedIpUrn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'reservedIpUrn': ?reservedIpUrn,
    };
  }

  factory ReservedIpState.fromMap(Map<String, dynamic> map) {
    return ReservedIpState(
      dropletId: (() { final guardedValue = map['dropletId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedIpUrn: (() { final guardedValue = map['reservedIpUrn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
