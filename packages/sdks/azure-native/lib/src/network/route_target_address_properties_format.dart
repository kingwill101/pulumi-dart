// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet.dart';

/// Properties of route target address
class RouteTargetAddressPropertiesFormat {
  /// The private IPv4 or IPv6 address of the service gateway route target address.
  final pulumi.Input<String>? privateIPAddress;
  /// The Private IP allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// The reference to the subnet resource.
  final pulumi.Input<Subnet>? subnet;

  /// Creates a new [RouteTargetAddressPropertiesFormat].
  /// [privateIPAddress] The private IPv4 or IPv6 address of the service gateway route target address.
  /// [privateIPAllocationMethod] The Private IP allocation method.
  /// [subnet] The reference to the subnet resource.
  RouteTargetAddressPropertiesFormat({
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'subnet': ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory RouteTargetAddressPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return RouteTargetAddressPropertiesFormat(
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress']! as String).input(),
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : (map['privateIPAllocationMethod']! as String).input(),
      subnet: map['subnet'] == null ? null : (Subnet.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

