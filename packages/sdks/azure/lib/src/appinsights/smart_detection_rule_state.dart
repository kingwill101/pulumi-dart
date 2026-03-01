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
    pulumi.Output<List<String>>? additionalEmailRecipients,
    pulumi.Output<String>? applicationInsightsId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? sendEmailsToSubscriptionOwners,
  }) :
      additionalEmailRecipients = pulumi.Input.asOptionalInput<List<String>>(additionalEmailRecipients),
      applicationInsightsId = pulumi.Input.asOptionalInput<String>(applicationInsightsId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      sendEmailsToSubscriptionOwners = pulumi.Input.asOptionalInput<bool>(sendEmailsToSubscriptionOwners);

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
      additionalEmailRecipients: map['additionalEmailRecipients'] == null ? null : pulumi.Output.create<List<String>>((map['additionalEmailRecipients'] as List).cast<String>()),
      applicationInsightsId: map['applicationInsightsId'] == null ? null : pulumi.Output.create<String>(map['applicationInsightsId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sendEmailsToSubscriptionOwners: map['sendEmailsToSubscriptionOwners'] == null ? null : pulumi.Output.create<bool>(map['sendEmailsToSubscriptionOwners'] as bool),
    );
  }
}

