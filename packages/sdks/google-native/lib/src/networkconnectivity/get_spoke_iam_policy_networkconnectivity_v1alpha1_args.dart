// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1alpha1_get_spoke_iam_policy_networkconnectivity_v1alpha1_args_doc}
/// Arguments for getSpokeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1alpha1_get_spoke_iam_policy_networkconnectivity_v1alpha1_args_doc}
class GetSpokeIamPolicyNetworkconnectivityV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> spokeId;

  /// Creates a new [GetSpokeIamPolicyNetworkconnectivityV1alpha1Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [spokeId] Required.
  GetSpokeIamPolicyNetworkconnectivityV1alpha1Args({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.spokeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'spokeId': spokeId,
    };
  }

  factory GetSpokeIamPolicyNetworkconnectivityV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSpokeIamPolicyNetworkconnectivityV1alpha1Args(
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
      spokeId: pulumi.Input.fromValue(map['spokeId'] as String),
    );
  }
}
