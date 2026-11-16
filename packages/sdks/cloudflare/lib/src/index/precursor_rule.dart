// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrecursorRule {
  /// An informative description of the rule.
  final pulumi.Input<String?>? description;
  /// Whether the rule is active.
  final pulumi.Input<bool?>? enabled;
  /// The filter expression that determines which requests the rule matches.
  final pulumi.Input<String> expression;
  /// The read-only identifier that Cloudflare assigns to the rule.
  final pulumi.Input<String?>? id;
  /// Whether Precursor shows an interstitial when it takes action on a
  /// request.
  final pulumi.Input<bool> showInterstitial;

  /// Creates a new [PrecursorRule].
  /// [description] An informative description of the rule.
  /// [enabled] Whether the rule is active.
  /// [expression] The filter expression that determines which requests the rule matches.
  /// [id] The read-only identifier that Cloudflare assigns to the rule.
  /// [showInterstitial] Whether Precursor shows an interstitial when it takes action on a
  const PrecursorRule({
    this.description,
    this.enabled,
    required this.expression,
    this.id,
    required this.showInterstitial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': ?enabled,
      'expression': expression,
      'id': ?id,
      'showInterstitial': showInterstitial,
    };
  }

  factory PrecursorRule.fromMap(Map<String, dynamic> map) {
    return PrecursorRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      showInterstitial: pulumi.Input.fromValue(map['showInterstitial'] as bool),
    );
  }
}
