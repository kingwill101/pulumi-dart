// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1_get_schema_iam_policy_args_doc}
/// Arguments for getSchemaIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_get_schema_iam_policy_args_doc}
class GetSchemaIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> schemaId;

  /// Creates a new [GetSchemaIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [schemaId] Required.
  GetSchemaIamPolicyArgs({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.schemaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'schemaId': schemaId,
    };
  }

  factory GetSchemaIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      schemaId: (map['schemaId'] as String).input(),
    );
  }
}

