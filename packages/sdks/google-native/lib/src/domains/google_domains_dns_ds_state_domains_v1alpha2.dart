/// Required. The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
enum GoogleDomainsDnsDsStateDomainsV1alpha2 {
  dsStateUnspecified("DS_STATE_UNSPECIFIED"),
  dsRecordsUnpublished("DS_RECORDS_UNPUBLISHED"),
  dsRecordsPublished("DS_RECORDS_PUBLISHED");

  const GoogleDomainsDnsDsStateDomainsV1alpha2(this.wireValue);
  final String wireValue;

  static GoogleDomainsDnsDsStateDomainsV1alpha2 fromValue(String value) {
    for (final item in GoogleDomainsDnsDsStateDomainsV1alpha2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleDomainsDnsDsStateDomainsV1alpha2 value: $value');
  }
}
