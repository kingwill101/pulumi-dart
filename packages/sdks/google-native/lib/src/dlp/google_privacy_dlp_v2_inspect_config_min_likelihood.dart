/// Only returns findings equal to or above this threshold. The default is POSSIBLE. In general, the highest likelihood setting yields the fewest findings in results and the lowest chance of a false positive. For more information, see [Match likelihood](https://cloud.google.com/dlp/docs/likelihood).
enum GooglePrivacyDlpV2InspectConfigMinLikelihood {
  likelihoodUnspecified("LIKELIHOOD_UNSPECIFIED"),
  veryUnlikely("VERY_UNLIKELY"),
  unlikely("UNLIKELY"),
  possible("POSSIBLE"),
  likely("LIKELY"),
  veryLikely("VERY_LIKELY");

  const GooglePrivacyDlpV2InspectConfigMinLikelihood(this.value);
  final String value;

  static GooglePrivacyDlpV2InspectConfigMinLikelihood fromValue(String value) {
    for (final item in GooglePrivacyDlpV2InspectConfigMinLikelihood.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2InspectConfigMinLikelihood value: $value');
  }
}

