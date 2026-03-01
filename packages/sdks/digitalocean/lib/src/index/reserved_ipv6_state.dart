// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReservedIpv6 resources.
class ReservedIpv6State {
  final pulumi.Input<int>? dropletId;
  final pulumi.Input<String>? ip;
  /// The region that the reserved IPv6 needs to be reserved to.
  final pulumi.Input<String>? regionSlug;
  /// the uniform resource name for the reserved ipv6
  final pulumi.Input<String>? reservedIpv6Urn;

  /// Creates a new [ReservedIpv6State].
  /// [dropletId] Optional.
  /// [ip] Optional.
  /// [regionSlug] The region that the reserved IPv6 needs to be reserved to.
  /// [reservedIpv6Urn] the uniform resource name for the reserved ipv6
  ReservedIpv6State({
    pulumi.Output<int>? dropletId,
    pulumi.Output<String>? ip,
    pulumi.Output<String>? regionSlug,
    pulumi.Output<String>? reservedIpv6Urn,
  }) :
      dropletId = pulumi.Input.asOptionalInput<int>(dropletId),
      ip = pulumi.Input.asOptionalInput<String>(ip),
      regionSlug = pulumi.Input.asOptionalInput<String>(regionSlug),
      reservedIpv6Urn = pulumi.Input.asOptionalInput<String>(reservedIpv6Urn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ip': ?ip,
      'regionSlug': ?regionSlug,
      'reservedIpv6Urn': ?reservedIpv6Urn,
    };
  }

  factory ReservedIpv6State.fromMap(Map<String, dynamic> map) {
    return ReservedIpv6State(
      dropletId: map['dropletId'] == null ? null : pulumi.Output.create<int>(map['dropletId'] as int),
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
      regionSlug: map['regionSlug'] == null ? null : pulumi.Output.create<String>(map['regionSlug'] as String),
      reservedIpv6Urn: map['reservedIpv6Urn'] == null ? null : pulumi.Output.create<String>(map['reservedIpv6Urn'] as String),
    );
  }
}

