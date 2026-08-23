// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationGoldenTurnStepUserInputBlob {
  /// Raw bytes of the blob.
  final pulumi.Input<String> data;
  /// The IANA standard MIME type of the source data.
  final pulumi.Input<String> mimeType;

  /// Creates a new [EvaluationGoldenTurnStepUserInputBlob].
  /// [data] Raw bytes of the blob.
  /// [mimeType] The IANA standard MIME type of the source data.
  const EvaluationGoldenTurnStepUserInputBlob({
    required this.data,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'mimeType': mimeType,
    };
  }

  factory EvaluationGoldenTurnStepUserInputBlob.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepUserInputBlob(
      data: pulumi.Input.fromValue(map['data'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
    );
  }
}
