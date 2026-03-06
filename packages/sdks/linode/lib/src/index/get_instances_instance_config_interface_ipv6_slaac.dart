// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceConfigInterfaceIpv6Slaac {
  /// The SLAAC address chosen for this interface.
  final pulumi.Input<String> address;
  /// The value of `range` computed by the API. This is necessary when needing to access the range implicitly allocated using `auto`.
  final pulumi.Input<String> assignedRange;
  /// A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  final pulumi.Input<String>? range;

  /// Creates a new [GetInstancesInstanceConfigInterfaceIpv6Slaac].
  /// [address] The SLAAC address chosen for this interface.
  /// [assignedRange] The value of `range` computed by the API. This is necessary when needing to access the range implicitly allocated using `auto`.
  /// [range] A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  const GetInstancesInstanceConfigInterfaceIpv6Slaac({
    required this.address,
    required this.assignedRange,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'assignedRange': assignedRange,
      'range': ?range,
    };
  }

  factory GetInstancesInstanceConfigInterfaceIpv6Slaac.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfigInterfaceIpv6Slaac(
      address: pulumi.Input.fromValue(map['address'] as String),
      assignedRange: pulumi.Input.fromValue(map['assignedRange'] as String),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

