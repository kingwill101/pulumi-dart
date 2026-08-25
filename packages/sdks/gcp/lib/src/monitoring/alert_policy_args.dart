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
  final pulumi.Input<AlertPolicyAlertStrategy?>? alertStrategy;
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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
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
  final pulumi.Input<AlertPolicyDocumentation?>? documentation;
  /// Whether or not the policy is enabled. The default is true.
  final pulumi.Input<bool?>? enabled;
  /// Identifies the notification channels to which notifications should be
  /// sent when incidents are opened or closed or when new violations occur
  /// on an already opened incident. Each element of this array corresponds
  /// to the name field in each of the NotificationChannel objects that are
  /// returned from the notificationChannels.list method. The syntax of the
  /// entries in this field is
  /// `projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]`
  final pulumi.Input<List<String>?>? notificationChannels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The severity of an alert policy indicates how important incidents generated
  /// by that policy are. The severity level will be displayed on the Incident
  /// detail page and in notifications.
  /// Possible values are: `CRITICAL`, `ERROR`, `WARNING`.
  final pulumi.Input<String?>? severity;
  /// This field is intended to be used for organizing and identifying the AlertPolicy
  /// objects.The field can contain up to 64 entries. Each key and value is limited
  /// to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
  /// can contain only lowercase letters, numerals, underscores, and dashes. Keys
  /// must begin with a letter.
  final pulumi.Input<Map<String, String>?>? userLabels;

  /// Creates a new [AlertPolicyArgs].
  /// [alertStrategy] Control over how this alert policy's notification channels are notified.
  /// [combiner] How to combine the results of multiple conditions to
  /// [conditions] A list of conditions for the policy. The conditions are combined by
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A short name or phrase used to identify the policy in
  /// [documentation] Documentation that is included with notifications and incidents related
  /// [enabled] Whether or not the policy is enabled. The default is true.
  /// [notificationChannels] Identifies the notification channels to which notifications should be
  /// [project] The ID of the project in which the resource belongs.
  /// [severity] The severity of an alert policy indicates how important incidents generated
  /// [userLabels] This field is intended to be used for organizing and identifying the AlertPolicy
  const AlertPolicyArgs({
    this.alertStrategy,
    required this.combiner,
    required this.conditions,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      alertStrategy: (() { final guardedValue = map['alertStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyAlertStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      combiner: pulumi.Input.fromValue(map['combiner'] as String),
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<AlertPolicyCondition>(map['conditions']!, (value) => AlertPolicyCondition.fromMap((value as Map).cast<String, dynamic>()))),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      documentation: (() { final guardedValue = map['documentation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyDocumentation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      notificationChannels: (() { final guardedValue = map['notificationChannels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
