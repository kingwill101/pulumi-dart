/// The V3 alert property
enum AlertProperty {
  valueAlertLink("AlertLink"),
  valueConfidenceLevel("ConfidenceLevel"),
  valueConfidenceScore("ConfidenceScore"),
  valueExtendedLinks("ExtendedLinks"),
  valueProductName("ProductName"),
  valueProviderName("ProviderName"),
  valueProductComponentName("ProductComponentName"),
  valueRemediationSteps("RemediationSteps"),
  valueTechniques("Techniques");

  const AlertProperty(this.wireValue);
  final String wireValue;

  static AlertProperty fromValue(String value) {
    for (final item in AlertProperty.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertProperty value: $value');
  }
}
