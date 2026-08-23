// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceusage_consumer_quota_override_consumer_quota_override_args_doc}
/// The set of arguments for ConsumerQuotaOverride.
/// {@endtemplate}
/// {@macro pulumi_serviceusage_consumer_quota_override_consumer_quota_override_args_doc}
class ConsumerQuotaOverrideArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit.
  final pulumi.Input<Map<String, String>>? dimensions;
  /// If the new quota would decrease the existing quota by more than 10%, the request is rejected.
  /// If `force` is `true`, that safety check is ignored.
  final pulumi.Input<bool>? force;
  /// The limit on the metric, e.g. `/project/region`.
  /// &gt; Make sure that `limit` is in a format that doesn't start with `1/` or contain curly braces.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dimensions] If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit.
  /// [force] If the new quota would decrease the existing quota by more than 10%, the request is rejected.
  /// [limit] The limit on the metric, e.g. `/project/region`.
  /// [metric] The metric that should be limited, e.g. `compute.googleapis.com/cpus`.
  /// [overrideValue] The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The service that the metrics belong to, e.g. `compute.googleapis.com`.
  const ConsumerQuotaOverrideArgs({
    this.deletionPolicy,
    this.dimensions,
    this.force,
    required this.limit,
    required this.metric,
    required this.overrideValue,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      limit: pulumi.Input.fromValue(map['limit'] as String),
      metric: pulumi.Input.fromValue(map['metric'] as String),
      overrideValue: pulumi.Input.fromValue(map['overrideValue'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
