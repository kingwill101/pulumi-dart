import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
enum SslSettingsSslManagementTypeAppengineV1beta implements pulumi.PulumiEnum<String> {
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const SslSettingsSslManagementTypeAppengineV1beta(this.wireValue);
  @override
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
