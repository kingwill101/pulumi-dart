// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_output_storage_config.dart';

/// If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk
class GooglePrivacyDlpV2SaveFindings {
  /// Location to store findings outside of DLP.
  final pulumi.Input<GooglePrivacyDlpV2OutputStorageConfig>? outputConfig;

  /// Creates a new [GooglePrivacyDlpV2SaveFindings].
  /// [outputConfig] Location to store findings outside of DLP.
  GooglePrivacyDlpV2SaveFindings({
    this.outputConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2OutputStorageConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2SaveFindings.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2SaveFindings(
      outputConfig: (() { final guardedValue = map['outputConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2OutputStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

