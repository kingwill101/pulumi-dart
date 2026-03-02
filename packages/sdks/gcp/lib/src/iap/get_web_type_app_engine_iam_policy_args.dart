// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_web_type_app_engine_iam_policy_get_web_type_app_engine_iam_policy_args_doc}
/// Arguments for getWebTypeAppEngineIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_web_type_app_engine_iam_policy_get_web_type_app_engine_iam_policy_args_doc}
class GetWebTypeAppEngineIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> appId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetWebTypeAppEngineIamPolicyArgs].
  /// [appId] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetWebTypeAppEngineIamPolicyArgs({
    required this.appId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
    };
  }

  factory GetWebTypeAppEngineIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebTypeAppEngineIamPolicyArgs(
      appId: (map['appId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

