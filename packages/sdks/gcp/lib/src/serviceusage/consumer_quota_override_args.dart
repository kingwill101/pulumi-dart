// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceusage_consumer_quota_override_consumer_quota_override_args_doc}
/// The set of arguments for ConsumerQuotaOverride.
/// {@endtemplate}
/// {@macro pulumi_serviceusage_consumer_quota_override_consumer_quota_override_args_doc}
class ConsumerQuotaOverrideArgs {
  /// If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit.
  final pulumi.Input<Map<String, String>>? dimensions;
  /// If the new quota would decrease the existing quota by more than 10%, the request is rejected.
  /// If `force` is `true`, that safety check is ignored.
  final pulumi.Input<bool>? force;
  /// The limit on the metric, e.g. `/project/region`.
  /// > Make sure that `limit` is in a format that doesn't start with `1/` or contain curly braces.
  /// E.g. use `/project/user` instead of `1/{project}/{user}`.
  final pulumi.Input<String> limit;
  /// The metric that should be limited, e.g. `compute.googleapis.com/cpus`.
  final pulumi.Input<String> metric;
  /// The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  final pulumi.Input<String> overrideValue;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The service that the metrics belong to, e.g. `compute.googleapis.com`.
  final pulumi.Input<String> service;

  /// Creates a new [ConsumerQuotaOverrideArgs].
  /// [dimensions] If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit.
  /// [force] If the new quota would decrease the existing quota by more than 10%, the request is rejected.
  /// [limit] The limit on the metric, e.g. `/project/region`.
  /// [metric] The metric that should be limited, e.g. `compute.googleapis.com/cpus`.
  /// [overrideValue] The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The service that the metrics belong to, e.g. `compute.googleapis.com`.
  ConsumerQuotaOverrideArgs({
    pulumi.Output<Map<String, String>>? dimensions,
    pulumi.Output<bool>? force,
    required pulumi.Output<String> limit,
    required pulumi.Output<String> metric,
    required pulumi.Output<String> overrideValue,
    pulumi.Output<String>? project,
    required pulumi.Output<String> service,
  }) :
      dimensions = pulumi.Input.asOptionalInput<Map<String, String>>(dimensions),
      force = pulumi.Input.asOptionalInput<bool>(force),
      limit = pulumi.Input.asInput<String>(limit),
      metric = pulumi.Input.asInput<String>(metric),
      overrideValue = pulumi.Input.asInput<String>(overrideValue),
      project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions,
      'force': ?force,
      'limit': limit,
      'metric': metric,
      'overrideValue': overrideValue,
      'project': ?project,
      'service': service,
    };
  }

  factory ConsumerQuotaOverrideArgs.fromMap(Map<String, dynamic> map) {
    return ConsumerQuotaOverrideArgs(
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<Map<String, String>>((map['dimensions'] as Map).cast<String, String>()),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      limit: pulumi.Output.create<String>(map['limit'] as String),
      metric: pulumi.Output.create<String>(map['metric'] as String),
      overrideValue: pulumi.Output.create<String>(map['overrideValue'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      service: pulumi.Output.create<String>(map['service'] as String),
    );
  }
}

