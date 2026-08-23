/// SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
enum SslSettingsSslManagementTypeAppengineV1beta {
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const SslSettingsSslManagementTypeAppengineV1beta(this.wireValue);
  final String wireValue;

  static SslSettingsSslManagementTypeAppengineV1beta fromValue(String value) {
    for (final item in SslSettingsSslManagementTypeAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslSettingsSslManagementTypeAppengineV1beta value: $value');
  }
}
