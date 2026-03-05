// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This contains flag for manually disabling transfer learning for a study. The names of prior studies being used for transfer learning (if any) are also listed here.
class GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse {
  /// Flag to to manually prevent vizier from using transfer learning on a new study. Otherwise, vizier will automatically determine whether or not to use transfer learning.
  final pulumi.Input<bool> disableTransferLearning;
  /// Names of previously completed studies
  final pulumi.Input<List<String>> priorStudyNames;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse].
  /// [disableTransferLearning] Flag to to manually prevent vizier from using transfer learning on a new study. Otherwise, vizier will automatically determine whether or not to use transfer learning.
  /// [priorStudyNames] Names of previously completed studies
  GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse({
    required this.disableTransferLearning,
    required this.priorStudyNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableTransferLearning': disableTransferLearning,
      'priorStudyNames': priorStudyNames,
    };
  }

  factory GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse(
      disableTransferLearning: pulumi.Input.fromValue(map['disableTransferLearning'] as bool),
      priorStudyNames: pulumi.Input.fromValue((map['priorStudyNames'] as List).cast<String>()),
    );
  }
}

