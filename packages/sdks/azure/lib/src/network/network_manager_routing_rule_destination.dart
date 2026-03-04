// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagerRoutingRuleDestination {
  /// The destination address.
  final pulumi.Input<String> address;

  /// The type of destination. Possible values are `AddressPrefix` and `ServiceTag`.
  final pulumi.Input<String> type;

  /// Creates a new [NetworkManagerRoutingRuleDestination].
  /// [address] The destination address.
  /// [type] The type of destination. Possible values are `AddressPrefix` and `ServiceTag`.
  NetworkManagerRoutingRuleDestination({
    required this.address,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': address, 'type': type};
  }

  factory NetworkManagerRoutingRuleDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkManagerRoutingRuleDestination(
      address: pulumi.Input.fromValue(map['address'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
