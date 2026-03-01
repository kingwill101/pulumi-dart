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
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> schemaId,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      schemaId = pulumi.Input.asInput<String>(schemaId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'schemaId': schemaId,
    };
  }

  factory GetSchemaIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schemaId: pulumi.Output.create<String>(map['schemaId'] as String),
    );
  }
}

