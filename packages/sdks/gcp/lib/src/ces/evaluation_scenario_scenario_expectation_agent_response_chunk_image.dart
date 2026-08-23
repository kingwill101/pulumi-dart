// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationScenarioScenarioExpectationAgentResponseChunkImage {
  /// Raw bytes of the image.
  final pulumi.Input<String> data;
  /// The IANA standard MIME type of the source data.
  final pulumi.Input<String> mimeType;

  /// Creates a new [EvaluationScenarioScenarioExpectationAgentResponseChunkImage].
  /// [data] Raw bytes of the image.
  /// [mimeType] The IANA standard MIME type of the source data.
  const EvaluationScenarioScenarioExpectationAgentResponseChunkImage({
    required this.data,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'mimeType': mimeType,
    };
  }

  factory EvaluationScenarioScenarioExpectationAgentResponseChunkImage.fromMap(Map<String, dynamic> map) {
    return EvaluationScenarioScenarioExpectationAgentResponseChunkImage(
      data: pulumi.Input.fromValue(map['data'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
    );
  }
}
