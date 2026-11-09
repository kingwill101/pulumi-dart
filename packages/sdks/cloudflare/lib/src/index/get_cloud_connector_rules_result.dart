// ignore_for_file: unused_element, unnecessary_cast

import 'get_cloud_connector_rules_parameters.dart';

/// Result data returned by getCloudConnectorRules.
class GetCloudConnectorRulesResult {
  /// Cloud Provider type
  /// Available values: "aws*s3", "cloudflare*r2", "gcp*storage", "azure*storage", "ociStorage".
  final String? cloudConnectorRulesProvider;
  final String? description;
  final bool? enabled;
  final String? expression;
  /// Identifier.
  final String? id;
  /// Parameters of Cloud Connector Rule
  final GetCloudConnectorRulesParameters? parameters;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCloudConnectorRulesResult].
  /// [cloudConnectorRulesProvider] Cloud Provider type
  /// [description] Optional.
  /// [enabled] Optional.
  /// [expression] Optional.
  /// [id] Identifier.
  /// [parameters] Parameters of Cloud Connector Rule
  /// [zoneId] Identifier.
  const GetCloudConnectorRulesResult({
    this.cloudConnectorRulesProvider,
    this.description,
    this.enabled,
    this.expression,
    this.id,
    this.parameters,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudConnectorRulesProvider': ?cloudConnectorRulesProvider,
      'description': ?description,
      'enabled': ?enabled,
      'expression': ?expression,
      'id': ?id,
      'parameters': ?parameters?.toMap(),
      'zoneId': ?zoneId,
    };
  }

  factory GetCloudConnectorRulesResult.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectorRulesResult(
      cloudConnectorRulesProvider: (() { final guardedValue = map['cloudConnectorRulesProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return GetCloudConnectorRulesParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
