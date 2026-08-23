// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_response_v1.dart';

/// Properties of route target address
class RouteTargetAddressPropertiesFormatResponse {
  /// The private IPv4 or IPv6 address of the service gateway route target address.
  final pulumi.Input<String>? privateIPAddress;
  /// The Private IP allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// The reference to the subnet resource.
  final pulumi.Input<SubnetResponseV1>? subnet;

  /// Creates a new [RouteTargetAddressPropertiesFormatResponse].
  /// [privateIPAddress] The private IPv4 or IPv6 address of the service gateway route target address.
  /// [privateIPAllocationMethod] The Private IP allocation method.
  /// [subnet] The reference to the subnet resource.
  const RouteTargetAddressPropertiesFormatResponse({
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetResponseV1, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory RouteTargetAddressPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return RouteTargetAddressPropertiesFormatResponse(
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetResponseV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
