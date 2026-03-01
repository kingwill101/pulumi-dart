// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SourceIamPolicy resources.
class SourceIamPolicyState {
  final pulumi.Input<String>? etag;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String>? organization;
  final pulumi.Input<String>? policyData;
  final pulumi.Input<String>? source;

  /// Creates a new [SourceIamPolicyState].
  /// [etag] Optional.
  /// [organization] The organization whose Cloud Security Command Center the Source
  /// [policyData] Optional.
  /// [source] Optional.
  SourceIamPolicyState({
    pulumi.Output<String>? etag,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? policyData,
    pulumi.Output<String>? source,
  }) :
      etag = pulumi.Input.asOptionalInput<String>(etag),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      policyData = pulumi.Input.asOptionalInput<String>(policyData),
      source = pulumi.Input.asOptionalInput<String>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'organization': ?organization,
      'policyData': ?policyData,
      'source': ?source,
    };
  }

  factory SourceIamPolicyState.fromMap(Map<String, dynamic> map) {
    return SourceIamPolicyState(
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      policyData: map['policyData'] == null ? null : pulumi.Output.create<String>(map['policyData'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

