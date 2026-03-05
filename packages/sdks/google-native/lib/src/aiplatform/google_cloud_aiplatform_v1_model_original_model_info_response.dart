// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about the original Model if this Model is a copy.
class GoogleCloudAiplatformV1ModelOriginalModelInfoResponse {
  /// The resource name of the Model this Model is a copy of, including the revision. Format: `projects/{project}/locations/{location}/models/{model_id}@{version_id}`
  final pulumi.Input<String> model;

  /// Creates a new [GoogleCloudAiplatformV1ModelOriginalModelInfoResponse].
  /// [model] The resource name of the Model this Model is a copy of, including the revision. Format: `projects/{project}/locations/{location}/models/{model_id}@{version_id}`
  GoogleCloudAiplatformV1ModelOriginalModelInfoResponse({
    required this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': model,
    };
  }

  factory GoogleCloudAiplatformV1ModelOriginalModelInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelOriginalModelInfoResponse(
      model: pulumi.Input.fromValue(map['model'] as String),
    );
  }
}

