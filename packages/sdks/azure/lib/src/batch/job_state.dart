// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// The ID of the Batch Pool. Changing this forces a new Batch Job to be created.
  final pulumi.Input<String>? batchPoolId;
  /// Specifies a map of common environment settings applied to this Batch Job. Changing this forces a new Batch Job to be created.
  final pulumi.Input<Map<String, String>>? commonEnvironmentProperties;
  /// The display name of this Batch Job. Changing this forces a new Batch Job to be created.
  final pulumi.Input<String>? displayName;
  /// The name which should be used for this Batch Job. Changing this forces a new Batch Job to be created.
  final pulumi.Input<String>? name;
  /// The priority of this Batch Job, possible values can range from -1000 (lowest) to 1000 (highest). Defaults to `0`.
  final pulumi.Input<int>? priority;
  /// The number of retries to each Batch Task belongs to this Batch Job. If this is set to `0`, the Batch service does not retry Tasks. If this is set to `-1`, the Batch service retries Batch Tasks without limit.
  final pulumi.Input<int>? taskRetryMaximum;

  /// Creates a new [JobState].
  /// [batchPoolId] The ID of the Batch Pool. Changing this forces a new Batch Job to be created.
  /// [commonEnvironmentProperties] Specifies a map of common environment settings applied to this Batch Job. Changing this forces a new Batch Job to be created.
  /// [displayName] The display name of this Batch Job. Changing this forces a new Batch Job to be created.
  /// [name] The name which should be used for this Batch Job. Changing this forces a new Batch Job to be created.
  /// [priority] The priority of this Batch Job, possible values can range from -1000 (lowest) to 1000 (highest). Defaults to `0`.
  /// [taskRetryMaximum] The number of retries to each Batch Task belongs to this Batch Job. If this is set to `0`, the Batch service does not retry Tasks. If this is set to `-1`, the Batch service retries Batch Tasks without limit.
  JobState({
    this.batchPoolId,
    this.commonEnvironmentProperties,
    this.displayName,
    this.name,
    this.priority,
    this.taskRetryMaximum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchPoolId': ?batchPoolId,
      'commonEnvironmentProperties': ?commonEnvironmentProperties,
      'displayName': ?displayName,
      'name': ?name,
      'priority': ?priority,
      'taskRetryMaximum': ?taskRetryMaximum,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      batchPoolId: map['batchPoolId'] == null ? null : (map['batchPoolId'] as String).input(),
      commonEnvironmentProperties: map['commonEnvironmentProperties'] == null ? null : ((map['commonEnvironmentProperties'] as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      taskRetryMaximum: map['taskRetryMaximum'] == null ? null : (map['taskRetryMaximum'] as int).input(),
    );
  }
}

