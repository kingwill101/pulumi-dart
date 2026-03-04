/// The type of placement policy for a service fabric service. Following are the possible values.
enum ServicePlacementPolicyType {
  invalidDomain("InvalidDomain"),
  requiredDomain("RequiredDomain"),
  preferredPrimaryDomain("PreferredPrimaryDomain"),
  requiredDomainDistribution("RequiredDomainDistribution"),
  nonPartiallyPlaceService("NonPartiallyPlaceService");

  const ServicePlacementPolicyType(this.wireValue);
  final String wireValue;

  static ServicePlacementPolicyType fromValue(String value) {
    for (final item in ServicePlacementPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServicePlacementPolicyType value: $value');
  }
}
