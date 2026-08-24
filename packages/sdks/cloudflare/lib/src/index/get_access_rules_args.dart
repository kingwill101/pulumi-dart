// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_rules_configuration.dart';

/// {@template pulumi_index_get_access_rules_get_access_rules_args_doc}
/// Arguments for getAccessRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_access_rules_get_access_rules_args_doc}
class GetAccessRulesArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetAccessRulesConfiguration?>? configuration;
  /// Defines the direction used to sort returned rules.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Defines the search requirements. When set to `all`, all the search requirements must match. When set to `any`, only one of the search requirements has to match.
  /// Available values: "any", "all".
  final pulumi.Input<String?>? match;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  final pulumi.Input<String?>? mode;
  /// Defines the string to search for in the notes of existing IP Access rules.
  /// Notes: For example, the string 'attack' would match IP Access rules with notes 'Attack 26/02' and 'Attack 27/02'. The search is case insensitive.
  final pulumi.Input<String?>? notes;
  /// Defines the field used to sort returned rules.
  /// Available values: "configuration.target", "configuration.value", "mode".
  final pulumi.Input<String?>? order;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetAccessRulesArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [configuration] Optional.
  /// [direction] Defines the direction used to sort returned rules.
  /// [match] Defines the search requirements. When set to `all`, all the search requirements must match. When set to `any`, only one of the search requirements has to match.
  /// [maxItems] Max items to fetch, default: 1000
  /// [mode] The action to apply to a matched request.
  /// [notes] Defines the string to search for in the notes of existing IP Access rules.
  /// [order] Defines the field used to sort returned rules.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetAccessRulesArgs({
    this.accountId,
    this.configuration,
    this.direction,
    this.match,
    this.maxItems,
    this.mode,
    this.notes,
    this.order,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'configuration': ?pulumi.Input.mapOptionalInputValue<GetAccessRulesConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'direction': ?direction,
      'match': ?match,
      'maxItems': ?maxItems,
      'mode': ?mode,
      'notes': ?notes,
      'order': ?order,
      'zoneId': ?zoneId,
    };
  }

  factory GetAccessRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAccessRulesConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
