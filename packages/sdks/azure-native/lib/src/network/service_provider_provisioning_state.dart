/// The ServiceProviderProvisioningState state of the resource.
enum ServiceProviderProvisioningState {
  valueNotProvisioned("NotProvisioned"),
  valueProvisioning("Provisioning"),
  valueProvisioned("Provisioned"),
  valueDeprovisioning("Deprovisioning");

  const ServiceProviderProvisioningState(this.wireValue);
  final String wireValue;

  static ServiceProviderProvisioningState fromValue(String value) {
    for (final item in ServiceProviderProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceProviderProvisioningState value: $value');
  }
}

