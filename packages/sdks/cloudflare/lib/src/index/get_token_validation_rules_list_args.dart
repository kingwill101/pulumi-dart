// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_token_validation_rules_list_get_token_validation_rules_list_args_doc}
/// Arguments for getTokenValidationRulesList.
/// {@endtemplate}
/// {@macro pulumi_index_get_token_validation_rules_list_get_token_validation_rules_list_args_doc}
class GetTokenValidationRulesListArgs {
  /// Action to take on requests that match operations included in `selector` and fail `expression`.
  /// Available values: "log", "block".
  final pulumi.Input<String?>? action;
  /// Toggle rule on or off.
  final pulumi.Input<bool?>? enabled;
  /// Select rules with this host in `include`.
  final pulumi.Input<String?>? host;
  /// Select rules with this host in `include`.
  final pulumi.Input<String?>? hostname;
  /// Select rules with these IDs.
  final pulumi.Input<String?>? id;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Select rules with these IDs.
  final pulumi.Input<String?>? ruleId;
  /// Select rules using any of these token configurations.
  final pulumi.Input<List<String>?>? tokenConfigurations;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetTokenValidationRulesListArgs].
  /// [action] Action to take on requests that match operations included in `selector` and fail `expression`.
  /// [enabled] Toggle rule on or off.
  /// [host] Select rules with this host in `include`.
  /// [hostname] Select rules with this host in `include`.
  /// [id] Select rules with these IDs.
  /// [maxItems] Max items to fetch, default: 1000
  /// [ruleId] Select rules with these IDs.
  /// [tokenConfigurations] Select rules using any of these token configurations.
  /// [zoneId] Identifier.
  const GetTokenValidationRulesListArgs({
    this.action,
    this.enabled,
    this.host,
    this.hostname,
    this.id,
    this.maxItems,
    this.ruleId,
    this.tokenConfigurations,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'enabled': ?enabled,
      'host': ?host,
      'hostname': ?hostname,
      'id': ?id,
      'maxItems': ?maxItems,
      'ruleId': ?ruleId,
      'tokenConfigurations': ?tokenConfigurations,
      'zoneId': ?zoneId,
    };
  }

  factory GetTokenValidationRulesListArgs.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesListArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenConfigurations: (() { final guardedValue = map['tokenConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
