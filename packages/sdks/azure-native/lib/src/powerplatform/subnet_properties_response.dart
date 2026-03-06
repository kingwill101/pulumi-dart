// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a subnet.
class SubnetPropertiesResponse {
  /// Subnet name.
  final pulumi.Input<String>? name;

  /// Creates a new [SubnetPropertiesResponse].
  /// [name] Subnet name.
  const SubnetPropertiesResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SubnetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SubnetPropertiesResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

