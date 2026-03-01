// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TargetPool resources.
class TargetPoolState {
  /// URL to the backup target pool. Must also set
  /// failover_ratio.
  final pulumi.Input<String>? backupPool;
  /// Textual description field.
  final pulumi.Input<String>? description;
  /// Ratio (0 to 1) of failed nodes before using the
  /// backup pool (which must also be set).
  final pulumi.Input<double>? failoverRatio;
  /// List of zero or one health check name or self_link. Only
  /// legacy `gcp.compute.HttpHealthCheck` is supported.
  final pulumi.Input<String>? healthChecks;
  /// List of instances in the pool. They can be given as
  /// URLs, or in the form of "zone/name". Note that the instances need not exist
  /// at the time of target pool creation, so there is no need to use the
  /// interpolation to create a dependency on the instances from the
  /// target pool.
  final pulumi.Input<List<String>>? instances;
  /// A unique name for the resource, required by GCE. Changing
  /// this forces a new resource to be created.
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Where the target pool resides. Defaults to project
  /// region.
  final pulumi.Input<String>? region;
  /// The resource URL for the security policy associated with this target pool.
  final pulumi.Input<String>? securityPolicy;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// How to distribute load. Options are "NONE" (no
  /// affinity). "CLIENT_IP" (hash of the source/dest addresses / ports), and
  /// "CLIENT_IP_PROTO" also includes the protocol (default "NONE").
  final pulumi.Input<String>? sessionAffinity;

  /// Creates a new [TargetPoolState].
  /// [backupPool] URL to the backup target pool. Must also set
  /// [description] Textual description field.
  /// [failoverRatio] Ratio (0 to 1) of failed nodes before using the
  /// [healthChecks] List of zero or one health check name or self_link. Only
  /// [instances] List of instances in the pool. They can be given as
  /// [name] A unique name for the resource, required by GCE. Changing
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] Where the target pool resides. Defaults to project
  /// [securityPolicy] The resource URL for the security policy associated with this target pool.
  /// [selfLink] The URI of the created resource.
  /// [sessionAffinity] How to distribute load. Options are "NONE" (no
  TargetPoolState({
    pulumi.Output<String>? backupPool,
    pulumi.Output<String>? description,
    pulumi.Output<double>? failoverRatio,
    pulumi.Output<String>? healthChecks,
    pulumi.Output<List<String>>? instances,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityPolicy,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? sessionAffinity,
  }) :
      backupPool = pulumi.Input.asOptionalInput<String>(backupPool),
      description = pulumi.Input.asOptionalInput<String>(description),
      failoverRatio = pulumi.Input.asOptionalInput<double>(failoverRatio),
      healthChecks = pulumi.Input.asOptionalInput<String>(healthChecks),
      instances = pulumi.Input.asOptionalInput<List<String>>(instances),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityPolicy = pulumi.Input.asOptionalInput<String>(securityPolicy),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      sessionAffinity = pulumi.Input.asOptionalInput<String>(sessionAffinity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPool': ?backupPool,
      'description': ?description,
      'failoverRatio': ?failoverRatio,
      'healthChecks': ?healthChecks,
      'instances': ?instances,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'securityPolicy': ?securityPolicy,
      'selfLink': ?selfLink,
      'sessionAffinity': ?sessionAffinity,
    };
  }

  factory TargetPoolState.fromMap(Map<String, dynamic> map) {
    return TargetPoolState(
      backupPool: map['backupPool'] == null ? null : pulumi.Output.create<String>(map['backupPool'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      failoverRatio: map['failoverRatio'] == null ? null : pulumi.Output.create<double>(map['failoverRatio'] as double),
      healthChecks: map['healthChecks'] == null ? null : pulumi.Output.create<String>(map['healthChecks'] as String),
      instances: map['instances'] == null ? null : pulumi.Output.create<List<String>>((map['instances'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityPolicy: map['securityPolicy'] == null ? null : pulumi.Output.create<String>(map['securityPolicy'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      sessionAffinity: map['sessionAffinity'] == null ? null : pulumi.Output.create<String>(map['sessionAffinity'] as String),
    );
  }
}

