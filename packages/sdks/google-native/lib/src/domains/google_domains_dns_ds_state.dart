/// Required. The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
enum GoogleDomainsDnsDsState {
  dsStateUnspecified("DS_STATE_UNSPECIFIED"),
  dsRecordsUnpublished("DS_RECORDS_UNPUBLISHED"),
  dsRecordsPublished("DS_RECORDS_PUBLISHED");

  const GoogleDomainsDnsDsState(this.wireValue);
  final String wireValue;

  static GoogleDomainsDnsDsState fromValue(String value) {
    for (final item in GoogleDomainsDnsDsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleDomainsDnsDsState value: $value');
  }
}
