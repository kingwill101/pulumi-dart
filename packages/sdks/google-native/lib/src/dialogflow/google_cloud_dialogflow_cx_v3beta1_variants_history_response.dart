// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_version_variants_response.dart';

/// The history of variants update.
class GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse {
  /// Update time of the variants.
  final pulumi.Input<String> updateTime;
  /// The flow versions as the variants.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1VersionVariantsResponse> versionVariants;

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
      'versionVariants': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1VersionVariantsResponse, Map<String, dynamic>>(versionVariants, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse(
      updateTime: (map['updateTime'] as String).input(),
      versionVariants: (GoogleCloudDialogflowCxV3beta1VersionVariantsResponse.fromMap((map['versionVariants'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

