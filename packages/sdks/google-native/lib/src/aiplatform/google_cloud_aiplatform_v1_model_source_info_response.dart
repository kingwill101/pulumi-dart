// ignore_for_file: unused_element, unnecessary_cast


/// Detail description of the source information of the model.
class GoogleCloudAiplatformV1ModelSourceInfoResponse {
  /// If this Model is copy of another Model. If true then source_type pertains to the original.
  final bool copy;
  /// Type of the model source.
  final String sourceType;

  /// Creates a new [GoogleCloudAiplatformV1ModelSourceInfoResponse].
  /// [copy] If this Model is copy of another Model. If true then source_type pertains to the original.
  /// [sourceType] Type of the model source.
  GoogleCloudAiplatformV1ModelSourceInfoResponse({
    required this.copy,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copy': copy,
      'sourceType': sourceType,
    };
  }

  factory GoogleCloudAiplatformV1ModelSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelSourceInfoResponse(
      copy: map['copy'] as bool,
      sourceType: map['sourceType'] as String,
    );
  }
}

