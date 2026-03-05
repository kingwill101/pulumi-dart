enum GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  phoneSms("PHONE_SMS");

  const GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem(this.wireValue);
  final String wireValue;

  static GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem fromValue(String value) {
    for (final item in GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigEnabledProvidersItem value: $value');
  }
}

