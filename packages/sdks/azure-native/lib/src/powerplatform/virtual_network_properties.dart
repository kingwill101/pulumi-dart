// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_properties.dart';

/// Settings concerning the virtual network.
class VirtualNetworkProperties {
  /// Uri of the virtual network.
  final pulumi.Input<String>? id;
  /// Properties of a subnet.
  final pulumi.Input<SubnetProperties>? subnet;

  /// Creates a new [VirtualNetworkProperties].
  /// [id] Uri of the virtual network.
  /// [subnet] Properties of a subnet.
  VirtualNetworkProperties({
    this.id,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetProperties, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkProperties.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkProperties(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

