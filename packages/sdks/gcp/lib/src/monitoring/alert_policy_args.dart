// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_alert_strategy.dart';
import 'alert_policy_condition.dart';
import 'alert_policy_documentation.dart';

/// {@template pulumi_monitoring_alert_policy_alert_policy_args_doc}
/// The set of arguments for AlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_monitoring_alert_policy_alert_policy_args_doc}
class AlertPolicyArgs {
  /// Control over how this alert policy's notification channels are notified.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyAlertStrategy>? alertStrategy;
  /// How to combine the results of multiple conditions to
  /// determine if an incident should be opened.
  /// Possible values are: `AND`, `OR`, `AND_WITH_MATCHING_RESOURCE`.
  final pulumi.Input<String> combiner;
  /// A list of conditions for the policy. The conditions are combined by
  /// AND or OR according to the combiner field. If the combined conditions
  /// evaluate to true, then an incident is created. A policy can have from
  /// one to six conditions.
  /// Structure is documented below.
  final pulumi.Input<List<AlertPolicyCondition>> conditions;
  /// A short name or phrase used to identify the policy in
  /// dashboards, notifications, and incidents. To avoid confusion, don't use
  /// the same display name for multiple policies in the same project. The
  /// name is limited to 512 Unicode characters.
  final pulumi.Input<String> displayName;
  /// Documentation that is included with notifications and incidents related
  /// to this policy. Best practice is for the documentation to include information
  /// to help responders understand, mitigate, escalate, and correct the underlying
  /// problems detected by the alerting policy. Notification channels that have
  /// limited capacity might not show this documentation.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyDocumentation>? documentation;
  /// Whether or not the policy is enabled. The default is true.
  final pulumi.Input<bool>? enabled;
  /// Identifies the notification channels to which notifications should be
  /// sent when incidents are opened or closed or when new violations occur
  /// on an already opened incident. Each element of this array corresponds
  /// to the name field in each of the NotificationChannel objects that are
  /// returned from the notificationChannels.list method. The syntax of the
  /// entries in this field is
  /// `projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]`
  final pulumi.Input<List<String>>? notificationChannels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The severity of an alert policy indicates how important incidents generated
  /// by that policy are. The severity level will be displayed on the Incident
  /// detail page and in notifications.
  /// Possible values are: `CRITICAL`, `ERROR`, `WARNING`.
  final pulumi.Input<String>? severity;
  /// This field is intended to be used for organizing and identifying the AlertPolicy
  /// objects.The field can contain up to 64 entries. Each key and value is limited
  /// to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
  /// can contain only lowercase letters, numerals, underscores, and dashes. Keys
  /// must begin with a letter.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [AlertPolicyArgs].
  /// [alertStrategy] Control over how this alert policy's notification channels are notified.
  /// [combiner] How to combine the results of multiple conditions to
  /// [conditions] A list of conditions for the policy. The conditions are combined by
  /// [displayName] A short name or phrase used to identify the policy in
  /// [documentation] Documentation that is included with notifications and incidents related
  /// [enabled] Whether or not the policy is enabled. The default is true.
  /// [notificationChannels] Identifies the notification channels to which notifications should be
  /// [project] The ID of the project in which the resource belongs.
  /// [severity] The severity of an alert policy indicates how important incidents generated
  /// [userLabels] This field is intended to be used for organizing and identifying the AlertPolicy
  AlertPolicyArgs({
    this.alertStrategy,
    required this.combiner,
    required this.conditions,
    required this.displayName,
    this.documentation,
    this.enabled,
    this.notificationChannels,
    this.project,
    this.severity,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertStrategy': ?pulumi.Input.mapOptionalInputValue<AlertPolicyAlertStrategy, Map<String, dynamic>>(alertStrategy, (value) => value.toMap()),
      'combiner': combiner,
      'conditions': pulumi.Input.mapInputValue<List<AlertPolicyCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<AlertPolicyCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': displayName,
      'documentation': ?pulumi.Input.mapOptionalInputValue<AlertPolicyDocumentation, Map<String, dynamic>>(documentation, (value) => value.toMap()),
      'enabled': ?enabled,
      'notificationChannels': ?notificationChannels,
      'project': ?project,
      'severity': ?severity,
      'userLabels': ?userLabels,
    };
  }

  factory AlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AlertPolicyArgs(
      alertStrategy: map['alertStrategy'] == null ? null : (AlertPolicyAlertStrategy.fromMap((map['alertStrategy'] as Map).cast<String, dynamic>())).input(),
      combiner: (map['combiner'] as String).input(),
      conditions: (pulumi.Input.decodeList<AlertPolicyCondition>(map['conditions'], (value) => AlertPolicyCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: (map['displayName'] as String).input(),
      documentation: map['documentation'] == null ? null : (AlertPolicyDocumentation.fromMap((map['documentation'] as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      notificationChannels: map['notificationChannels'] == null ? null : ((map['notificationChannels'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      severity: map['severity'] == null ? null : (map['severity'] as String).input(),
      userLabels: map['userLabels'] == null ? null : ((map['userLabels'] as Map).cast<String, String>()).input(),
    );
  }
}

