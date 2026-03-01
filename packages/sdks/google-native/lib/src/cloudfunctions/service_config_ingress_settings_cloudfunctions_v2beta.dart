/// The ingress settings for the function, controlling what traffic can reach it.
enum ServiceConfigIngressSettingsCloudfunctionsV2beta {
  ingressSettingsUnspecified("INGRESS_SETTINGS_UNSPECIFIED"),
  allowAll("ALLOW_ALL"),
  allowInternalOnly("ALLOW_INTERNAL_ONLY"),
  allowInternalAndGclb("ALLOW_INTERNAL_AND_GCLB");

  const ServiceConfigIngressSettingsCloudfunctionsV2beta(this.value);
  final String value;

  static ServiceConfigIngressSettingsCloudfunctionsV2beta fromValue(String value) {
    for (final item in ServiceConfigIngressSettingsCloudfunctionsV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceConfigIngressSettingsCloudfunctionsV2beta value: $value');
  }
}

