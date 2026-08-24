// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_cloud_connector_rules_get_cloud_connector_rules_args_doc}
/// Arguments for getCloudConnectorRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_cloud_connector_rules_get_cloud_connector_rules_args_doc}
class GetCloudConnectorRulesArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCloudConnectorRulesArgs].
  /// [zoneId] Identifier.
  const GetCloudConnectorRulesArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetCloudConnectorRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectorRulesArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
