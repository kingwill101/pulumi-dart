// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type.dart';

/// Max findings configuration per infoType, per content item or long running DlpJob.
class GooglePrivacyDlpV2InfoTypeLimit {
  /// Type of information the findings limit applies to. Only one limit per info_type should be provided. If InfoTypeLimit does not have an info_type, the DLP API applies the limit against all info_types that are found but not specified in another InfoTypeLimit.
  final pulumi.Input<GooglePrivacyDlpV2InfoType>? infoType;

  /// Max findings limit for the given infoType.
  final pulumi.Input<int>? maxFindings;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeLimit].
  /// [infoType] Type of information the findings limit applies to. Only one limit per info_type should be provided. If InfoTypeLimit does not have an info_type, the DLP API applies the limit against all info_types that are found but not specified in another InfoTypeLimit.
  /// [maxFindings] Max findings limit for the given infoType.
  GooglePrivacyDlpV2InfoTypeLimit({this.infoType, this.maxFindings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2InfoType,
            Map<String, dynamic>
          >(infoType, (value) => value.toMap()),
      'maxFindings': ?maxFindings,
    };
  }

  factory GooglePrivacyDlpV2InfoTypeLimit.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeLimit(
      infoType: (() {
        final guardedValue = map['infoType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2InfoType.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxFindings: (() {
        final guardedValue = map['maxFindings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
