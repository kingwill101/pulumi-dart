// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_properties_response.dart';

/// Settings concerning the virtual network.
class VirtualNetworkPropertiesResponse {
  /// Uri of the virtual network.
  final String? id;
  /// Properties of a subnet.
  final SubnetPropertiesResponse? subnet;

  /// Creates a new [VirtualNetworkPropertiesResponse].
  /// [id] Uri of the virtual network.
  /// [subnet] Properties of a subnet.
  VirtualNetworkPropertiesResponse({
    this.id,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory VirtualNetworkPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponse(
      id: map['id'] == null ? null : map['id'] as String,
      subnet: map['subnet'] == null ? null : SubnetPropertiesResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

