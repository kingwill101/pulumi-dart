// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_likelihood_adjustment.dart';
import 'google_privacy_dlp_v2_proximity.dart';
import 'google_privacy_dlp_v2_regex.dart';

/// The rule that adjusts the likelihood of findings within a certain proximity of hotwords.
class GooglePrivacyDlpV2HotwordRule {
  /// Regular expression pattern defining what qualifies as a hotword.
  final pulumi.Input<GooglePrivacyDlpV2Regex>? hotwordRegex;
  /// Likelihood adjustment to apply to all matching findings.
  final pulumi.Input<GooglePrivacyDlpV2LikelihoodAdjustment>? likelihoodAdjustment;
  /// Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The finding itself will be included in the window, so that hotwords can be used to match substrings of the finding itself. Suppose you want Cloud DLP to promote the likelihood of the phone number regex "\(\d{3}\) \d{3}-\d{4}" if the area code is known to be the area code of a company's office. In this case, use the hotword regex "\(xxx\)", where "xxx" is the area code in question. For tabular data, if you want to modify the likelihood of an entire column of findngs, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).
  final pulumi.Input<GooglePrivacyDlpV2Proximity>? proximity;

  /// Creates a new [GooglePrivacyDlpV2HotwordRule].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [likelihoodAdjustment] Likelihood adjustment to apply to all matching findings.
  /// [proximity] Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The finding itself will be included in the window, so that hotwords can be used to match substrings of the finding itself. Suppose you want Cloud DLP to promote the likelihood of the phone number regex "\(\d{3}\) \d{3}-\d{4}" if the area code is known to be the area code of a company's office. In this case, use the hotword regex "\(xxx\)", where "xxx" is the area code in question. For tabular data, if you want to modify the likelihood of an entire column of findngs, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).
  const GooglePrivacyDlpV2HotwordRule({
    this.hotwordRegex,
    this.likelihoodAdjustment,
    this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Regex, Map<String, dynamic>>(hotwordRegex, (value) => value.toMap()),
      'likelihoodAdjustment': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2LikelihoodAdjustment, Map<String, dynamic>>(likelihoodAdjustment, (value) => value.toMap()),
      'proximity': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Proximity, Map<String, dynamic>>(proximity, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2HotwordRule.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2HotwordRule(
      hotwordRegex: (() { final guardedValue = map['hotwordRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Regex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      likelihoodAdjustment: (() { final guardedValue = map['likelihoodAdjustment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2LikelihoodAdjustment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proximity: (() { final guardedValue = map['proximity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Proximity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

