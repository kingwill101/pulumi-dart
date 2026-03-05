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
    this.dropletId,
    this.ip,
    this.regionSlug,
    this.reservedIpv6Urn,
  });

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
      dropletId: (() { final guardedValue = map['dropletId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionSlug: (() { final guardedValue = map['regionSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedIpv6Urn: (() { final guardedValue = map['reservedIpv6Urn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

