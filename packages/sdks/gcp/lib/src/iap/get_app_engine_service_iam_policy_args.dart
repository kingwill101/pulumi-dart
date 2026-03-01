// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_app_engine_service_iam_policy_get_app_engine_service_iam_policy_args_doc}
/// Arguments for getAppEngineServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_app_engine_service_iam_policy_get_app_engine_service_iam_policy_args_doc}
class GetAppEngineServiceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> appId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> service;

  /// Creates a new [GetAppEngineServiceIamPolicyArgs].
  /// [appId] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [service] Used to find the parent resource to bind the IAM policy to
  GetAppEngineServiceIamPolicyArgs({
    required pulumi.Output<String> appId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> service,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
      'service': service,
    };
  }

  factory GetAppEngineServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAppEngineServiceIamPolicyArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      service: pulumi.Output.create<String>(map['service'] as String),
    );
  }
}

