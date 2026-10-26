import 'package:pulumi/pulumi.dart' as pulumi;

/// Set the likelihood of a finding to a fixed value.
enum GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood implements pulumi.PulumiEnum<String> {
  likelihoodUnspecified("LIKELIHOOD_UNSPECIFIED"),
  veryUnlikely("VERY_UNLIKELY"),
  unlikely("UNLIKELY"),
  possible("POSSIBLE"),
  likely("LIKELY"),
  veryLikely("VERY_LIKELY");

  const GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood fromValue(String value) {
    for (final item in GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood value: $value');
  }
}
