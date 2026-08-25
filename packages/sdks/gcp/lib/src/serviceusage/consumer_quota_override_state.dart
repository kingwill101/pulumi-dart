// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConsumerQuotaOverride resources.
class ConsumerQuotaOverrideState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit.
  final pulumi.Input<Map<String, String>?>? dimensions;
  /// If the new quota would decrease the existing quota by more than 10%, the request is rejected.
  /// If `force` is `true`, that safety check is ignored.
  final pulumi.Input<bool?>? force;
  /// The limit on the metric, e.g. `/project/region`.
  /// &gt; Make sure that `limit` is in a format that doesn't start with `1/` or contain curly braces.
  /// E.g. use `/project/user` instead of `1/{project}/{user}`.
  final pulumi.Input<String?>? limit;
  /// The metric that should be limited, e.g. `compute.googleapis.com/cpus`.
  final pulumi.Input<String?>? metric;
  /// The server-generated name of the quota override.
  final pulumi.Input<String?>? name;
  /// The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  final pulumi.Input<String?>? overrideValue;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The service that the metrics belong to, e.g. `compute.googleapis.com`.
  final pulumi.Input<String?>? service;

  /// Creates a new [ConsumerQuotaOverrideState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dimensions] If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit.
  /// [force] If the new quota would decrease the existing quota by more than 10%, the request is rejected.
  /// [limit] The limit on the metric, e.g. `/project/region`.
  /// [metric] The metric that should be limited, e.g. `compute.googleapis.com/cpus`.
  /// [name] The server-generated name of the quota override.
  /// [overrideValue] The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The service that the metrics belong to, e.g. `compute.googleapis.com`.
  const ConsumerQuotaOverrideState({
    this.deletionPolicy,
    this.dimensions,
    this.force,
    this.limit,
    this.metric,
    this.name,
    this.overrideValue,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'dimensions': ?dimensions,
      'force': ?force,
      'limit': ?limit,
      'metric': ?metric,
      'name': ?name,
      'overrideValue': ?overrideValue,
      'project': ?project,
      'service': ?service,
    };
  }

  factory ConsumerQuotaOverrideState.fromMap(Map<String, dynamic> map) {
    return ConsumerQuotaOverrideState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrideValue: (() { final guardedValue = map['overrideValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
