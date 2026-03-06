// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAlertRule.
class GetAlertRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String logAnalyticsWorkspaceId;
  final String name;

  /// Creates a new [GetAlertRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logAnalyticsWorkspaceId] Required.
  /// [name] Required.
  const GetAlertRuleResult({
    required this.id,
    required this.logAnalyticsWorkspaceId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': name,
    };
  }

  factory GetAlertRuleResult.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleResult(
      id: map['id'] as String,
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      name: map['name'] as String,
    );
  }
}

