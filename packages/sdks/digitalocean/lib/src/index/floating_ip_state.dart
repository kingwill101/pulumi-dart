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
    pulumi.Output<int>? dropletId,
    pulumi.Output<String>? floatingIpUrn,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? region,
  }) :
      dropletId = pulumi.Input.asOptionalInput<int>(dropletId),
      floatingIpUrn = pulumi.Input.asOptionalInput<String>(floatingIpUrn),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      dropletId: map['dropletId'] == null ? null : pulumi.Output.create<int>(map['dropletId'] as int),
      floatingIpUrn: map['floatingIpUrn'] == null ? null : pulumi.Output.create<String>(map['floatingIpUrn'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

