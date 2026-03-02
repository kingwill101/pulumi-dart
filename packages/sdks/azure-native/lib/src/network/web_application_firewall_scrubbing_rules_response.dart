// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Allow certain variables to be scrubbed on WAF logs
class WebApplicationFirewallScrubbingRulesResponse {
  /// The variable to be scrubbed from the logs.
  final pulumi.Input<String> matchVariable;
  /// When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to.
  final pulumi.Input<String>? selector;
  /// When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
  final pulumi.Input<String> selectorMatchOperator;
  /// Defines the state of log scrubbing rule. Default value is Enabled.
  final pulumi.Input<String>? state;

  /// Creates a new [WebApplicationFirewallScrubbingRulesResponse].
  /// [matchVariable] The variable to be scrubbed from the logs.
  /// [selector] When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to.
  /// [selectorMatchOperator] When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
  /// [state] Defines the state of log scrubbing rule. Default value is Enabled.
  WebApplicationFirewallScrubbingRulesResponse({
    required this.matchVariable,
    this.selector,
    required this.selectorMatchOperator,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchVariable': matchVariable,
      'selector': ?selector,
      'selectorMatchOperator': selectorMatchOperator,
      'state': ?state,
    };
  }

  factory WebApplicationFirewallScrubbingRulesResponse.fromMap(Map<String, dynamic> map) {
    return WebApplicationFirewallScrubbingRulesResponse(
      matchVariable: (map['matchVariable'] as String).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
      selectorMatchOperator: (map['selectorMatchOperator'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

