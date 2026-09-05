// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAlertRule.
class GetAlertRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? logAnalyticsWorkspaceId;
  final String? name;

  /// Creates a new [GetAlertRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logAnalyticsWorkspaceId] Optional.
  /// [name] Optional.
  const GetAlertRuleResult({
    this.id,
    this.logAnalyticsWorkspaceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
    };
  }

  factory GetAlertRuleResult.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
