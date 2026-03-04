// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_metastore_federation_iam_policy_get_metastore_federation_iam_policy_args_doc}
/// Arguments for getMetastoreFederationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_metastore_federation_iam_policy_get_metastore_federation_iam_policy_args_doc}
class GetMetastoreFederationIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> federationId;

  /// The location where the metastore federation should reside.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetastoreFederationIamPolicyArgs].
  /// [federationId] Used to find the parent resource to bind the IAM policy to
  /// [location] The location where the metastore federation should reside.
  /// [project] The ID of the project in which the resource belongs.
  GetMetastoreFederationIamPolicyArgs({
    required this.federationId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federationId': federationId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetMetastoreFederationIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMetastoreFederationIamPolicyArgs(
      federationId: pulumi.Input.fromValue(map['federationId'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
