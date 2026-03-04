// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_metastore_service_iam_policy_get_metastore_service_iam_policy_args_doc}
/// Arguments for getMetastoreServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_metastore_service_iam_policy_get_metastore_service_iam_policy_args_doc}
class GetMetastoreServiceIamPolicyArgs {
  /// The location where the metastore service should reside.
  /// The default value is `global`.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetMetastoreServiceIamPolicyArgs].
  /// [location] The location where the metastore service should reside.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] Used to find the parent resource to bind the IAM policy to
  GetMetastoreServiceIamPolicyArgs({
    this.location,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetMetastoreServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceIamPolicyArgs(
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
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
