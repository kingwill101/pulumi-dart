// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_rule_filter_configuration.dart';

class GetAccessRuleFilter {
  final pulumi.Input<GetAccessRuleFilterConfiguration?>? configuration;
  /// Defines the direction used to sort returned rules.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Defines the search requirements. When set to `all`, all the search requirements must match. When set to `any`, only one of the search requirements has to match.
  /// Available values: "any", "all".
  final pulumi.Input<String> match;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  final pulumi.Input<String?>? mode;
  /// Defines the string to search for in the notes of existing IP Access rules.
  /// Notes: For example, the string 'attack' would match IP Access rules with notes 'Attack 26/02' and 'Attack 27/02'. The search is case insensitive.
  final pulumi.Input<String?>? notes;
  /// Defines the field used to sort returned rules.
  /// Available values: "configuration.target", "configuration.value", "mode".
  final pulumi.Input<String?>? order;

  /// Creates a new [GetAccessRuleFilter].
  /// [configuration] Optional.
  /// [direction] Defines the direction used to sort returned rules.
  /// [match] Defines the search requirements. When set to `all`, all the search requirements must match. When set to `any`, only one of the search requirements has to match.
  /// [mode] The action to apply to a matched request.
  /// [notes] Defines the string to search for in the notes of existing IP Access rules.
  /// [order] Defines the field used to sort returned rules.
  const GetAccessRuleFilter({
    this.configuration,
    this.direction,
    required this.match,
    this.mode,
    this.notes,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<GetAccessRuleFilterConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'direction': ?direction,
      'match': match,
      'mode': ?mode,
      'notes': ?notes,
      'order': ?order,
    };
  }

  factory GetAccessRuleFilter.fromMap(Map<String, dynamic> map) {
    return GetAccessRuleFilter(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAccessRuleFilterConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: pulumi.Input.fromValue(map['match'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
