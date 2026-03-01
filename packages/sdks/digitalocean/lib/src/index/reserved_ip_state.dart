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
  ReservedIpState({
    pulumi.Output<int>? dropletId,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? region,
    pulumi.Output<String>? reservedIpUrn,
  }) :
      dropletId = pulumi.Input.asOptionalInput<int>(dropletId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservedIpUrn = pulumi.Input.asOptionalInput<String>(reservedIpUrn);

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
      dropletId: map['dropletId'] == null ? null : pulumi.Output.create<int>(map['dropletId'] as int),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservedIpUrn: map['reservedIpUrn'] == null ? null : pulumi.Output.create<String>(map['reservedIpUrn'] as String),
    );
  }
}

