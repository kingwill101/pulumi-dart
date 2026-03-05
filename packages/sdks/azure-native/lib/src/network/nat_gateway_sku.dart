// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of nat gateway.
class NatGatewaySku {
  /// Name of Nat Gateway SKU.
  final pulumi.Input<String>? name;

  /// Creates a new [NatGatewaySku].
  /// [name] Name of Nat Gateway SKU.
  NatGatewaySku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory NatGatewaySku.fromMap(Map<String, dynamic> map) {
    return NatGatewaySku(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

