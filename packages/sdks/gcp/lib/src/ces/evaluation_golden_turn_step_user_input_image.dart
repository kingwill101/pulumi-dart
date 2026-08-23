// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationGoldenTurnStepUserInputImage {
  /// Raw bytes of the image.
  final pulumi.Input<String> data;
  /// The IANA standard MIME type of the source data.
  final pulumi.Input<String> mimeType;

  /// Creates a new [EvaluationGoldenTurnStepUserInputImage].
  /// [data] Raw bytes of the image.
  /// [mimeType] The IANA standard MIME type of the source data.
  const EvaluationGoldenTurnStepUserInputImage({
    required this.data,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'mimeType': mimeType,
    };
  }

  factory EvaluationGoldenTurnStepUserInputImage.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepUserInputImage(
      data: pulumi.Input.fromValue(map['data'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
    );
  }
}
