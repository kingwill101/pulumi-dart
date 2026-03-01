// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_response.dart';

/// Properties of route target address
class RouteTargetAddressPropertiesFormatResponse {
  /// The private IPv4 or IPv6 address of the service gateway route target address.
  final String? privateIPAddress;
  /// The Private IP allocation method.
  final String? privateIPAllocationMethod;
  /// The reference to the subnet resource.
  final SubnetResponse? subnet;

  /// Creates a new [RouteTargetAddressPropertiesFormatResponse].
  /// [privateIPAddress] The private IPv4 or IPv6 address of the service gateway route target address.
  /// [privateIPAllocationMethod] The Private IP allocation method.
  /// [subnet] The reference to the subnet resource.
  RouteTargetAddressPropertiesFormatResponse({
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory RouteTargetAddressPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return RouteTargetAddressPropertiesFormatResponse(
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      subnet: map['subnet'] == null ? null : SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

