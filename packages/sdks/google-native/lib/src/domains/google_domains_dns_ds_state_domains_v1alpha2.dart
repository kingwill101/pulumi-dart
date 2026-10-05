import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
enum GoogleDomainsDnsDsStateDomainsV1alpha2 implements pulumi.PulumiEnum<String> {
  dsStateUnspecified("DS_STATE_UNSPECIFIED"),
  dsRecordsUnpublished("DS_RECORDS_UNPUBLISHED"),
  dsRecordsPublished("DS_RECORDS_PUBLISHED");

  const GoogleDomainsDnsDsStateDomainsV1alpha2(this.wireValue);
  @override
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
