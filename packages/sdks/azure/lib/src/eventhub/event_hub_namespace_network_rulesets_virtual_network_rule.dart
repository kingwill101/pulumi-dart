// ignore_for_file: unused_element, unnecessary_cast


class EventHubNamespaceNetworkRulesetsVirtualNetworkRule {
  /// Are missing virtual network service endpoints ignored?
  final bool? ignoreMissingVirtualNetworkServiceEndpoint;
  /// The id of the subnet to match on.
  final String subnetId;

  /// Creates a new [EventHubNamespaceNetworkRulesetsVirtualNetworkRule].
  /// [ignoreMissingVirtualNetworkServiceEndpoint] Are missing virtual network service endpoints ignored?
  /// [subnetId] The id of the subnet to match on.
  EventHubNamespaceNetworkRulesetsVirtualNetworkRule({
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
      ignoreMissingVirtualNetworkServiceEndpoint: map['ignoreMissingVirtualNetworkServiceEndpoint'] == null ? null : map['ignoreMissingVirtualNetworkServiceEndpoint'] as bool,
      subnetId: map['subnetId'] as String,
    );
  }
}

