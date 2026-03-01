// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RepositoryIamPolicy resources.
class RepositoryIamPolicyState {
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? policyData;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? repository;

  /// Creates a new [RepositoryIamPolicyState].
  /// [etag] Optional.
  /// [policyData] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [repository] Optional.
  RepositoryIamPolicyState({
    pulumi.Output<String>? etag,
    pulumi.Output<String>? policyData,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? repository,
  }) :
      etag = pulumi.Input.asOptionalInput<String>(etag),
      policyData = pulumi.Input.asOptionalInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asOptionalInput<String>(repository);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'policyData': ?policyData,
      'project': ?project,
      'region': ?region,
      'repository': ?repository,
    };
  }

  factory RepositoryIamPolicyState.fromMap(Map<String, dynamic> map) {
    return RepositoryIamPolicyState(
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      policyData: map['policyData'] == null ? null : pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repository: map['repository'] == null ? null : pulumi.Output.create<String>(map['repository'] as String),
    );
  }
}

