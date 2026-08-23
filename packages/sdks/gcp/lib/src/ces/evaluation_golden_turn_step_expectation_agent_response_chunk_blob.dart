// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationGoldenTurnStepExpectationAgentResponseChunkBlob {
  /// Raw bytes of the blob.
  final pulumi.Input<String> data;
  /// The IANA standard MIME type of the source data.
  final pulumi.Input<String> mimeType;

  /// Creates a new [EvaluationGoldenTurnStepExpectationAgentResponseChunkBlob].
  /// [data] Raw bytes of the blob.
  /// [mimeType] The IANA standard MIME type of the source data.
  const EvaluationGoldenTurnStepExpectationAgentResponseChunkBlob({
    required this.data,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'mimeType': mimeType,
    };
  }

  factory EvaluationGoldenTurnStepExpectationAgentResponseChunkBlob.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepExpectationAgentResponseChunkBlob(
      data: pulumi.Input.fromValue(map['data'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
    );
  }
}
