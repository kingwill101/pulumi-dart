// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTokenValidationRulesFilter {
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
  /// Select rules using any of these token configurations.
  final pulumi.Input<List<String>?>? tokenConfigurations;

  /// Creates a new [GetTokenValidationRulesFilter].
  /// [action] Action to take on requests that match operations included in `selector` and fail `expression`.
  /// [enabled] Toggle rule on or off.
  /// [host] Select rules with this host in `include`.
  /// [hostname] Select rules with this host in `include`.
  /// [id] Select rules with these IDs.
  /// [tokenConfigurations] Select rules using any of these token configurations.
  const GetTokenValidationRulesFilter({
    this.action,
    this.enabled,
    this.host,
    this.hostname,
    this.id,
    this.tokenConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'enabled': ?enabled,
      'host': ?host,
      'hostname': ?hostname,
      'id': ?id,
      'tokenConfigurations': ?tokenConfigurations,
    };
  }

  factory GetTokenValidationRulesFilter.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationRulesFilter(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenConfigurations: (() { final guardedValue = map['tokenConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
