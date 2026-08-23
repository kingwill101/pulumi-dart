// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_gcs_sources_response.dart';

/// Represents the configuration of importing a set of conversation files in Google Cloud Storage.
class GoogleCloudDialogflowV2InputConfigResponse {
  /// The Cloud Storage URI has the form gs:////agent*.json. Wildcards are allowed and will be expanded into all matched JSON files, which will be read as one conversation per file.
  final pulumi.Input<GoogleCloudDialogflowV2GcsSourcesResponse> gcsSource;

  /// Creates a new [GoogleCloudDialogflowV2InputConfigResponse].
  /// [gcsSource] The Cloud Storage URI has the form gs:////agent*.json. Wildcards are allowed and will be expanded into all matched JSON files, which will be read as one conversation per file.
  const GoogleCloudDialogflowV2InputConfigResponse({
    required this.gcsSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsSource': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2GcsSourcesResponse, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2InputConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2InputConfigResponse(
      gcsSource: pulumi.Input.fromValue(GoogleCloudDialogflowV2GcsSourcesResponse.fromMap((map['gcsSource']! as Map).cast<String, dynamic>())),
    );
  }
}
