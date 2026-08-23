// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionHealthSource resources.
class RegionHealthSourceState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  final pulumi.Input<String>? description;
  /// Fingerprint of this resource. A hash of the contents stored in this object.
  /// This field is used in optimistic locking.
  final pulumi.Input<String>? fingerprint;
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
  final pulumi.Input<String>? region;
  /// Server-defined URL with id for the resource.
  final pulumi.Input<String>? selfLinkWithId;
  /// Specifies the type of the `HealthSource`. The only allowed value
  /// is `BACKEND_SERVICE`. Must be specified when the
  /// `HealthSource` is created, and cannot be mutated.
  /// Possible values are: `BACKEND_SERVICE`.
  final pulumi.Input<String>? sourceType;
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

  /// Creates a new [RegionHealthSourceState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when you
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object.
  /// [healthAggregationPolicy] URL to the `HealthAggregationPolicy` resource. Must be set. Must
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] URL of the region where the health source resides.
  /// [selfLinkWithId] Server-defined URL with id for the resource.
  /// [sourceType] Specifies the type of the `HealthSource`. The only allowed value
  /// [sources] URLs to the source resources. Must be size 1. Must be a
  const RegionHealthSourceState({
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.fingerprint,
    this.healthAggregationPolicy,
    this.name,
    this.project,
    this.region,
    this.selfLinkWithId,
    this.sourceType,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'healthAggregationPolicy': ?healthAggregationPolicy,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'selfLinkWithId': ?selfLinkWithId,
      'sourceType': ?sourceType,
      'sources': ?sources,
    };
  }

  factory RegionHealthSourceState.fromMap(Map<String, dynamic> map) {
    return RegionHealthSourceState(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthAggregationPolicy: (() { final guardedValue = map['healthAggregationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
