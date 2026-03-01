/// Describes the state of the MultiFactor Authentication type.
enum GoogleCloudIdentitytoolkitAdminV2ProviderConfigState {
  mfaStateUnspecified("MFA_STATE_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED"),
  mandatory("MANDATORY");

  const GoogleCloudIdentitytoolkitAdminV2ProviderConfigState(this.value);
  final String value;

  static GoogleCloudIdentitytoolkitAdminV2ProviderConfigState fromValue(String value) {
    for (final item in GoogleCloudIdentitytoolkitAdminV2ProviderConfigState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIdentitytoolkitAdminV2ProviderConfigState value: $value');
  }
}

