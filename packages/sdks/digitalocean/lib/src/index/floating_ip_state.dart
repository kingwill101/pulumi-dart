// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FloatingIp resources.
class FloatingIpState {
  /// The ID of Droplet that the Floating IP will be assigned to.
  final pulumi.Input<int>? dropletId;
  /// The uniform resource name of the floating ip
  final pulumi.Input<String>? floatingIpUrn;
  /// The IP Address of the resource
  final pulumi.Input<String>? ipAddress;
  /// The region that the Floating IP is reserved to.
  final pulumi.Input<String>? region;

  /// Creates a new [FloatingIpState].
  /// [dropletId] The ID of Droplet that the Floating IP will be assigned to.
  /// [floatingIpUrn] The uniform resource name of the floating ip
  /// [ipAddress] The IP Address of the resource
  /// [region] The region that the Floating IP is reserved to.
  FloatingIpState({
    this.dropletId,
    this.floatingIpUrn,
    this.ipAddress,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'floatingIpUrn': ?floatingIpUrn,
      'ipAddress': ?ipAddress,
      'region': ?region,
    };
  }

  factory FloatingIpState.fromMap(Map<String, dynamic> map) {
    return FloatingIpState(
      dropletId: (() { final guardedValue = map['dropletId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      floatingIpUrn: (() { final guardedValue = map['floatingIpUrn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

