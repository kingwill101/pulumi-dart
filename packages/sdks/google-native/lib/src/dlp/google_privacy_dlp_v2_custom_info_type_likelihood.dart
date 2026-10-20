import 'package:pulumi/pulumi.dart' as pulumi;

/// Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria specified by the rule. Defaults to `VERY_LIKELY` if not specified.
enum GooglePrivacyDlpV2CustomInfoTypeLikelihood implements pulumi.PulumiEnum<String> {
  likelihoodUnspecified("LIKELIHOOD_UNSPECIFIED"),
  veryUnlikely("VERY_UNLIKELY"),
  unlikely("UNLIKELY"),
  possible("POSSIBLE"),
  likely("LIKELY"),
  veryLikely("VERY_LIKELY");

  const GooglePrivacyDlpV2CustomInfoTypeLikelihood(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2CustomInfoTypeLikelihood fromValue(String value) {
    for (final item in GooglePrivacyDlpV2CustomInfoTypeLikelihood.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2CustomInfoTypeLikelihood value: $value');
  }
}
