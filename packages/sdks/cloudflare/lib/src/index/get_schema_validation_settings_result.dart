// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSchemaValidationSettings.
class GetSchemaValidationSettingsResult {
  /// The default mitigation action used
  final String? validationDefaultMitigationAction;
  final String? validationOverrideMitigationAction;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetSchemaValidationSettingsResult].
  /// [validationDefaultMitigationAction] The default mitigation action used
  /// [validationOverrideMitigationAction] Optional.
  /// [zoneId] Identifier.
  const GetSchemaValidationSettingsResult({
    this.validationDefaultMitigationAction,
    this.validationOverrideMitigationAction,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validationDefaultMitigationAction': ?validationDefaultMitigationAction,
      'validationOverrideMitigationAction': ?validationOverrideMitigationAction,
      'zoneId': ?zoneId,
    };
  }

  factory GetSchemaValidationSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationSettingsResult(
      validationDefaultMitigationAction: (() { final guardedValue = map['validationDefaultMitigationAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationOverrideMitigationAction: (() { final guardedValue = map['validationOverrideMitigationAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
