// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_authorization_policy_iam_policy_networksecurity_v1beta1_args_doc}
/// Arguments for getAuthorizationPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_authorization_policy_iam_policy_networksecurity_v1beta1_args_doc}
class GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> authorizationPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Args].
  /// [authorizationPolicyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Args({
    required this.authorizationPolicyId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicyId': authorizationPolicyId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAuthorizationPolicyIamPolicyNetworksecurityV1beta1Args(
      authorizationPolicyId: pulumi.Input.fromValue(
        map['authorizationPolicyId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
