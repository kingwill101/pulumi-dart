// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandaloneGatewaySku {
  /// The number of deployed units of the SKU. Defaults to `1`.
  final pulumi.Input<int>? capacity;
  /// The name of the SKU. The only possible value is `WorkspaceGatewayPremium`.
  final pulumi.Input<String> name;

  /// Creates a new [StandaloneGatewaySku].
  /// [capacity] The number of deployed units of the SKU. Defaults to `1`.
  /// [name] The name of the SKU. The only possible value is `WorkspaceGatewayPremium`.
  StandaloneGatewaySku({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory StandaloneGatewaySku.fromMap(Map<String, dynamic> map) {
    return StandaloneGatewaySku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

