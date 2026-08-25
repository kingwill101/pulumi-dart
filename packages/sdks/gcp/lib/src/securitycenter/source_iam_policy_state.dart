// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SourceIamPolicy resources.
class SourceIamPolicyState {
  final pulumi.Input<String?>? etag;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String?>? organization;
  final pulumi.Input<String?>? policyData;
  final pulumi.Input<String?>? source;

  /// Creates a new [SourceIamPolicyState].
  /// [etag] Optional.
  /// [organization] The organization whose Cloud Security Command Center the Source
  /// [policyData] Optional.
  /// [source] Optional.
  const SourceIamPolicyState({
    this.etag,
    this.organization,
    this.policyData,
    this.source,
  });

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
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
