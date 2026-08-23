/// Specifies how matching should be done. Supported values are: MATCH_ANY: At least one of the Labels specified in the matcher should match the metadata presented by xDS client. MATCH_ALL: The metadata presented by the xDS client should contain all of the labels specified here. The selection is determined based on the best match. For example, suppose there are three EndpointPolicy resources P1, P2 and P3 and if P1 has a the matcher as MATCH_ANY , P2 has MATCH_ALL , and P3 has MATCH_ALL . If a client with label connects, the config from P1 will be selected. If a client with label connects, the config from P2 will be selected. If a client with label connects, the config from P3 will be selected. If there is more than one best match, (for example, if a config P4 with selector exists and if a client with label connects), an error will be thrown.
enum EndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria {
  metadataLabelMatchCriteriaUnspecified("METADATA_LABEL_MATCH_CRITERIA_UNSPECIFIED"),
  matchAny("MATCH_ANY"),
  matchAll("MATCH_ALL");

  const EndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria(this.wireValue);
  final String wireValue;

  static EndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria fromValue(String value) {
    for (final item in EndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria value: $value');
  }
}
