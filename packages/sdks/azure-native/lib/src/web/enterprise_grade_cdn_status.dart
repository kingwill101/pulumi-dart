/// State indicating the status of the enterprise grade CDN serving traffic to the static web app.
enum EnterpriseGradeCdnStatus {
  enabled("Enabled"),
  enabling("Enabling"),
  disabled("Disabled"),
  disabling("Disabling");

  const EnterpriseGradeCdnStatus(this.wireValue);
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
