// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_routing_rule_forwarding_configuration.dart';
import 'frontdoor_routing_rule_redirect_configuration.dart';

class FrontdoorRoutingRule {
  /// Protocol schemes to match for the Backend Routing Rule. Possible values are `Http` and `Https`.
  final pulumi.Input<List<String>> acceptedProtocols;
  /// `Enable` or `Disable` use of this Backend Routing Rule. Permitted values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// A `forwarding_configuration` block as defined below.
  final pulumi.Input<FrontdoorRoutingRuleForwardingConfiguration>? forwardingConfiguration;
  /// The names of the `frontend_endpoint` blocks within this resource to associate with this `routing_rule`.
  final pulumi.Input<List<String>> frontendEndpoints;
  /// The ID of the FrontDoor.
  final pulumi.Input<String>? id;
  /// Specifies the name of the Routing Rule.
  final pulumi.Input<String> name;
  /// The route patterns for the Backend Routing Rule.
  final pulumi.Input<List<String>> patternsToMatches;
  /// A `redirect_configuration` block as defined below.
  final pulumi.Input<FrontdoorRoutingRuleRedirectConfiguration>? redirectConfiguration;

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
      'forwardingConfiguration': ?pulumi.Input.mapOptionalInputValue<FrontdoorRoutingRuleForwardingConfiguration, Map<String, dynamic>>(forwardingConfiguration, (value) => value.toMap()),
      'frontendEndpoints': frontendEndpoints,
      'id': ?id,
      'name': name,
      'patternsToMatches': patternsToMatches,
      'redirectConfiguration': ?pulumi.Input.mapOptionalInputValue<FrontdoorRoutingRuleRedirectConfiguration, Map<String, dynamic>>(redirectConfiguration, (value) => value.toMap()),
    };
  }

  factory FrontdoorRoutingRule.fromMap(Map<String, dynamic> map) {
    return FrontdoorRoutingRule(
      acceptedProtocols: ((map['acceptedProtocols'] as List).cast<String>()).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      forwardingConfiguration: map['forwardingConfiguration'] == null ? null : (FrontdoorRoutingRuleForwardingConfiguration.fromMap((map['forwardingConfiguration'] as Map).cast<String, dynamic>())).input(),
      frontendEndpoints: ((map['frontendEndpoints'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      patternsToMatches: ((map['patternsToMatches'] as List).cast<String>()).input(),
      redirectConfiguration: map['redirectConfiguration'] == null ? null : (FrontdoorRoutingRuleRedirectConfiguration.fromMap((map['redirectConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

