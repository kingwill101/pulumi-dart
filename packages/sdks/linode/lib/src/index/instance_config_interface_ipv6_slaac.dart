// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceConfigInterfaceIpv6Slaac {
  /// The SLAAC address chosen for this interface.
  final pulumi.Input<String>? address;
  /// The value of `range` computed by the API. This is necessary when needing to access the range implicitly allocated using `auto`.
  final pulumi.Input<String>? assignedRange;
  /// A SLAAC prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  final pulumi.Input<String>? range;

  /// Creates a new [InstanceConfigInterfaceIpv6Slaac].
  /// [address] The SLAAC address chosen for this interface.
  /// [assignedRange] The value of `range` computed by the API. This is necessary when needing to access the range implicitly allocated using `auto`.
  /// [range] A SLAAC prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  InstanceConfigInterfaceIpv6Slaac({
    this.address,
    this.assignedRange,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'assignedRange': ?assignedRange,
      'range': ?range,
    };
  }

  factory InstanceConfigInterfaceIpv6Slaac.fromMap(Map<String, dynamic> map) {
    return InstanceConfigInterfaceIpv6Slaac(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      assignedRange: map['assignedRange'] == null ? null : (map['assignedRange']! as String).input(),
      range: map['range'] == null ? null : (map['range']! as String).input(),
    );
  }
}

