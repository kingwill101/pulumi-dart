// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message for specifying a window around a finding to apply a detection rule.
class GooglePrivacyDlpV2ProximityResponse {
  /// Number of characters after the finding to consider.
  final pulumi.Input<int> windowAfter;
  /// Number of characters before the finding to consider. For tabular data, if you want to modify the likelihood of an entire column of findngs, set this to 1. For more information, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).
  final pulumi.Input<int> windowBefore;

  /// Creates a new [GooglePrivacyDlpV2ProximityResponse].
  /// [windowAfter] Number of characters after the finding to consider.
  /// [windowBefore] Number of characters before the finding to consider. For tabular data, if you want to modify the likelihood of an entire column of findngs, set this to 1. For more information, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).
  const GooglePrivacyDlpV2ProximityResponse({
    required this.windowAfter,
    required this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowAfter': windowAfter,
      'windowBefore': windowBefore,
    };
  }

  factory GooglePrivacyDlpV2ProximityResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ProximityResponse(
      windowAfter: pulumi.Input.fromValue(map['windowAfter'] as int),
      windowBefore: pulumi.Input.fromValue(map['windowBefore'] as int),
    );
  }
}

