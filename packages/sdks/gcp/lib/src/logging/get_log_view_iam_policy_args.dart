// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_get_log_view_iam_policy_get_log_view_iam_policy_args_doc}
/// Arguments for getLogViewIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_logging_get_log_view_iam_policy_get_log_view_iam_policy_args_doc}
class GetLogViewIamPolicyArgs {
  /// The bucket of the resource Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> bucket;
  /// The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;
  /// The parent of the resource. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> parent;

  /// Creates a new [GetLogViewIamPolicyArgs].
  /// [bucket] The bucket of the resource Used to find the parent resource to bind the IAM policy to
  /// [location] The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [parent] The parent of the resource. Used to find the parent resource to bind the IAM policy to
  const GetLogViewIamPolicyArgs({
    required this.bucket,
    this.location,
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'location': ?location,
      'name': name,
      'parent': parent,
    };
  }

  factory GetLogViewIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLogViewIamPolicyArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}

