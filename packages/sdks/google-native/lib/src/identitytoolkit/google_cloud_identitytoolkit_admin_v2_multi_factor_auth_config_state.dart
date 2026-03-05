/// Whether MultiFactor Authentication has been enabled for this project.
enum GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState {
  stateUnspecified("STATE_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED"),
  mandatory("MANDATORY");

  const GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState(this.wireValue);
  final String wireValue;

  static GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState fromValue(String value) {
    for (final item in GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState value: $value');
  }
}

