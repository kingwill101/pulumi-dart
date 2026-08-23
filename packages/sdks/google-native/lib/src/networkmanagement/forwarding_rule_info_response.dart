// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Compute Engine forwarding rule.
class ForwardingRuleInfoResponse {
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

  /// Creates a new [ForwardingRuleInfoResponse].
  /// [displayName] Name of a Compute Engine forwarding rule.
  /// [matchedPortRange] Port range defined in the forwarding rule that matches the test.
  /// [matchedProtocol] Protocol defined in the forwarding rule that matches the test.
  /// [networkUri] Network URI. Only valid for Internal Load Balancer.
  /// [target] Target type of the forwarding rule.
  /// [uri] URI of a Compute Engine forwarding rule.
  /// [vip] VIP of the forwarding rule.
  const ForwardingRuleInfoResponse({
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

  factory ForwardingRuleInfoResponse.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleInfoResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      matchedPortRange: pulumi.Input.fromValue(map['matchedPortRange'] as String),
      matchedProtocol: pulumi.Input.fromValue(map['matchedProtocol'] as String),
      networkUri: pulumi.Input.fromValue(map['networkUri'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      vip: pulumi.Input.fromValue(map['vip'] as String),
    );
  }
}
