// ignore_for_file: unused_element, unnecessary_cast


class NamespaceNetworkRuleSetNetworkRule {
  /// Should the Service Bus Namespace Network Rule Set ignore missing Virtual Network Service Endpoint option in the Subnet? Defaults to `false`.
  final bool? ignoreMissingVnetServiceEndpoint;
  /// The Subnet ID which should be able to access this Service Bus Namespace.
  final String subnetId;

  /// Creates a new [NamespaceNetworkRuleSetNetworkRule].
  /// [ignoreMissingVnetServiceEndpoint] Should the Service Bus Namespace Network Rule Set ignore missing Virtual Network Service Endpoint option in the Subnet? Defaults to `false`.
  /// [subnetId] The Subnet ID which should be able to access this Service Bus Namespace.
  NamespaceNetworkRuleSetNetworkRule({
    this.ignoreMissingVnetServiceEndpoint,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'subnetId': subnetId,
    };
  }

  factory NamespaceNetworkRuleSetNetworkRule.fromMap(Map<String, dynamic> map) {
    return NamespaceNetworkRuleSetNetworkRule(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : map['ignoreMissingVnetServiceEndpoint'] as bool,
      subnetId: map['subnetId'] as String,
    );
  }
}

