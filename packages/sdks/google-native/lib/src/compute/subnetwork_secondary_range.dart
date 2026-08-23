// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a secondary IP range of a subnetwork.
class SubnetworkSecondaryRange {
  /// The range of IP addresses belonging to this subnetwork secondary range. Provide this property when you create the subnetwork. Ranges must be unique and non-overlapping with all primary and secondary IP ranges within a network. Only IPv4 is supported. The range can be any range listed in the Valid ranges list.
  final pulumi.Input<String>? ipCidrRange;
  /// The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance. The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the subnetwork.
  final pulumi.Input<String>? rangeName;
  /// The URL of the reserved internal range.
  final pulumi.Input<String>? reservedInternalRange;

  /// Creates a new [SubnetworkSecondaryRange].
  /// [ipCidrRange] The range of IP addresses belonging to this subnetwork secondary range. Provide this property when you create the subnetwork. Ranges must be unique and non-overlapping with all primary and secondary IP ranges within a network. Only IPv4 is supported. The range can be any range listed in the Valid ranges list.
  /// [rangeName] The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance. The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the subnetwork.
  /// [reservedInternalRange] The URL of the reserved internal range.
  const SubnetworkSecondaryRange({
    this.ipCidrRange,
    this.rangeName,
    this.reservedInternalRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ?ipCidrRange,
      'rangeName': ?rangeName,
      'reservedInternalRange': ?reservedInternalRange,
    };
  }

  factory SubnetworkSecondaryRange.fromMap(Map<String, dynamic> map) {
    return SubnetworkSecondaryRange(
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeName: (() { final guardedValue = map['rangeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedInternalRange: (() { final guardedValue = map['reservedInternalRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
