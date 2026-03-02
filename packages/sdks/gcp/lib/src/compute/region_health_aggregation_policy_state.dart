// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionHealthAggregationPolicy resources.
class RegionHealthAggregationPolicyState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  final pulumi.Input<String>? description;
  /// Fingerprint of this resource. A hash of the contents stored in this object.
  /// This field is used in optimistic locking. This field will be ignored when
  /// inserting a `HealthAggregationPolicy`. An up-to-date fingerprint
  /// must be provided in order to patch the RegionHealthAggregationPolicy; Otherwise,
  /// the request will fail with error `412 conditionNotMet`. To see
  /// the latest fingerprint, make a `get()` request to retrieve the
  /// RegionHealthAggregationPolicy.
  final pulumi.Input<String>? fingerprint;
  /// Can only be set if the `policyType` field is
  /// `BACKEND_SERVICE_POLICY`. Specifies the threshold (as a
  /// percentage) of healthy endpoints required in order to consider the
  /// aggregated health result HEALTHY. Defaults to `60`. Must be in
  /// range [0, 100]. Not applicable if the `policyType` field is
  /// `DNB_PUBLIC_IP_POLICY`. Can be mutated. This field is optional,
  /// and will be set to the default if unspecified. Note that both this
  /// threshold and `minHealthyThreshold` must be satisfied in order
  /// for HEALTHY to be the aggregated result. "Endpoints" refers to network
  /// endpoints within a Network Endpoint Group or instances within an Instance
  /// Group.
  final pulumi.Input<int>? healthyPercentThreshold;
  /// Can only be set if the `policyType` field is
  /// `BACKEND_SERVICE_POLICY`. Specifies the minimum number of
  /// healthy endpoints required in order to consider the aggregated health
  /// result HEALTHY. Defaults to `1`. Must be positive. Not
  /// applicable if the `policyType` field is
  /// `DNB_PUBLIC_IP_POLICY`. Can be mutated. This field is optional,
  /// and will be set to the default if unspecified. Note that both this
  /// threshold and `healthyPercentThreshold` must be satisfied in
  /// order for HEALTHY to be the aggregated result. "Endpoints" refers to
  /// network endpoints within a Network Endpoint Group or instances within an
  /// Instance Group.
  final pulumi.Input<int>? minHealthyThreshold;
  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  final pulumi.Input<String>? name;
  /// Specifies the type of the healthAggregationPolicy. The only allowed value
  /// for global resources is `DNS_PUBLIC_IP_POLICY`. The only allowed
  /// value for regional resources is `BACKEND_SERVICE_POLICY`. Must
  /// be specified when the healthAggregationPolicy is created, and cannot be
  /// mutated.
  /// Default value is `BACKEND_SERVICE_POLICY`.
  /// Possible values are: `DNS_PUBLIC_IP_POLICY`, `BACKEND_SERVICE_POLICY`.
  final pulumi.Input<String>? policyType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// URL of the region where the health aggregation policy resides.
  final pulumi.Input<String>? region;
  /// Server-defined URL with id for the resource.
  final pulumi.Input<String>? selfLinkWithId;

  /// Creates a new [RegionHealthAggregationPolicyState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object.
  /// [healthyPercentThreshold] Can only be set if the `policyType` field is
  /// [minHealthyThreshold] Can only be set if the `policyType` field is
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [policyType] Specifies the type of the healthAggregationPolicy. The only allowed value
  /// [project] The ID of the project in which the resource belongs.
  /// [region] URL of the region where the health aggregation policy resides.
  /// [selfLinkWithId] Server-defined URL with id for the resource.
  RegionHealthAggregationPolicyState({
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.healthyPercentThreshold,
    this.minHealthyThreshold,
    this.name,
    this.policyType,
    this.project,
    this.region,
    this.selfLinkWithId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'healthyPercentThreshold': ?healthyPercentThreshold,
      'minHealthyThreshold': ?minHealthyThreshold,
      'name': ?name,
      'policyType': ?policyType,
      'project': ?project,
      'region': ?region,
      'selfLinkWithId': ?selfLinkWithId,
    };
  }

  factory RegionHealthAggregationPolicyState.fromMap(Map<String, dynamic> map) {
    return RegionHealthAggregationPolicyState(
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      healthyPercentThreshold: map['healthyPercentThreshold'] == null ? null : (map['healthyPercentThreshold']! as int).input(),
      minHealthyThreshold: map['minHealthyThreshold'] == null ? null : (map['minHealthyThreshold']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      selfLinkWithId: map['selfLinkWithId'] == null ? null : (map['selfLinkWithId']! as String).input(),
    );
  }
}

