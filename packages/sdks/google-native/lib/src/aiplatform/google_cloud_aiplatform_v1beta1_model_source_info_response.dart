// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detail description of the source information of the model.
class GoogleCloudAiplatformV1beta1ModelSourceInfoResponse {
  /// If this Model is copy of another Model. If true then source_type pertains to the original.
  final pulumi.Input<bool> copy;
  /// Type of the model source.
  final pulumi.Input<String> sourceType;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelSourceInfoResponse].
  /// [copy] If this Model is copy of another Model. If true then source_type pertains to the original.
  /// [sourceType] Type of the model source.
  const GoogleCloudAiplatformV1beta1ModelSourceInfoResponse({
    required this.copy,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copy': copy,
      'sourceType': sourceType,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelSourceInfoResponse(
      copy: pulumi.Input.fromValue(map['copy'] as bool),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}
