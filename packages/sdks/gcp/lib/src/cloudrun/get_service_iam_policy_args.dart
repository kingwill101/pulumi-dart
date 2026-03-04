// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudrun_get_service_iam_policy_get_service_iam_policy_args_doc}
/// Arguments for getServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudrun_get_service_iam_policy_get_service_iam_policy_args_doc}
class GetServiceIamPolicyArgs {
  /// The location of the cloud run instance. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> service;

  /// Creates a new [GetServiceIamPolicyArgs].
  /// [location] The location of the cloud run instance. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  /// [service] Used to find the parent resource to bind the IAM policy to
  GetServiceIamPolicyArgs({this.location, this.project, required this.service});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'service': service,
    };
  }

  factory GetServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceIamPolicyArgs(
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
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
