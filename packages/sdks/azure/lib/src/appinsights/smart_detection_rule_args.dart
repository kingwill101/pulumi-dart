// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appinsights_smart_detection_rule_smart_detection_rule_args_doc}
/// The set of arguments for SmartDetectionRule.
/// {@endtemplate}
/// {@macro pulumi_appinsights_smart_detection_rule_smart_detection_rule_args_doc}
class SmartDetectionRuleArgs {
  /// Specifies a list of additional recipients that will be sent emails on this Application Insights Smart Detection Rule.
  ///
  /// > **Note:** At least one read or write permission must be defined.
  final pulumi.Input<List<String>>? additionalEmailRecipients;
  /// The ID of the Application Insights component on which the Smart Detection Rule operates. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationInsightsId;
  /// Is the Application Insights Smart Detection Rule enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the name of the Application Insights Smart Detection Rule. Valid values include `Slow page load time`, `Slow server response time`, `Potential memory leak detected`, `Potential security issue detected`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Abnormal rise in daily data volume`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Do emails get sent to subscription owners? Defaults to `true`.
  final pulumi.Input<bool>? sendEmailsToSubscriptionOwners;

  /// Creates a new [SmartDetectionRuleArgs].
  /// [additionalEmailRecipients] Specifies a list of additional recipients that will be sent emails on this Application Insights Smart Detection Rule.
  /// [applicationInsightsId] The ID of the Application Insights component on which the Smart Detection Rule operates. Changing this forces a new resource to be created.
  /// [enabled] Is the Application Insights Smart Detection Rule enabled? Defaults to `true`.
  /// [name] Specifies the name of the Application Insights Smart Detection Rule. Valid values include `Slow page load time`, `Slow server response time`, `Potential memory leak detected`, `Potential security issue detected`, `Long dependency duration`, `Degradation in server response time`, `Degradation in dependency duration`, `Degradation in trace severity ratio`, `Abnormal rise in exception volume`, `Abnormal rise in daily data volume`. Changing this forces a new resource to be created.
  /// [sendEmailsToSubscriptionOwners] Do emails get sent to subscription owners? Defaults to `true`.
  SmartDetectionRuleArgs({
    pulumi.Output<List<String>>? additionalEmailRecipients,
    required pulumi.Output<String> applicationInsightsId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? sendEmailsToSubscriptionOwners,
  }) :
      additionalEmailRecipients = pulumi.Input.asOptionalInput<List<String>>(additionalEmailRecipients),
      applicationInsightsId = pulumi.Input.asInput<String>(applicationInsightsId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      sendEmailsToSubscriptionOwners = pulumi.Input.asOptionalInput<bool>(sendEmailsToSubscriptionOwners);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEmailRecipients': ?additionalEmailRecipients,
      'applicationInsightsId': applicationInsightsId,
      'enabled': ?enabled,
      'name': ?name,
      'sendEmailsToSubscriptionOwners': ?sendEmailsToSubscriptionOwners,
    };
  }

  factory SmartDetectionRuleArgs.fromMap(Map<String, dynamic> map) {
    return SmartDetectionRuleArgs(
      additionalEmailRecipients: map['additionalEmailRecipients'] == null ? null : pulumi.Output.create<List<String>>((map['additionalEmailRecipients'] as List).cast<String>()),
      applicationInsightsId: pulumi.Output.create<String>(map['applicationInsightsId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sendEmailsToSubscriptionOwners: map['sendEmailsToSubscriptionOwners'] == null ? null : pulumi.Output.create<bool>(map['sendEmailsToSubscriptionOwners'] as bool),
    );
  }
}

