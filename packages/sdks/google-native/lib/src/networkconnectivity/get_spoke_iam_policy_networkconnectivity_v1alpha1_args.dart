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
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> spokeId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      spokeId = pulumi.Input.asInput<String>(spokeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'spokeId': spokeId,
    };
  }

  factory GetSpokeIamPolicyNetworkconnectivityV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetSpokeIamPolicyNetworkconnectivityV1alpha1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      spokeId: pulumi.Output.create<String>(map['spokeId'] as String),
    );
  }
}

