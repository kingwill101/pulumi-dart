import 'package:pulumi/pulumi.dart' as pulumi;

/// Only returns findings equal to or above this threshold. This field is required or else the configuration fails.
enum GooglePrivacyDlpV2InfoTypeLikelihoodMinLikelihood implements pulumi.PulumiEnum<String> {
  likelihoodUnspecified("LIKELIHOOD_UNSPECIFIED"),
  veryUnlikely("VERY_UNLIKELY"),
  unlikely("UNLIKELY"),
  possible("POSSIBLE"),
  likely("LIKELY"),
  veryLikely("VERY_LIKELY");

  const GooglePrivacyDlpV2InfoTypeLikelihoodMinLikelihood(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2InfoTypeLikelihoodMinLikelihood fromValue(String value) {
    for (final item in GooglePrivacyDlpV2InfoTypeLikelihoodMinLikelihood.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2InfoTypeLikelihoodMinLikelihood value: $value');
  }
}
