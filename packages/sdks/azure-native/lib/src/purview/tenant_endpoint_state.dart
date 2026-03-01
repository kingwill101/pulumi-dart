/// Gets or sets the state of tenant endpoint.
enum TenantEndpointState {
  valueNotSpecified("NotSpecified"),
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const TenantEndpointState(this.value);
  final String value;

  static TenantEndpointState fromValue(String value) {
    for (final item in TenantEndpointState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TenantEndpointState value: $value');
  }
}

