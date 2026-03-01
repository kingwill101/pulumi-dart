// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_region_health_source_region_health_source_args_doc}
/// The set of arguments for RegionHealthSource.
/// {@endtemplate}
/// {@macro pulumi_compute_region_health_source_region_health_source_args_doc}
class RegionHealthSourceArgs {
  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  final pulumi.Input<String>? description;
  /// URL to the `HealthAggregationPolicy` resource. Must be set. Must
  /// be regional and in the same region as the `HealthSource`. Can be
  /// mutated.
  final pulumi.Input<String>? healthAggregationPolicy;
  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// URL of the region where the health source resides.
  final pulumi.Input<String> region;
  /// Specifies the type of the `HealthSource`. The only allowed value
  /// is `BACKEND_SERVICE`. Must be specified when the
  /// `HealthSource` is created, and cannot be mutated.
  /// Possible values are: `BACKEND_SERVICE`.
  final pulumi.Input<String> sourceType;
  /// URLs to the source resources. Must be size 1. Must be a
  /// `BackendService` if the `sourceType` is `BACKEND_SERVICE`. The
  /// `BackendService` must have load balancing scheme
  /// `INTERNAL` or `INTERNAL_MANAGED` and must be regional
  /// and in the same region as the `HealthSource` (cross-region
  /// deployment for `INTERNAL_MANAGED` is not supported). The
  /// `BackendService` may use only IGs, MIGs, or NEGs of type
  /// `GCE_VM_IP` or `GCE_VM_IP_PORT`. The
  /// `BackendService` may not use `haPolicy`. Can be
  /// mutated.
  final pulumi.Input<String>? sources;

  /// Creates a new [RegionHealthSourceArgs].
  /// [description] An optional description of this resource. Provide this property when you
  /// [healthAggregationPolicy] URL to the `HealthAggregationPolicy` resource. Must be set. Must
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] URL of the region where the health source resides.
  /// [sourceType] Specifies the type of the `HealthSource`. The only allowed value
  /// [sources] URLs to the source resources. Must be size 1. Must be a
  RegionHealthSourceArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? healthAggregationPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> sourceType,
    pulumi.Output<String>? sources,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      healthAggregationPolicy = pulumi.Input.asOptionalInput<String>(healthAggregationPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      sourceType = pulumi.Input.asInput<String>(sourceType),
      sources = pulumi.Input.asOptionalInput<String>(sources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'healthAggregationPolicy': ?healthAggregationPolicy,
      'name': ?name,
      'project': ?project,
      'region': region,
      'sourceType': sourceType,
      'sources': ?sources,
    };
  }

  factory RegionHealthSourceArgs.fromMap(Map<String, dynamic> map) {
    return RegionHealthSourceArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      healthAggregationPolicy: map['healthAggregationPolicy'] == null ? null : pulumi.Output.create<String>(map['healthAggregationPolicy'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      sourceType: pulumi.Output.create<String>(map['sourceType'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<String>(map['sources'] as String),
    );
  }
}

