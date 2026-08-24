// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_rules_result.dart';

/// Result data returned by getFirewallRules.
class GetFirewallRulesInvokeResult {
  /// The action to search for. Must be an exact match.
  final String? action;
  /// A case-insensitive string to find in the description.
  final String? description;
  /// The unique identifier of the firewall rule.
  final String? id;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// When true, indicates that the firewall rule is currently paused.
  final bool? paused;
  /// The items returned by the data source
  final List<GetFirewallRulesResult>? results;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetFirewallRulesInvokeResult].
  /// [action] The action to search for. Must be an exact match.
  /// [description] A case-insensitive string to find in the description.
  /// [id] The unique identifier of the firewall rule.
  /// [maxItems] Max items to fetch, default: 1000
  /// [paused] When true, indicates that the firewall rule is currently paused.
  /// [results] The items returned by the data source
  /// [zoneId] Defines an identifier.
  const GetFirewallRulesInvokeResult({
    this.action,
    this.description,
    this.id,
    this.maxItems,
    this.paused,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'id': ?id,
      'maxItems': ?maxItems,
      'paused': ?paused,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallRulesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetFirewallRulesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallRulesInvokeResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallRulesResult>(guardedValue, (value) => GetFirewallRulesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
