/// The type of placement policy for a service fabric service. Following are the possible values.
enum ServicePlacementPolicyType {
  invalidDomain("InvalidDomain"),
  requiredDomain("RequiredDomain"),
  preferredPrimaryDomain("PreferredPrimaryDomain"),
  requiredDomainDistribution("RequiredDomainDistribution"),
  nonPartiallyPlaceService("NonPartiallyPlaceService");

  const ServicePlacementPolicyType(this.value);
  final String value;

  static ServicePlacementPolicyType fromValue(String value) {
    for (final item in ServicePlacementPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServicePlacementPolicyType value: $value');
  }
}

