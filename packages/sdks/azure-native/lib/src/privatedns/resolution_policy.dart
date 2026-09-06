import 'package:pulumi/pulumi.dart' as pulumi;

/// The resolution policy on the virtual network link. Only applicable for virtual network links to privatelink zones, and for A,AAAA,CNAME queries. When set to 'NxDomainRedirect', Azure DNS resolver falls back to public resolution if private dns query resolution results in non-existent domain response.
enum ResolutionPolicy implements pulumi.PulumiEnum<String> {
  default_("Default"),
  nxDomainRedirect("NxDomainRedirect");

  const ResolutionPolicy(this.wireValue);
  @override
  final String wireValue;

  static ResolutionPolicy fromValue(String value) {
    for (final item in ResolutionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResolutionPolicy value: $value');
  }
}
