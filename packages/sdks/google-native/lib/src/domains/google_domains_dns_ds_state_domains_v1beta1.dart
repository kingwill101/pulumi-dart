/// Required. The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
enum GoogleDomainsDnsDsStateDomainsV1beta1 {
  dsStateUnspecified("DS_STATE_UNSPECIFIED"),
  dsRecordsUnpublished("DS_RECORDS_UNPUBLISHED"),
  dsRecordsPublished("DS_RECORDS_PUBLISHED");

  const GoogleDomainsDnsDsStateDomainsV1beta1(this.value);
  final String value;

  static GoogleDomainsDnsDsStateDomainsV1beta1 fromValue(String value) {
    for (final item in GoogleDomainsDnsDsStateDomainsV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleDomainsDnsDsStateDomainsV1beta1 value: $value');
  }
}

