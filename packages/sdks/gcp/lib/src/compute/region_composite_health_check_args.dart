// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_region_composite_health_check_region_composite_health_check_args_doc}
/// The set of arguments for RegionCompositeHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_region_composite_health_check_region_composite_health_check_args_doc}
class RegionCompositeHealthCheckArgs {
  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  final pulumi.Input<String>? description;
  /// URL to the destination resource. Must be set. Must be a
  /// ForwardingRule. The ForwardingRule must have
  /// load balancing scheme INTERNAL or
  /// INTERNAL_MANAGED and must be regional and in the same region
  /// as the CompositeHealthCheck (cross-region deployment for
  /// INTERNAL_MANAGED is not supported). Can be mutated.
  final pulumi.Input<String> healthDestination;
  /// URLs to the HealthSource resources whose results are AND'ed.
  /// I.e. he aggregated result is is HEALTHY only if all sources
  /// are HEALTHY. Must have at least 1. Must not have more than 10.
  /// Must be regional and in the same region as the
  /// CompositeHealthCheck. Can be mutated.
  final pulumi.Input<List<String>>? healthSources;
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
  /// URL of the region where the composite health check resides.
  final pulumi.Input<String> region;

  /// Creates a new [RegionCompositeHealthCheckArgs].
  /// [description] An optional description of this resource. Provide this property when you
  /// [healthDestination] URL to the destination resource. Must be set. Must be a
  /// [healthSources] URLs to the HealthSource resources whose results are AND'ed.
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] URL of the region where the composite health check resides.
  RegionCompositeHealthCheckArgs({
    this.description,
    required this.healthDestination,
    this.healthSources,
    this.name,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'healthDestination': healthDestination,
      'healthSources': ?healthSources,
      'name': ?name,
      'project': ?project,
      'region': region,
    };
  }

  factory RegionCompositeHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return RegionCompositeHealthCheckArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      healthDestination: (map['healthDestination'] as String).input(),
      healthSources: map['healthSources'] == null ? null : ((map['healthSources']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

