// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_likelihood_adjustment_response.dart';
import 'google_privacy_dlp_v2_proximity_response.dart';
import 'google_privacy_dlp_v2_regex_response.dart';

/// The rule that adjusts the likelihood of findings within a certain proximity of hotwords.
class GooglePrivacyDlpV2HotwordRuleResponse {
  /// Regular expression pattern defining what qualifies as a hotword.
  final pulumi.Input<GooglePrivacyDlpV2RegexResponse> hotwordRegex;

  /// Likelihood adjustment to apply to all matching findings.
  final pulumi.Input<GooglePrivacyDlpV2LikelihoodAdjustmentResponse>
  likelihoodAdjustment;

  /// Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The finding itself will be included in the window, so that hotwords can be used to match substrings of the finding itself. Suppose you want Cloud DLP to promote the likelihood of the phone number regex "\(\d{3}\) \d{3}-\d{4}" if the area code is known to be the area code of a company's office. In this case, use the hotword regex "\(xxx\)", where "xxx" is the area code in question. For tabular data, if you want to modify the likelihood of an entire column of findngs, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).
  final pulumi.Input<GooglePrivacyDlpV2ProximityResponse> proximity;

  /// Creates a new [GooglePrivacyDlpV2HotwordRuleResponse].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [likelihoodAdjustment] Likelihood adjustment to apply to all matching findings.
  /// [proximity] Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The finding itself will be included in the window, so that hotwords can be used to match substrings of the finding itself. Suppose you want Cloud DLP to promote the likelihood of the phone number regex "\(\d{3}\) \d{3}-\d{4}" if the area code is known to be the area code of a company's office. In this case, use the hotword regex "\(xxx\)", where "xxx" is the area code in question. For tabular data, if you want to modify the likelihood of an entire column of findngs, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).
  GooglePrivacyDlpV2HotwordRuleResponse({
    required this.hotwordRegex,
    required this.likelihoodAdjustment,
    required this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2RegexResponse,
            Map<String, dynamic>
          >(hotwordRegex, (value) => value.toMap()),
      'likelihoodAdjustment':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2LikelihoodAdjustmentResponse,
            Map<String, dynamic>
          >(likelihoodAdjustment, (value) => value.toMap()),
      'proximity':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2ProximityResponse,
            Map<String, dynamic>
          >(proximity, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2HotwordRuleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2HotwordRuleResponse(
      hotwordRegex: pulumi.Input.fromValue(
        GooglePrivacyDlpV2RegexResponse.fromMap(
          (map['hotwordRegex']! as Map).cast<String, dynamic>(),
        ),
      ),
      likelihoodAdjustment: pulumi.Input.fromValue(
        GooglePrivacyDlpV2LikelihoodAdjustmentResponse.fromMap(
          (map['likelihoodAdjustment']! as Map).cast<String, dynamic>(),
        ),
      ),
      proximity: pulumi.Input.fromValue(
        GooglePrivacyDlpV2ProximityResponse.fromMap(
          (map['proximity']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
