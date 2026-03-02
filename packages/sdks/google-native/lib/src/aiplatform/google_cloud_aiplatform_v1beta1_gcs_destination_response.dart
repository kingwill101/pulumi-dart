// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Google Cloud Storage location where the output is to be written to.
class GoogleCloudAiplatformV1beta1GcsDestinationResponse {
  /// Google Cloud Storage URI to output directory. If the uri doesn't end with '/', a '/' will be automatically appended. The directory is created if it doesn't exist.
  final pulumi.Input<String> outputUriPrefix;

  /// Creates a new [GoogleCloudAiplatformV1beta1GcsDestinationResponse].
  /// [outputUriPrefix] Google Cloud Storage URI to output directory. If the uri doesn't end with '/', a '/' will be automatically appended. The directory is created if it doesn't exist.
  GoogleCloudAiplatformV1beta1GcsDestinationResponse({
    required this.outputUriPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputUriPrefix': outputUriPrefix,
    };
  }

  factory GoogleCloudAiplatformV1beta1GcsDestinationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1GcsDestinationResponse(
      outputUriPrefix: (map['outputUriPrefix'] as String).input(),
    );
  }
}

