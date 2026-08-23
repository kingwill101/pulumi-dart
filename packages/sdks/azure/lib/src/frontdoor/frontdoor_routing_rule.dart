// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_routing_rule_forwarding_configuration.dart';
import 'frontdoor_routing_rule_redirect_configuration.dart';

class FrontdoorRoutingRule {
  /// Protocol schemes to match for the Backend Routing Rule. Possible values are `Http` and `Https`.
  final pulumi.Input<List<String>> acceptedProtocols;
  /// `Enable` or `Disable` use of this Backend Routing Rule. Permitted values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// A `forwardingConfiguration` block as defined below.
  final pulumi.Input<FrontdoorRoutingRuleForwardingConfiguration>? forwardingConfiguration;
  /// The names of the `frontendEndpoint` blocks within this resource to associate with this `routingRule`.
  final pulumi.Input<List<String>> frontendEndpoints;
  /// The ID of the FrontDoor.
  final pulumi.Input<String>? id;
  /// Specifies the name of the Routing Rule.
  final pulumi.Input<String> name;
  /// The route patterns for the Backend Routing Rule.
  final pulumi.Input<List<String>> patternsToMatches;
  /// A `redirectConfiguration` block as defined below.
  final pulumi.Input<FrontdoorRoutingRuleRedirectConfiguration>? redirectConfiguration;

  /// Creates a new [FrontdoorRoutingRule].
  /// [acceptedProtocols] Protocol schemes to match for the Backend Routing Rule. Possible values are `Http` and `Https`.
  /// [enabled] `Enable` or `Disable` use of this Backend Routing Rule. Permitted values are `true` or `false`. Defaults to `true`.
  /// [forwardingConfiguration] A `forwardingConfiguration` block as defined below.
  /// [frontendEndpoints] The names of the `frontendEndpoint` blocks within this resource to associate with this `routingRule`.
  /// [id] The ID of the FrontDoor.
  /// [name] Specifies the name of the Routing Rule.
  /// [patternsToMatches] The route patterns for the Backend Routing Rule.
  /// [redirectConfiguration] A `redirectConfiguration` block as defined below.
  const FrontdoorRoutingRule({
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
      acceptedProtocols: pulumi.Input.fromValue((map['acceptedProtocols'] as List).cast<String>()),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardingConfiguration: (() { final guardedValue = map['forwardingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorRoutingRuleForwardingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontendEndpoints: pulumi.Input.fromValue((map['frontendEndpoints'] as List).cast<String>()),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      patternsToMatches: pulumi.Input.fromValue((map['patternsToMatches'] as List).cast<String>()),
      redirectConfiguration: (() { final guardedValue = map['redirectConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorRoutingRuleRedirectConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
