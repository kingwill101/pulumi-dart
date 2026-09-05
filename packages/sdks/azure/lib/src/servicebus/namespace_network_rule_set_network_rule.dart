// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NamespaceNetworkRuleSetNetworkRule {
  /// Should the Service Bus Namespace Network Rule Set ignore missing Virtual Network Service Endpoint option in the Subnet? Defaults to `false`.
  final pulumi.Input<bool?>? ignoreMissingVnetServiceEndpoint;
  /// The Subnet ID which should be able to access this Service Bus Namespace.
  final pulumi.Input<String> subnetId;

  /// Creates a new [NamespaceNetworkRuleSetNetworkRule].
  /// [ignoreMissingVnetServiceEndpoint] Should the Service Bus Namespace Network Rule Set ignore missing Virtual Network Service Endpoint option in the Subnet? Defaults to `false`.
  /// [subnetId] The Subnet ID which should be able to access this Service Bus Namespace.
  const NamespaceNetworkRuleSetNetworkRule({
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
      ignoreMissingVnetServiceEndpoint: (() { final guardedValue = map['ignoreMissingVnetServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
