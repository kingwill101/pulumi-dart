// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_response.dart';

/// Replace each input value with a given `Value`.
class GooglePrivacyDlpV2ReplaceValueConfigResponse {
  /// Value to replace it with.
  final pulumi.Input<GooglePrivacyDlpV2ValueResponse> newValue;

  /// Creates a new [GooglePrivacyDlpV2ReplaceValueConfigResponse].
  /// [newValue] Value to replace it with.
  GooglePrivacyDlpV2ReplaceValueConfigResponse({
    required this.newValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newValue': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ValueResponse, Map<String, dynamic>>(newValue, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ReplaceValueConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ReplaceValueConfigResponse(
      newValue: (GooglePrivacyDlpV2ValueResponse.fromMap((map['newValue'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

