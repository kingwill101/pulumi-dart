/// The resolution policy on the virtual network link. Only applicable for virtual network links to privatelink zones, and for A,AAAA,CNAME queries. When set to 'NxDomainRedirect', Azure DNS resolver falls back to public resolution if private dns query resolution results in non-existent domain response.
enum ResolutionPolicy {
  default_("Default"),
  nxDomainRedirect("NxDomainRedirect");

  const ResolutionPolicy(this.value);
  final String value;

  static ResolutionPolicy fromValue(String value) {
    for (final item in ResolutionPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResolutionPolicy value: $value');
  }
}

