// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message for specifying a window around a finding to apply a detection rule.
class GooglePrivacyDlpV2Proximity {
  /// Number of characters after the finding to consider.
  final pulumi.Input<int>? windowAfter;
  /// Number of characters before the finding to consider. For tabular data, if you want to modify the likelihood of an entire column of findngs, set this to 1. For more information, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).
  final pulumi.Input<int>? windowBefore;

  /// Creates a new [GooglePrivacyDlpV2Proximity].
  /// [windowAfter] Number of characters after the finding to consider.
  /// [windowBefore] Number of characters before the finding to consider. For tabular data, if you want to modify the likelihood of an entire column of findngs, set this to 1. For more information, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).
  GooglePrivacyDlpV2Proximity({
    this.windowAfter,
    this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowAfter': ?windowAfter,
      'windowBefore': ?windowBefore,
    };
  }

  factory GooglePrivacyDlpV2Proximity.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Proximity(
      windowAfter: map['windowAfter'] == null ? null : (map['windowAfter'] as int).input(),
      windowBefore: map['windowBefore'] == null ? null : (map['windowBefore'] as int).input(),
    );
  }
}

