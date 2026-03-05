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
    this.backupPool,
    this.description,
    this.failoverRatio,
    this.healthChecks,
    this.instances,
    this.name,
    this.project,
    this.region,
    this.securityPolicy,
    this.selfLink,
    this.sessionAffinity,
  });

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
      backupPool: (() { final guardedValue = map['backupPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverRatio: (() { final guardedValue = map['failoverRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      healthChecks: (() { final guardedValue = map['healthChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

