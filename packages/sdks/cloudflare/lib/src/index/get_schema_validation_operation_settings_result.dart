// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSchemaValidationOperationSettings.
class GetSchemaValidationOperationSettingsResult {
  final String? mitigationAction;
  final String? operationId;
  final String? zoneId;

  /// Creates a new [GetSchemaValidationOperationSettingsResult].
  /// [mitigationAction] Optional.
  /// [operationId] Optional.
  /// [zoneId] Optional.
  const GetSchemaValidationOperationSettingsResult({
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

  factory GetSchemaValidationOperationSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationOperationSettingsResult(
      mitigationAction: (() { final guardedValue = map['mitigationAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
