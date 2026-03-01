// ignore_for_file: unused_element, unnecessary_cast

import 'frontdoor_routing_rule_forwarding_configuration.dart';
import 'frontdoor_routing_rule_redirect_configuration.dart';

class FrontdoorRoutingRule {
  /// Protocol schemes to match for the Backend Routing Rule. Possible values are `Http` and `Https`.
  final List<String> acceptedProtocols;
  /// `Enable` or `Disable` use of this Backend Routing Rule. Permitted values are `true` or `false`. Defaults to `true`.
  final bool? enabled;
  /// A `forwarding_configuration` block as defined below.
  final FrontdoorRoutingRuleForwardingConfiguration? forwardingConfiguration;
  /// The names of the `frontend_endpoint` blocks within this resource to associate with this `routing_rule`.
  final List<String> frontendEndpoints;
  /// The ID of the FrontDoor.
  final String? id;
  /// Specifies the name of the Routing Rule.
  final String name;
  /// The route patterns for the Backend Routing Rule.
  final List<String> patternsToMatches;
  /// A `redirect_configuration` block as defined below.
  final FrontdoorRoutingRuleRedirectConfiguration? redirectConfiguration;

  /// Creates a new [FrontdoorRoutingRule].
  /// [acceptedProtocols] Protocol schemes to match for the Backend Routing Rule. Possible values are `Http` and `Https`.
  /// [enabled] `Enable` or `Disable` use of this Backend Routing Rule. Permitted values are `true` or `false`. Defaults to `true`.
  /// [forwardingConfiguration] A `forwarding_configuration` block as defined below.
  /// [frontendEndpoints] The names of the `frontend_endpoint` blocks within this resource to associate with this `routing_rule`.
  /// [id] The ID of the FrontDoor.
  /// [name] Specifies the name of the Routing Rule.
  /// [patternsToMatches] The route patterns for the Backend Routing Rule.
  /// [redirectConfiguration] A `redirect_configuration` block as defined below.
  FrontdoorRoutingRule({
    required this.acceptedProtocols,
    this.enabled,
    this.forwardingConfiguration,
    required this.frontendEndpoints,
    this.id,
    required this.name,
    required this.patternsToMatches,
    this.redirectConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedProtocols': acceptedProtocols,
      'enabled': ?enabled,
      'forwardingConfiguration': ?forwardingConfiguration == null ? null : forwardingConfiguration!.toMap(),
      'frontendEndpoints': frontendEndpoints,
      'id': ?id,
      'name': name,
      'patternsToMatches': patternsToMatches,
      'redirectConfiguration': ?redirectConfiguration == null ? null : redirectConfiguration!.toMap(),
    };
  }

  factory FrontdoorRoutingRule.fromMap(Map<String, dynamic> map) {
    return FrontdoorRoutingRule(
      acceptedProtocols: (map['acceptedProtocols'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      forwardingConfiguration: map['forwardingConfiguration'] == null ? null : FrontdoorRoutingRuleForwardingConfiguration.fromMap((map['forwardingConfiguration'] as Map).cast<String, dynamic>()),
      frontendEndpoints: (map['frontendEndpoints'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      patternsToMatches: (map['patternsToMatches'] as List).cast<String>(),
      redirectConfiguration: map['redirectConfiguration'] == null ? null : FrontdoorRoutingRuleRedirectConfiguration.fromMap((map['redirectConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

