// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_pipeline_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_index_pipeline_pipeline_args_doc}
class PipelineArgs {
  /// Specifies the public ID of the account.
  final pulumi.Input<String> accountId;
  /// Specifies the name of the Pipeline.
  final pulumi.Input<String> name;
  /// Specifies SQL for the Pipeline processing flow.
  final pulumi.Input<String> sql;

  /// Creates a new [PipelineArgs].
  /// [accountId] Specifies the public ID of the account.
  /// [name] Specifies the name of the Pipeline.
  /// [sql] Specifies SQL for the Pipeline processing flow.
  const PipelineArgs({
    required this.accountId,
    required this.name,
    required this.sql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
      'sql': sql,
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      sql: pulumi.Input.fromValue(map['sql'] as String),
    );
  }
}
