// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_agent_blocking_rules_result.dart';

/// Result data returned by getUserAgentBlockingRules.
class GetUserAgentBlockingRulesInvokeResult {
  /// A string to search for in the description of existing rules.
  final String? description;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// When true, indicates that the rule is currently paused.
  final bool? paused;
  /// The items returned by the data source
  final List<GetUserAgentBlockingRulesResult>? results;
  /// A string to search for in the user agent values of existing rules.
  final String? userAgent;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetUserAgentBlockingRulesInvokeResult].
  /// [description] A string to search for in the description of existing rules.
  /// [maxItems] Max items to fetch, default: 1000
  /// [paused] When true, indicates that the rule is currently paused.
  /// [results] The items returned by the data source
  /// [userAgent] A string to search for in the user agent values of existing rules.
  /// [zoneId] Defines an identifier.
  const GetUserAgentBlockingRulesInvokeResult({
    this.description,
    this.maxItems,
    this.paused,
    this.results,
    this.userAgent,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'maxItems': ?maxItems,
      'paused': ?paused,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserAgentBlockingRulesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userAgent': ?userAgent,
      'zoneId': ?zoneId,
    };
  }

  factory GetUserAgentBlockingRulesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetUserAgentBlockingRulesInvokeResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserAgentBlockingRulesResult>(guardedValue, (value) => GetUserAgentBlockingRulesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      userAgent: (() { final guardedValue = map['userAgent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
