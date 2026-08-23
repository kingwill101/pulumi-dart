/// The status of the public advertised prefix. Possible values include: - `INITIAL`: RPKI validation is complete. - `PTR_CONFIGURED`: User has configured the PTR. - `VALIDATED`: Reverse DNS lookup is successful. - `REVERSE_DNS_LOOKUP_FAILED`: Reverse DNS lookup failed. - `PREFIX_CONFIGURATION_IN_PROGRESS`: The prefix is being configured. - `PREFIX_CONFIGURATION_COMPLETE`: The prefix is fully configured. - `PREFIX_REMOVAL_IN_PROGRESS`: The prefix is being removed.
enum PublicAdvertisedPrefixStatusComputeBeta {
  announcedToInternet("ANNOUNCED_TO_INTERNET"),
  initial("INITIAL"),
  prefixConfigurationComplete("PREFIX_CONFIGURATION_COMPLETE"),
  prefixConfigurationInProgress("PREFIX_CONFIGURATION_IN_PROGRESS"),
  prefixRemovalInProgress("PREFIX_REMOVAL_IN_PROGRESS"),
  ptrConfigured("PTR_CONFIGURED"),
  readyToAnnounce("READY_TO_ANNOUNCE"),
  reverseDnsLookupFailed("REVERSE_DNS_LOOKUP_FAILED"),
  validated("VALIDATED");

  const PublicAdvertisedPrefixStatusComputeBeta(this.wireValue);
  final String wireValue;

  static PublicAdvertisedPrefixStatusComputeBeta fromValue(String value) {
    for (final item in PublicAdvertisedPrefixStatusComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicAdvertisedPrefixStatusComputeBeta value: $value');
  }
}
