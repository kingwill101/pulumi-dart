// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a subnet.
class SubnetProperties {
  /// Subnet name.
  final pulumi.Input<String?>? name;

  /// Creates a new [SubnetProperties].
  /// [name] Subnet name.
  const SubnetProperties({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SubnetProperties.fromMap(Map<String, dynamic> map) {
    return SubnetProperties(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
