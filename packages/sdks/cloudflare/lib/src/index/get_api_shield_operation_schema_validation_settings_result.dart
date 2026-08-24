// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiShieldOperationSchemaValidationSettings.
class GetApiShieldOperationSchemaValidationSettingsResult {
  final String? mitigationAction;
  final String? operationId;
  final String? zoneId;

  /// Creates a new [GetApiShieldOperationSchemaValidationSettingsResult].
  /// [mitigationAction] Optional.
  /// [operationId] Optional.
  /// [zoneId] Optional.
  const GetApiShieldOperationSchemaValidationSettingsResult({
    this.mitigationAction,
    this.operationId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mitigationAction': ?mitigationAction,
      'operationId': ?operationId,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldOperationSchemaValidationSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationSchemaValidationSettingsResult(
      mitigationAction: (() { final guardedValue = map['mitigationAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
