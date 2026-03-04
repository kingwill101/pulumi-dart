// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_version_variants_response.dart';

/// The history of variants update.
class GoogleCloudDialogflowCxV3VariantsHistoryResponse {
  /// Update time of the variants.
  final pulumi.Input<String> updateTime;

  /// The flow versions as the variants.
  final pulumi.Input<GoogleCloudDialogflowCxV3VersionVariantsResponse>
  versionVariants;

  /// Creates a new [GoogleCloudDialogflowCxV3VariantsHistoryResponse].
  /// [updateTime] Update time of the variants.
  /// [versionVariants] The flow versions as the variants.
  GoogleCloudDialogflowCxV3VariantsHistoryResponse({
    required this.updateTime,
    required this.versionVariants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateTime': updateTime,
      'versionVariants':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowCxV3VersionVariantsResponse,
            Map<String, dynamic>
          >(versionVariants, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3VariantsHistoryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3VariantsHistoryResponse(
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      versionVariants: pulumi.Input.fromValue(
        GoogleCloudDialogflowCxV3VersionVariantsResponse.fromMap(
          (map['versionVariants']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
