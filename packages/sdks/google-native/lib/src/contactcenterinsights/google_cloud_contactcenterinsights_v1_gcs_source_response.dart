// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Cloud Storage source of conversation data.
class GoogleCloudContactcenterinsightsV1GcsSourceResponse {
  /// Cloud Storage URI that points to a file that contains the conversation audio.
  final pulumi.Input<String> audioUri;
  /// Immutable. Cloud Storage URI that points to a file that contains the conversation transcript.
  final pulumi.Input<String> transcriptUri;

  /// Creates a new [GoogleCloudContactcenterinsightsV1GcsSourceResponse].
  /// [audioUri] Cloud Storage URI that points to a file that contains the conversation audio.
  /// [transcriptUri] Immutable. Cloud Storage URI that points to a file that contains the conversation transcript.
  const GoogleCloudContactcenterinsightsV1GcsSourceResponse({
    required this.audioUri,
    required this.transcriptUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioUri': audioUri,
      'transcriptUri': transcriptUri,
    };
  }

  factory GoogleCloudContactcenterinsightsV1GcsSourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1GcsSourceResponse(
      audioUri: pulumi.Input.fromValue(map['audioUri'] as String),
      transcriptUri: pulumi.Input.fromValue(map['transcriptUri'] as String),
    );
  }
}
