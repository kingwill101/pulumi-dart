// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionCompositeHealthCheck resources.
class RegionCompositeHealthCheckState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  final pulumi.Input<String>? description;
  /// Fingerprint of this resource. A hash of the contents stored in this object.
  /// This field is used in optimistic locking. This field will be ignored when
  /// inserting a `CompositeHealthCheck`. An up-to-date fingerprint
  /// must be provided in order to patch the CompositeHealthCheck; Otherwise,
  /// the request will fail with error `412 conditionNotMet`. To see
  /// the latest fingerprint, make a `get()` request to retrieve the
  /// CompositeHealthCheck.
  final pulumi.Input<String>? fingerprint;
  /// URL to the destination resource. Must be set. Must be a
  /// ForwardingRule. The ForwardingRule must have
  /// load balancing scheme INTERNAL or
  /// INTERNAL_MANAGED and must be regional and in the same region
  /// as the CompositeHealthCheck (cross-region deployment for
  /// INTERNAL_MANAGED is not supported). Can be mutated.
  final pulumi.Input<String>? healthDestination;
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
  final pulumi.Input<String>? region;
  /// Server-defined URL with id for the resource.
  final pulumi.Input<String>? selfLinkWithId;

  /// Creates a new [RegionCompositeHealthCheckState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object.
  /// [healthDestination] URL to the destination resource. Must be set. Must be a
  /// [healthSources] URLs to the HealthSource resources whose results are AND'ed.
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] URL of the region where the composite health check resides.
  /// [selfLinkWithId] Server-defined URL with id for the resource.
  RegionCompositeHealthCheckState({
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.healthDestination,
    this.healthSources,
    this.name,
    this.project,
    this.region,
    this.selfLinkWithId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'healthDestination': ?healthDestination,
      'healthSources': ?healthSources,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'selfLinkWithId': ?selfLinkWithId,
    };
  }

  factory RegionCompositeHealthCheckState.fromMap(Map<String, dynamic> map) {
    return RegionCompositeHealthCheckState(
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      healthDestination: map['healthDestination'] == null ? null : (map['healthDestination']! as String).input(),
      healthSources: map['healthSources'] == null ? null : ((map['healthSources']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      selfLinkWithId: map['selfLinkWithId'] == null ? null : (map['selfLinkWithId']! as String).input(),
    );
  }
}

