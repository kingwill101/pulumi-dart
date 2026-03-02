// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Compute Engine forwarding rule.
class ForwardingRuleInfoResponseNetworkmanagementV1beta1 {
  /// Name of a Compute Engine forwarding rule.
  final pulumi.Input<String> displayName;
  /// Port range defined in the forwarding rule that matches the test.
  final pulumi.Input<String> matchedPortRange;
  /// Protocol defined in the forwarding rule that matches the test.
  final pulumi.Input<String> matchedProtocol;
  /// Network URI. Only valid for Internal Load Balancer.
  final pulumi.Input<String> networkUri;
  /// Target type of the forwarding rule.
  final pulumi.Input<String> target;
  /// URI of a Compute Engine forwarding rule.
  final pulumi.Input<String> uri;
  /// VIP of the forwarding rule.
  final pulumi.Input<String> vip;

  /// Creates a new [ForwardingRuleInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a Compute Engine forwarding rule.
  /// [matchedPortRange] Port range defined in the forwarding rule that matches the test.
  /// [matchedProtocol] Protocol defined in the forwarding rule that matches the test.
  /// [networkUri] Network URI. Only valid for Internal Load Balancer.
  /// [target] Target type of the forwarding rule.
  /// [uri] URI of a Compute Engine forwarding rule.
  /// [vip] VIP of the forwarding rule.
  ForwardingRuleInfoResponseNetworkmanagementV1beta1({
    required this.displayName,
    required this.matchedPortRange,
    required this.matchedProtocol,
    required this.networkUri,
    required this.target,
    required this.uri,
    required this.vip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'matchedPortRange': matchedPortRange,
      'matchedProtocol': matchedProtocol,
      'networkUri': networkUri,
      'target': target,
      'uri': uri,
      'vip': vip,
    };
  }

  factory ForwardingRuleInfoResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleInfoResponseNetworkmanagementV1beta1(
      displayName: (map['displayName'] as String).input(),
      matchedPortRange: (map['matchedPortRange'] as String).input(),
      matchedProtocol: (map['matchedProtocol'] as String).input(),
      networkUri: (map['networkUri'] as String).input(),
      target: (map['target'] as String).input(),
      uri: (map['uri'] as String).input(),
      vip: (map['vip'] as String).input(),
    );
  }
}

