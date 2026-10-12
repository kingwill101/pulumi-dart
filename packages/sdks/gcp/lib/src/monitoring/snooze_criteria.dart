// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnoozeCriteria {
  /// When you define a snooze, you can also define a filter for that snooze.
  /// The filter is a string containing one or more key-value pairs. The string
  /// uses the standard https://google.aip.dev/160 filter syntax. If you define
  /// a filter for a snooze, then the snooze can only apply to one alert policy.
  /// When the snooze is active, incidents won't be created when the incident
  /// would have key-value pairs (labels) that match those specified by the
  /// filter in the snooze.
  /// Snooze filters support resource, metric, and metadata labels. If multiple
  /// labels are used, then they must be connected with an AND operator. For
  /// example, the following filter applies the snooze to incidents that have a
  /// resource label with an instance ID of 1234567890, a metric label with an
  /// instance name of test_group, a metadata user label with a key of foo and a
  /// value of bar, and a metadata system label with a key of region and a value
  /// of us-central1:
  /// "filter": "resource.labels.instance_id=\"1234567890\" AND metric.labels.instance_name=\"test_group\" AND metadata.user_labels.foo=\"bar\" AND metadata.system_labels.region=\"us-central1\""
  final pulumi.Input<String?>? filter;
  /// The specific AlertPolicy names for the alert that should be snoozed.
  /// The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]
  /// There is a limit of 16 policies per snooze. This limit is checked during
  /// snooze creation. Exactly 1 alert policy is required if filter is specified
  /// at the same time.
  final pulumi.Input<List<String>?>? policies;

  /// Creates a new [SnoozeCriteria].
  /// [filter] When you define a snooze, you can also define a filter for that snooze.
  /// [policies] The specific AlertPolicy names for the alert that should be snoozed.
  const SnoozeCriteria({
    this.filter,
    this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'policies': ?policies,
    };
  }

  factory SnoozeCriteria.fromMap(Map<String, dynamic> map) {
    return SnoozeCriteria(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
