// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_rules_configuration.dart';
import 'get_access_rules_result.dart';

/// Result data returned by getAccessRules.
class GetAccessRulesInvokeResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  final GetAccessRulesConfiguration? configuration;
  /// Defines the direction used to sort returned rules.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Defines the search requirements. When set to `all`, all the search requirements must match. When set to `any`, only one of the search requirements has to match.
  /// Available values: "any", "all".
  final String? match;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  final String? mode;
  /// Defines the string to search for in the notes of existing IP Access rules.
  /// Notes: For example, the string 'attack' would match IP Access rules with notes 'Attack 26/02' and 'Attack 27/02'. The search is case insensitive.
  final String? notes;
  /// Defines the field used to sort returned rules.
  /// Available values: "configuration.target", "configuration.value", "mode".
  final String? order;
  /// The items returned by the data source
  final List<GetAccessRulesResult>? results;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetAccessRulesInvokeResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [configuration] Optional.
  /// [direction] Defines the direction used to sort returned rules.
  /// [match] Defines the search requirements. When set to `all`, all the search requirements must match. When set to `any`, only one of the search requirements has to match.
  /// [maxItems] Max items to fetch, default: 1000
  /// [mode] The action to apply to a matched request.
  /// [notes] Defines the string to search for in the notes of existing IP Access rules.
  /// [order] Defines the field used to sort returned rules.
  /// [results] The items returned by the data source
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetAccessRulesInvokeResult({
    this.accountId,
    this.configuration,
    this.direction,
    this.match,
    this.maxItems,
    this.mode,
    this.notes,
    this.order,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'configuration': ?configuration?.toMap(),
      'direction': ?direction,
      'match': ?match,
      'maxItems': ?maxItems,
      'mode': ?mode,
      'notes': ?notes,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccessRulesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetAccessRulesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return GetAccessRulesConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccessRulesResult>(guardedValue, (value) => GetAccessRulesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
