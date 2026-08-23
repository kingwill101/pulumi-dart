enum GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem {
  summarySkippedReasonUnspecified("SUMMARY_SKIPPED_REASON_UNSPECIFIED"),
  adversarialQueryIgnored("ADVERSARIAL_QUERY_IGNORED"),
  nonSummarySeekingQueryIgnored("NON_SUMMARY_SEEKING_QUERY_IGNORED"),
  outOfDomainQueryIgnored("OUT_OF_DOMAIN_QUERY_IGNORED"),
  potentialPolicyViolation("POTENTIAL_POLICY_VIOLATION"),
  llmAddonNotEnabled("LLM_ADDON_NOT_ENABLED");

  const GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem(this.wireValue);
  final String wireValue;

  static GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem fromValue(String value) {
    for (final item in GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem value: $value');
  }
}
