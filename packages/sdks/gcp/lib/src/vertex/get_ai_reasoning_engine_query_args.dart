// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_get_ai_reasoning_engine_query_get_ai_reasoning_engine_query_args_doc}
/// Arguments for getAiReasoningEngineQuery.
/// {@endtemplate}
/// {@macro pulumi_vertex_get_ai_reasoning_engine_query_get_ai_reasoning_engine_query_args_doc}
class GetAiReasoningEngineQueryArgs {
  /// Class method to be used for the query. It is optional and defaults to "query" if unspecified.
  final pulumi.Input<String?>? classMethod;
  /// Input content provided by users in JSON object format. Examples include text query, function calling parameters, media bytes, etc..
  final pulumi.Input<String?>? input;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider default project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the Vertex AI Reasoning Engine to query.
  ///
  /// - - -
  final pulumi.Input<String> reasoningEngineId;
  /// The location of the resource.
  final pulumi.Input<String> region;

  /// Creates a new [GetAiReasoningEngineQueryArgs].
  /// [classMethod] Class method to be used for the query. It is optional and defaults to "query" if unspecified.
  /// [input] Input content provided by users in JSON object format. Examples include text query, function calling parameters, media bytes, etc..
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider default project is used.
  /// [reasoningEngineId] The ID of the Vertex AI Reasoning Engine to query.
  /// [region] The location of the resource.
  const GetAiReasoningEngineQueryArgs({
    this.classMethod,
    this.input,
    this.project,
    required this.reasoningEngineId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classMethod': ?classMethod,
      'input': ?input,
      'project': ?project,
      'reasoningEngineId': reasoningEngineId,
      'region': region,
    };
  }

  factory GetAiReasoningEngineQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetAiReasoningEngineQueryArgs(
      classMethod: (() { final guardedValue = map['classMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reasoningEngineId: pulumi.Input.fromValue(map['reasoningEngineId'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
