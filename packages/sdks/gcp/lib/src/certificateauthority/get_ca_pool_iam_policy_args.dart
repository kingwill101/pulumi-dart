// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificateauthority_get_ca_pool_iam_policy_get_ca_pool_iam_policy_args_doc}
/// Arguments for getCaPoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_certificateauthority_get_ca_pool_iam_policy_get_ca_pool_iam_policy_args_doc}
class GetCaPoolIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> caPool;
  /// Location of the CaPool. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetCaPoolIamPolicyArgs].
  /// [caPool] Used to find the parent resource to bind the IAM policy to
  /// [location] Location of the CaPool. A full list of valid locations can be found by
  /// [project] The ID of the project in which the resource belongs.
  GetCaPoolIamPolicyArgs({
    required this.caPool,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPool': caPool,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetCaPoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCaPoolIamPolicyArgs(
      caPool: (map['caPool'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

