// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiShieldSchemaValidationSettings.
class GetApiShieldSchemaValidationSettingsResult {
  /// Identifier.
  final String? id;
  /// The default mitigation action used when there is no mitigation action defined on the operation
  final String? validationDefaultMitigationAction;
  final String? validationOverrideMitigationAction;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetApiShieldSchemaValidationSettingsResult].
  /// [id] Identifier.
  /// [validationDefaultMitigationAction] The default mitigation action used when there is no mitigation action defined on the operation
  /// [validationOverrideMitigationAction] Optional.
  /// [zoneId] Identifier.
  const GetApiShieldSchemaValidationSettingsResult({
    this.id,
    this.validationDefaultMitigationAction,
    this.validationOverrideMitigationAction,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'validationDefaultMitigationAction': ?validationDefaultMitigationAction,
      'validationOverrideMitigationAction': ?validationOverrideMitigationAction,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldSchemaValidationSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldSchemaValidationSettingsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationDefaultMitigationAction: (() { final guardedValue = map['validationDefaultMitigationAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationOverrideMitigationAction: (() { final guardedValue = map['validationOverrideMitigationAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
