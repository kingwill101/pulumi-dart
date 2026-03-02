// ignore_for_file: unused_element, unnecessary_cast

import 'suppression_alerts_scope_response.dart';

/// Result data returned by getAlertsSuppressionRule.
class GetAlertsSuppressionRuleResult {
  /// Type of the alert to automatically suppress. For all alert types, use '*'
  final String alertType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Any comment regarding the rule
  final String? comment;
  /// Expiration date of the rule, if value is not provided or provided as null there will no expiration at all
  final String? expirationDateUtc;
  /// Resource Id
  final String id;
  /// The last time this rule was modified
  final String lastModifiedUtc;
  /// Resource name
  final String name;
  /// The reason for dismissing the alert
  final String reason;
  /// Possible states of the rule
  final String state;
  /// The suppression conditions
  final SuppressionAlertsScopeResponse? suppressionAlertsScope;
  /// Resource type
  final String type;

  /// Creates a new [GetAlertsSuppressionRuleResult].
  /// [alertType] Type of the alert to automatically suppress. For all alert types, use '*'
  /// [azureApiVersion] The Azure API version of the resource.
  /// [comment] Any comment regarding the rule
  /// [expirationDateUtc] Expiration date of the rule, if value is not provided or provided as null there will no expiration at all
  /// [id] Resource Id
  /// [lastModifiedUtc] The last time this rule was modified
  /// [name] Resource name
  /// [reason] The reason for dismissing the alert
  /// [state] Possible states of the rule
  /// [suppressionAlertsScope] The suppression conditions
  /// [type] Resource type
  GetAlertsSuppressionRuleResult({
    required this.alertType,
    required this.azureApiVersion,
    this.comment,
    this.expirationDateUtc,
    required this.id,
    required this.lastModifiedUtc,
    required this.name,
    required this.reason,
    required this.state,
    this.suppressionAlertsScope,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertType': alertType,
      'azureApiVersion': azureApiVersion,
      'comment': ?comment,
      'expirationDateUtc': ?expirationDateUtc,
      'id': id,
      'lastModifiedUtc': lastModifiedUtc,
      'name': name,
      'reason': reason,
      'state': state,
      'suppressionAlertsScope': ?suppressionAlertsScope == null ? null : suppressionAlertsScope!.toMap(),
      'type': type,
    };
  }

  factory GetAlertsSuppressionRuleResult.fromMap(Map<String, dynamic> map) {
    return GetAlertsSuppressionRuleResult(
      alertType: map['alertType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      comment: map['comment'] == null ? null : map['comment']! as String,
      expirationDateUtc: map['expirationDateUtc'] == null ? null : map['expirationDateUtc']! as String,
      id: map['id'] as String,
      lastModifiedUtc: map['lastModifiedUtc'] as String,
      name: map['name'] as String,
      reason: map['reason'] as String,
      state: map['state'] as String,
      suppressionAlertsScope: map['suppressionAlertsScope'] == null ? null : SuppressionAlertsScopeResponse.fromMap((map['suppressionAlertsScope']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

