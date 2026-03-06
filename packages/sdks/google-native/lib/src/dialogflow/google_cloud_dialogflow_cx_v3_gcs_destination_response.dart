// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Google Cloud Storage location for a Dialogflow operation that writes or exports objects (e.g. exported agent or transcripts) outside of Dialogflow.
class GoogleCloudDialogflowCxV3GcsDestinationResponse {
  /// The Google Cloud Storage URI for the exported objects. A URI is of the form: `gs://bucket/object-name-or-prefix` Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleCloudDialogflowCxV3GcsDestinationResponse].
  /// [uri] The Google Cloud Storage URI for the exported objects. A URI is of the form: `gs://bucket/object-name-or-prefix` Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.
  const GoogleCloudDialogflowCxV3GcsDestinationResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GoogleCloudDialogflowCxV3GcsDestinationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3GcsDestinationResponse(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

