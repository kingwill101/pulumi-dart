// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_page_shield_connections_get_page_shield_connections_args_doc}
/// Arguments for getPageShieldConnections.
/// {@endtemplate}
/// {@macro pulumi_index_get_page_shield_connections_get_page_shield_connections_args_doc}
class GetPageShieldConnectionsArgs {
  /// Identifier
  final pulumi.Input<String> connectionId;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetPageShieldConnectionsArgs].
  /// [connectionId] Identifier
  /// [zoneId] Identifier
  const GetPageShieldConnectionsArgs({
    required this.connectionId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetPageShieldConnectionsArgs(
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
