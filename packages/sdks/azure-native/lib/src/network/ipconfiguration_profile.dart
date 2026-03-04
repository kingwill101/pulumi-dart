// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet.dart';

/// IP configuration profile child resource.
class IPConfigurationProfile {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The name of the resource. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// The reference to the subnet resource to create a container network interface ip configuration.
  final pulumi.Input<Subnet>? subnet;

  /// Creates a new [IPConfigurationProfile].
  /// [id] Resource ID.
  /// [name] The name of the resource. This name can be used to access the resource.
  /// [subnet] The reference to the subnet resource to create a container network interface ip configuration.
  IPConfigurationProfile({this.id, this.name, this.subnet});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'subnet':
          ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(
            subnet,
            (value) => value.toMap(),
          ),
    };
  }

  factory IPConfigurationProfile.fromMap(Map<String, dynamic> map) {
    return IPConfigurationProfile(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Subnet.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
