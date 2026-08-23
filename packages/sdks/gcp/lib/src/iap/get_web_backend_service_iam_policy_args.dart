// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_web_backend_service_iam_policy_get_web_backend_service_iam_policy_args_doc}
/// Arguments for getWebBackendServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_web_backend_service_iam_policy_get_web_backend_service_iam_policy_args_doc}
class GetWebBackendServiceIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> webBackendService;

  /// Creates a new [GetWebBackendServiceIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [webBackendService] Used to find the parent resource to bind the IAM policy to
  const GetWebBackendServiceIamPolicyArgs({
    this.project,
    required this.webBackendService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'webBackendService': webBackendService,
    };
  }

  factory GetWebBackendServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebBackendServiceIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webBackendService: pulumi.Input.fromValue(map['webBackendService'] as String),
    );
  }
}
