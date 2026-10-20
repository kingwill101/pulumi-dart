import 'package:pulumi/pulumi.dart' as pulumi;

enum GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem implements pulumi.PulumiEnum<String> {
  summarySkippedReasonUnspecified("SUMMARY_SKIPPED_REASON_UNSPECIFIED"),
  adversarialQueryIgnored("ADVERSARIAL_QUERY_IGNORED"),
  nonSummarySeekingQueryIgnored("NON_SUMMARY_SEEKING_QUERY_IGNORED"),
  outOfDomainQueryIgnored("OUT_OF_DOMAIN_QUERY_IGNORED"),
  potentialPolicyViolation("POTENTIAL_POLICY_VIOLATION"),
  llmAddonNotEnabled("LLM_ADDON_NOT_ENABLED");

  const GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem fromValue(String value) {
    for (final item in GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummarySkippedReasonsItem value: $value');
  }
}
