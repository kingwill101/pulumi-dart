// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Cloud Storage source of conversation data.
class GoogleCloudContactcenterinsightsV1GcsSource {
  /// Cloud Storage URI that points to a file that contains the conversation audio.
  final pulumi.Input<String>? audioUri;

  /// Immutable. Cloud Storage URI that points to a file that contains the conversation transcript.
  final pulumi.Input<String>? transcriptUri;

  /// Creates a new [GoogleCloudContactcenterinsightsV1GcsSource].
  /// [audioUri] Cloud Storage URI that points to a file that contains the conversation audio.
  /// [transcriptUri] Immutable. Cloud Storage URI that points to a file that contains the conversation transcript.
  GoogleCloudContactcenterinsightsV1GcsSource({
    this.audioUri,
    this.transcriptUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioUri': ?audioUri,
      'transcriptUri': ?transcriptUri,
    };
  }

  factory GoogleCloudContactcenterinsightsV1GcsSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1GcsSource(
      audioUri: (() {
        final guardedValue = map['audioUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transcriptUri: (() {
        final guardedValue = map['transcriptUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
