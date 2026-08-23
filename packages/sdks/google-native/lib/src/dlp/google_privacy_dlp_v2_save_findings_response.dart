// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_output_storage_config_response.dart';

/// If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk
class GooglePrivacyDlpV2SaveFindingsResponse {
  /// Location to store findings outside of DLP.
  final pulumi.Input<GooglePrivacyDlpV2OutputStorageConfigResponse> outputConfig;

  /// Creates a new [GooglePrivacyDlpV2SaveFindingsResponse].
  /// [outputConfig] Location to store findings outside of DLP.
  const GooglePrivacyDlpV2SaveFindingsResponse({
    required this.outputConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2OutputStorageConfigResponse, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2SaveFindingsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2SaveFindingsResponse(
      outputConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2OutputStorageConfigResponse.fromMap((map['outputConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
