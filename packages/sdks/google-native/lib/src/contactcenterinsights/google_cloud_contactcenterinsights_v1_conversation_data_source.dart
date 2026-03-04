// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_dialogflow_source.dart';
import 'google_cloud_contactcenterinsights_v1_gcs_source.dart';

/// The conversation source, which is a combination of transcript, audio, and metadata.
class GoogleCloudContactcenterinsightsV1ConversationDataSource {
  /// The source when the conversation comes from Dialogflow.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1DialogflowSource>?
  dialogflowSource;

  /// A Cloud Storage location specification for the audio and transcript.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1GcsSource>? gcsSource;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationDataSource].
  /// [dialogflowSource] The source when the conversation comes from Dialogflow.
  /// [gcsSource] A Cloud Storage location specification for the audio and transcript.
  GoogleCloudContactcenterinsightsV1ConversationDataSource({
    this.dialogflowSource,
    this.gcsSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogflowSource':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudContactcenterinsightsV1DialogflowSource,
            Map<String, dynamic>
          >(dialogflowSource, (value) => value.toMap()),
      'gcsSource':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudContactcenterinsightsV1GcsSource,
            Map<String, dynamic>
          >(gcsSource, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationDataSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1ConversationDataSource(
      dialogflowSource: (() {
        final guardedValue = map['dialogflowSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudContactcenterinsightsV1DialogflowSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gcsSource: (() {
        final guardedValue = map['gcsSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudContactcenterinsightsV1GcsSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
