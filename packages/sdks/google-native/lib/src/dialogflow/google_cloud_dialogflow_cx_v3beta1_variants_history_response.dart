// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_version_variants_response.dart';

/// The history of variants update.
class GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse {
  /// Update time of the variants.
  final String updateTime;
  /// The flow versions as the variants.
  final GoogleCloudDialogflowCxV3beta1VersionVariantsResponse versionVariants;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse].
  /// [updateTime] Update time of the variants.
  /// [versionVariants] The flow versions as the variants.
  GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse({
    required this.updateTime,
    required this.versionVariants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateTime': updateTime,
      'versionVariants': versionVariants.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse(
      updateTime: map['updateTime'] as String,
      versionVariants: GoogleCloudDialogflowCxV3beta1VersionVariantsResponse.fromMap((map['versionVariants'] as Map).cast<String, dynamic>()),
    );
  }
}

