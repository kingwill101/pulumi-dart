// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A point in a conversation that marks the start or the end of an annotation.
class GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse {
  /// The index in the sequence of transcribed pieces of the conversation where the boundary is located. This index starts at zero.
  final pulumi.Input<int> transcriptIndex;
  /// The word index of this boundary with respect to the first word in the transcript piece. This index starts at zero.
  final pulumi.Input<int> wordIndex;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse].
  /// [transcriptIndex] The index in the sequence of transcribed pieces of the conversation where the boundary is located. This index starts at zero.
  /// [wordIndex] The word index of this boundary with respect to the first word in the transcript piece. This index starts at zero.
  const GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse({
    required this.transcriptIndex,
    required this.wordIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transcriptIndex': transcriptIndex,
      'wordIndex': wordIndex,
    };
  }

  factory GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse(
      transcriptIndex: pulumi.Input.fromValue(map['transcriptIndex'] as int),
      wordIndex: pulumi.Input.fromValue(map['wordIndex'] as int),
    );
  }
}
