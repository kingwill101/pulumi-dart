// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventHubNamespaceNetworkRulesetsVirtualNetworkRule {
  /// Are missing virtual network service endpoints ignored?
  final pulumi.Input<bool>? ignoreMissingVirtualNetworkServiceEndpoint;
  /// The id of the subnet to match on.
  final pulumi.Input<String> subnetId;

  /// Creates a new [EventHubNamespaceNetworkRulesetsVirtualNetworkRule].
  /// [ignoreMissingVirtualNetworkServiceEndpoint] Are missing virtual network service endpoints ignored?
  /// [subnetId] The id of the subnet to match on.
  const EventHubNamespaceNetworkRulesetsVirtualNetworkRule({
    this.ignoreMissingVirtualNetworkServiceEndpoint,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVirtualNetworkServiceEndpoint': ?ignoreMissingVirtualNetworkServiceEndpoint,
      'subnetId': subnetId,
    };
  }

  factory EventHubNamespaceNetworkRulesetsVirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return EventHubNamespaceNetworkRulesetsVirtualNetworkRule(
      ignoreMissingVirtualNetworkServiceEndpoint: (() { final guardedValue = map['ignoreMissingVirtualNetworkServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
