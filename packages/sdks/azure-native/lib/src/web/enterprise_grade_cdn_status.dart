import 'package:pulumi/pulumi.dart' as pulumi;

/// State indicating the status of the enterprise grade CDN serving traffic to the static web app.
enum EnterpriseGradeCdnStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  enabling("Enabling"),
  disabled("Disabled"),
  disabling("Disabling");

  const EnterpriseGradeCdnStatus(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseGradeCdnStatus fromValue(String value) {
    for (final item in EnterpriseGradeCdnStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseGradeCdnStatus value: $value');
  }
}
