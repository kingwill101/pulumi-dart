/// State indicating the status of the enterprise grade CDN serving traffic to the static web app.
enum EnterpriseGradeCdnStatus {
  valueEnabled("Enabled"),
  valueEnabling("Enabling"),
  valueDisabled("Disabled"),
  valueDisabling("Disabling");

  const EnterpriseGradeCdnStatus(this.value);
  final String value;

  static EnterpriseGradeCdnStatus fromValue(String value) {
    for (final item in EnterpriseGradeCdnStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseGradeCdnStatus value: $value');
  }
}

