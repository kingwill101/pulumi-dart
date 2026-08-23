// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_dialogflow_source_response.dart';
import 'google_cloud_contactcenterinsights_v1_gcs_source_response.dart';

/// The conversation source, which is a combination of transcript, audio, and metadata.
class GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse {
  /// The source when the conversation comes from Dialogflow.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1DialogflowSourceResponse> dialogflowSource;
  /// A Cloud Storage location specification for the audio and transcript.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1GcsSourceResponse> gcsSource;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse].
  /// [dialogflowSource] The source when the conversation comes from Dialogflow.
  /// [gcsSource] A Cloud Storage location specification for the audio and transcript.
  const GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse({
    required this.dialogflowSource,
    required this.gcsSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogflowSource': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1DialogflowSourceResponse, Map<String, dynamic>>(dialogflowSource, (value) => value.toMap()),
      'gcsSource': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1GcsSourceResponse, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse(
      dialogflowSource: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1DialogflowSourceResponse.fromMap((map['dialogflowSource']! as Map).cast<String, dynamic>())),
      gcsSource: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1GcsSourceResponse.fromMap((map['gcsSource']! as Map).cast<String, dynamic>())),
    );
  }
}
