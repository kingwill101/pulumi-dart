// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Dialogflow source of conversation data.
class GoogleCloudContactcenterinsightsV1DialogflowSource {
  /// Cloud Storage URI that points to a file that contains the conversation audio.
  final pulumi.Input<String>? audioUri;

  /// Creates a new [GoogleCloudContactcenterinsightsV1DialogflowSource].
  /// [audioUri] Cloud Storage URI that points to a file that contains the conversation audio.
  GoogleCloudContactcenterinsightsV1DialogflowSource({this.audioUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'audioUri': ?audioUri};
  }

  factory GoogleCloudContactcenterinsightsV1DialogflowSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1DialogflowSource(
      audioUri: (() {
        final guardedValue = map['audioUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
