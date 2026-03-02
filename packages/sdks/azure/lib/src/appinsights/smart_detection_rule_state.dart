// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SmartDetectionRule resources.
class SmartDetectionRuleState {
  /// Specifies a list of additional recipients that will be sent emails on this Application Insights Smart Detection Rule.
  ///
  /// > **Note:** At least one read or write permission must be defined.
  final pulumi.Input<List<String>>? additionalEmailRecipients;
  /// The ID of the Application Insights component on which the Smart Detection Rule operates. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationInsightsId;
  /// Is the Application Insights Smart Detection Rule enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the name of the Application Insights Smart Detection Rule. Valid values include `Slow page load time`, `Slow server response time`, `Potential memory leak detected`, `Potential security issue detected`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Abnormal rise in daily data volume`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Do emails get sent to subscription owners? Defaults to `true`.
  final pulumi.Input<bool>? sendEmailsToSubscriptionOwners;

  /// Creates a new [SmartDetectionRuleState].
  /// [additionalEmailRecipients] Specifies a list of additional recipients that will be sent emails on this Application Insights Smart Detection Rule.
  /// [applicationInsightsId] The ID of the Application Insights component on which the Smart Detection Rule operates. Changing this forces a new resource to be created.
  /// [enabled] Is the Application Insights Smart Detection Rule enabled? Defaults to `true`.
  /// [name] Specifies the name of the Application Insights Smart Detection Rule. Valid values include `Slow page load time`, `Slow server response time`, `Potential memory leak detected`, `Potential security issue detected`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Abnormal rise in daily data volume`. Changing this forces a new resource to be created.
  /// [sendEmailsToSubscriptionOwners] Do emails get sent to subscription owners? Defaults to `true`.
  SmartDetectionRuleState({
    this.additionalEmailRecipients,
    this.applicationInsightsId,
    this.enabled,
    this.name,
    this.sendEmailsToSubscriptionOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEmailRecipients': ?additionalEmailRecipients,
      'applicationInsightsId': ?applicationInsightsId,
      'enabled': ?enabled,
      'name': ?name,
      'sendEmailsToSubscriptionOwners': ?sendEmailsToSubscriptionOwners,
    };
  }

  factory SmartDetectionRuleState.fromMap(Map<String, dynamic> map) {
    return SmartDetectionRuleState(
      additionalEmailRecipients: map['additionalEmailRecipients'] == null ? null : ((map['additionalEmailRecipients']! as List).cast<String>()).input(),
      applicationInsightsId: map['applicationInsightsId'] == null ? null : (map['applicationInsightsId']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      sendEmailsToSubscriptionOwners: map['sendEmailsToSubscriptionOwners'] == null ? null : (map['sendEmailsToSubscriptionOwners']! as bool).input(),
    );
  }
}

