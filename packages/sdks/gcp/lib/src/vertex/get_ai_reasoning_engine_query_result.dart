// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAiReasoningEngineQuery.
class GetAiReasoningEngineQueryResult {
  final String? classMethod;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? input;
  /// The JSON-serialized output resulting from the query.
  final String output;
  final String? project;
  final String reasoningEngineId;
  final String region;

  /// Creates a new [GetAiReasoningEngineQueryResult].
  /// [classMethod] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [input] Optional.
  /// [output] The JSON-serialized output resulting from the query.
  /// [project] Optional.
  /// [reasoningEngineId] Required.
  /// [region] Required.
  const GetAiReasoningEngineQueryResult({
    this.classMethod,
    required this.id,
    this.input,
    required this.output,
    this.project,
    required this.reasoningEngineId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classMethod': ?classMethod,
      'id': id,
      'input': ?input,
      'output': output,
      'project': ?project,
      'reasoningEngineId': reasoningEngineId,
      'region': region,
    };
  }

  factory GetAiReasoningEngineQueryResult.fromMap(Map<String, dynamic> map) {
    return GetAiReasoningEngineQueryResult(
      classMethod: (() { final guardedValue = map['classMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return guardedValue as String; })(),
      output: map['output'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reasoningEngineId: map['reasoningEngineId'] as String,
      region: map['region'] as String,
    );
  }
}
