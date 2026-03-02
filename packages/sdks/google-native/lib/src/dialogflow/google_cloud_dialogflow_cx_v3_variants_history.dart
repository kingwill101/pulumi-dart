// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_version_variants.dart';

/// The history of variants update.
class GoogleCloudDialogflowCxV3VariantsHistory {
  /// Update time of the variants.
  final pulumi.Input<String>? updateTime;
  /// The flow versions as the variants.
  final pulumi.Input<GoogleCloudDialogflowCxV3VersionVariants>? versionVariants;

  /// Creates a new [GoogleCloudDialogflowCxV3VariantsHistory].
  /// [updateTime] Update time of the variants.
  /// [versionVariants] The flow versions as the variants.
  GoogleCloudDialogflowCxV3VariantsHistory({
    this.updateTime,
    this.versionVariants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateTime': ?updateTime,
      'versionVariants': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3VersionVariants, Map<String, dynamic>>(versionVariants, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3VariantsHistory.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3VariantsHistory(
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      versionVariants: map['versionVariants'] == null ? null : (GoogleCloudDialogflowCxV3VersionVariants.fromMap((map['versionVariants'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

