// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountVirtualNetworkRule {
  /// The ID of the virtual network subnet.
  final pulumi.Input<String> id;
  /// If set to true, the specified subnet will be added as a virtual network rule even if its CosmosDB service endpoint is not active. Defaults to `false`.
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;

  /// Creates a new [AccountVirtualNetworkRule].
  /// [id] The ID of the virtual network subnet.
  /// [ignoreMissingVnetServiceEndpoint] If set to true, the specified subnet will be added as a virtual network rule even if its CosmosDB service endpoint is not active. Defaults to `false`.
  AccountVirtualNetworkRule({
    required this.id,
    this.ignoreMissingVnetServiceEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
    };
  }

  factory AccountVirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return AccountVirtualNetworkRule(
      id: pulumi.Input.fromValue(map['id'] as String),
      ignoreMissingVnetServiceEndpoint: (() { final guardedValue = map['ignoreMissingVnetServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

