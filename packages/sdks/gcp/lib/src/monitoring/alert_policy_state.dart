// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_alert_strategy.dart';
import 'alert_policy_condition.dart';
import 'alert_policy_creation_record.dart';
import 'alert_policy_documentation.dart';

/// Input properties used for looking up and filtering AlertPolicy resources.
class AlertPolicyState {
  /// Control over how this alert policy's notification channels are notified.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyAlertStrategy>? alertStrategy;
  /// How to combine the results of multiple conditions to
  /// determine if an incident should be opened.
  /// Possible values are: `AND`, `OR`, `AND_WITH_MATCHING_RESOURCE`.
  final pulumi.Input<String>? combiner;
  /// A list of conditions for the policy. The conditions are combined by
  /// AND or OR according to the combiner field. If the combined conditions
  /// evaluate to true, then an incident is created. A policy can have from
  /// one to six conditions.
  /// Structure is documented below.
  final pulumi.Input<List<AlertPolicyCondition>>? conditions;
  /// A read-only record of the creation of the alerting policy.
  /// If provided in a call to create or update, this field will
  /// be ignored.
  /// Structure is documented below.
  final pulumi.Input<List<AlertPolicyCreationRecord>>? creationRecords;
  /// A short name or phrase used to identify the policy in
  /// dashboards, notifications, and incidents. To avoid confusion, don't use
  /// the same display name for multiple policies in the same project. The
  /// name is limited to 512 Unicode characters.
  final pulumi.Input<String>? displayName;
  /// Documentation that is included with notifications and incidents related
  /// to this policy. Best practice is for the documentation to include information
  /// to help responders understand, mitigate, escalate, and correct the underlying
  /// problems detected by the alerting policy. Notification channels that have
  /// limited capacity might not show this documentation.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyDocumentation>? documentation;
  /// Whether or not the policy is enabled. The default is true.
  final pulumi.Input<bool>? enabled;
  /// The unique resource name for this policy.
  /// Its syntax is: projects/[PROJECT_ID]/alertPolicies/[ALERT_POLICY_ID]
  final pulumi.Input<String>? name;
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

  /// Creates a new [AlertPolicyState].
  /// [alertStrategy] Control over how this alert policy's notification channels are notified.
  /// [combiner] How to combine the results of multiple conditions to
  /// [conditions] A list of conditions for the policy. The conditions are combined by
  /// [creationRecords] A read-only record of the creation of the alerting policy.
  /// [displayName] A short name or phrase used to identify the policy in
  /// [documentation] Documentation that is included with notifications and incidents related
  /// [enabled] Whether or not the policy is enabled. The default is true.
  /// [name] The unique resource name for this policy.
  /// [notificationChannels] Identifies the notification channels to which notifications should be
  /// [project] The ID of the project in which the resource belongs.
  /// [severity] The severity of an alert policy indicates how important incidents generated
  /// [userLabels] This field is intended to be used for organizing and identifying the AlertPolicy
  AlertPolicyState({
    pulumi.Output<AlertPolicyAlertStrategy>? alertStrategy,
    pulumi.Output<String>? combiner,
    pulumi.Output<List<AlertPolicyCondition>>? conditions,
    pulumi.Output<List<AlertPolicyCreationRecord>>? creationRecords,
    pulumi.Output<String>? displayName,
    pulumi.Output<AlertPolicyDocumentation>? documentation,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? notificationChannels,
    pulumi.Output<String>? project,
    pulumi.Output<String>? severity,
    pulumi.Output<Map<String, String>>? userLabels,
  }) :
      alertStrategy = pulumi.Input.asOptionalInput<AlertPolicyAlertStrategy>(alertStrategy),
      combiner = pulumi.Input.asOptionalInput<String>(combiner),
      conditions = pulumi.Input.asOptionalInput<List<AlertPolicyCondition>>(conditions),
      creationRecords = pulumi.Input.asOptionalInput<List<AlertPolicyCreationRecord>>(creationRecords),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      documentation = pulumi.Input.asOptionalInput<AlertPolicyDocumentation>(documentation),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationChannels = pulumi.Input.asOptionalInput<List<String>>(notificationChannels),
      project = pulumi.Input.asOptionalInput<String>(project),
      severity = pulumi.Input.asOptionalInput<String>(severity),
      userLabels = pulumi.Input.asOptionalInput<Map<String, String>>(userLabels);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertStrategy': ?pulumi.Input.mapOptionalInputValue<AlertPolicyAlertStrategy, Map<String, dynamic>>(alertStrategy, (value) => value.toMap()),
      'combiner': ?combiner,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<AlertPolicyCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<AlertPolicyCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationRecords': ?pulumi.Input.mapOptionalInputValue<List<AlertPolicyCreationRecord>, List<Map<String, dynamic>>>(creationRecords, (value) => pulumi.Input.encodeList<AlertPolicyCreationRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'documentation': ?pulumi.Input.mapOptionalInputValue<AlertPolicyDocumentation, Map<String, dynamic>>(documentation, (value) => value.toMap()),
      'enabled': ?enabled,
      'name': ?name,
      'notificationChannels': ?notificationChannels,
      'project': ?project,
      'severity': ?severity,
      'userLabels': ?userLabels,
    };
  }

  factory AlertPolicyState.fromMap(Map<String, dynamic> map) {
    return AlertPolicyState(
      alertStrategy: map['alertStrategy'] == null ? null : pulumi.Output.create<AlertPolicyAlertStrategy>(AlertPolicyAlertStrategy.fromMap((map['alertStrategy'] as Map).cast<String, dynamic>())),
      combiner: map['combiner'] == null ? null : pulumi.Output.create<String>(map['combiner'] as String),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<AlertPolicyCondition>>(pulumi.Input.decodeList<AlertPolicyCondition>(map['conditions'], (value) => AlertPolicyCondition.fromMap((value as Map).cast<String, dynamic>()))),
      creationRecords: map['creationRecords'] == null ? null : pulumi.Output.create<List<AlertPolicyCreationRecord>>(pulumi.Input.decodeList<AlertPolicyCreationRecord>(map['creationRecords'], (value) => AlertPolicyCreationRecord.fromMap((value as Map).cast<String, dynamic>()))),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      documentation: map['documentation'] == null ? null : pulumi.Output.create<AlertPolicyDocumentation>(AlertPolicyDocumentation.fromMap((map['documentation'] as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationChannels: map['notificationChannels'] == null ? null : pulumi.Output.create<List<String>>((map['notificationChannels'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      severity: map['severity'] == null ? null : pulumi.Output.create<String>(map['severity'] as String),
      userLabels: map['userLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['userLabels'] as Map).cast<String, String>()),
    );
  }
}

