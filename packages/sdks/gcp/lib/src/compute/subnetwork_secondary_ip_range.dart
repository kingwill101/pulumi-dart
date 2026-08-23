// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubnetworkSecondaryIpRange {
  /// The range of IP addresses belonging to this subnetwork secondary
  /// range. Provide this property when you create the subnetwork.
  /// Ranges must be unique and non-overlapping with all primary and
  /// secondary IP ranges within a network. Only IPv4 is supported.
  /// Field is optional when `reservedInternalRange` is defined, otherwise required.
  final pulumi.Input<String>? ipCidrRange;
  /// (Optional, Beta)
  /// Reference to a Public Delegated Prefix (PDP) for BYOIP.
  /// This field should be specified for configuring BYOGUA internal IPv6 secondary range.
  /// When specified along with the ip_cidr_range, the ipCidrRange must lie within the PDP referenced by the `ipCollection` field.
  /// When specified without the ip_cidr_range, the range is auto-allocated from the PDP referenced by the `ipCollection` field.
  final pulumi.Input<String>? ipCollection;
  /// (Optional, Beta)
  /// The IP version of the secondary range. If not specified, IPV4 is used.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? ipVersion;
  /// The name associated with this subnetwork secondary range, used
  /// when adding an alias IP range to a VM instance. The name must
  /// be 1-63 characters long, and comply with RFC1035. The name
  /// must be unique within the subnetwork.
  final pulumi.Input<String> rangeName;
  /// The ID of the reserved internal range. Must be prefixed with `networkconnectivity.googleapis.com`
  /// E.g. `networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}`
  final pulumi.Input<String>? reservedInternalRange;

  /// Creates a new [SubnetworkSecondaryIpRange].
  /// [ipCidrRange] The range of IP addresses belonging to this subnetwork secondary
  /// [ipCollection] (Optional, Beta)
  /// [ipVersion] (Optional, Beta)
  /// [rangeName] The name associated with this subnetwork secondary range, used
  /// [reservedInternalRange] The ID of the reserved internal range. Must be prefixed with `networkconnectivity.googleapis.com`
  const SubnetworkSecondaryIpRange({
    this.ipCidrRange,
    this.ipCollection,
    this.ipVersion,
    required this.rangeName,
    this.reservedInternalRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ?ipCidrRange,
      'ipCollection': ?ipCollection,
      'ipVersion': ?ipVersion,
      'rangeName': rangeName,
      'reservedInternalRange': ?reservedInternalRange,
    };
  }

  factory SubnetworkSecondaryIpRange.fromMap(Map<String, dynamic> map) {
    return SubnetworkSecondaryIpRange(
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipCollection: (() { final guardedValue = map['ipCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeName: pulumi.Input.fromValue(map['rangeName'] as String),
      reservedInternalRange: (() { final guardedValue = map['reservedInternalRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
