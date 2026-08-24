// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallRuleFilter {
  /// An informative summary of the filter.
  final pulumi.Input<String?>? description;
  /// The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  final pulumi.Input<String?>? expression;
  /// The unique identifier of the filter.
  final pulumi.Input<String?>? id;
  /// When true, indicates that the filter is currently paused.
  final pulumi.Input<bool?>? paused;
  /// A short reference tag. Allows you to select related filters.
  final pulumi.Input<String?>? ref;

  /// Creates a new [FirewallRuleFilter].
  /// [description] An informative summary of the filter.
  /// [expression] The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  /// [id] The unique identifier of the filter.
  /// [paused] When true, indicates that the filter is currently paused.
  /// [ref] A short reference tag. Allows you to select related filters.
  const FirewallRuleFilter({
    this.description,
    this.expression,
    this.id,
    this.paused,
    this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': ?expression,
      'id': ?id,
      'paused': ?paused,
      'ref': ?ref,
    };
  }

  factory FirewallRuleFilter.fromMap(Map<String, dynamic> map) {
    return FirewallRuleFilter(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
