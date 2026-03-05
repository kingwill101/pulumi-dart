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
    this.etag,
    this.policyData,
    this.project,
    this.region,
    this.repository,
  });

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
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

